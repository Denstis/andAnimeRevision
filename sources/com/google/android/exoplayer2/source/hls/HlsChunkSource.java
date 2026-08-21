package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.BaseMediaChunkIterator;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.chunk.DataChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.trackselection.BaseTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class HlsChunkSource {
    private final DataSource encryptionDataSource;
    private byte[] encryptionIv;
    private String encryptionIvString;
    private byte[] encryptionKey;
    private Uri encryptionKeyUri;
    private HlsMasterPlaylist.HlsUrl expectedPlaylistUrl;
    private final HlsExtractorFactory extractorFactory;
    private IOException fatalError;
    private boolean independentSegments;
    private boolean isTimestampMaster;
    private long liveEdgeInPeriodTimeUs = C.TIME_UNSET;
    private final DataSource mediaDataSource;
    private final List<Format> muxedCaptionFormats;
    private final HlsPlaylistTracker playlistTracker;
    private byte[] scratchSpace;
    private boolean seenExpectedPlaylistError;
    private final TimestampAdjusterProvider timestampAdjusterProvider;
    private final TrackGroup trackGroup;
    private TrackSelection trackSelection;
    private final HlsMasterPlaylist.HlsUrl[] variants;

    private static final class EncryptionKeyChunk extends DataChunk {
        public final String iv;
        private byte[] result;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i2, Object obj, byte[] bArr, String str) {
            super(dataSource, dataSpec, 3, format, i2, obj, bArr);
            this.iv = str;
        }

        @Override // com.google.android.exoplayer2.source.chunk.DataChunk
        protected void consume(byte[] bArr, int i2) {
            this.result = Arrays.copyOf(bArr, i2);
        }

        public byte[] getResult() {
            return this.result;
        }
    }

    public static final class HlsChunkHolder {
        public Chunk chunk;
        public boolean endOfStream;
        public HlsMasterPlaylist.HlsUrl playlist;

        public HlsChunkHolder() {
            clear();
        }

        public void clear() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlist = null;
        }
    }

    private static final class HlsMediaPlaylistSegmentIterator extends BaseMediaChunkIterator {
        private final HlsMediaPlaylist playlist;
        private final long startOfPlaylistInPeriodUs;

        public HlsMediaPlaylistSegmentIterator(HlsMediaPlaylist hlsMediaPlaylist, long j2, int i2) {
            super(i2, hlsMediaPlaylist.segments.size() - 1);
            this.playlist = hlsMediaPlaylist;
            this.startOfPlaylistInPeriodUs = j2;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            checkInBounds();
            HlsMediaPlaylist.Segment segment = this.playlist.segments.get((int) getCurrentIndex());
            return this.startOfPlaylistInPeriodUs + segment.relativeStartTimeUs + segment.durationUs;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.startOfPlaylistInPeriodUs + this.playlist.segments.get((int) getCurrentIndex()).relativeStartTimeUs;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            HlsMediaPlaylist.Segment segment = this.playlist.segments.get((int) getCurrentIndex());
            return new DataSpec(UriUtil.resolveToUri(this.playlist.baseUri, segment.url), segment.byterangeOffset, segment.byterangeLength, null);
        }
    }

    private static final class InitializationTrackSelection extends BaseTrackSelection {
        private int selectedIndex;

        public InitializationTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.selectedIndex = indexOf(trackGroup.getFormat(0));
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int getSelectedIndex() {
            return this.selectedIndex;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public Object getSelectionData() {
            return null;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.TrackSelection
        public void updateSelectedTrack(long j2, long j3, long j4, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (isBlacklisted(this.selectedIndex, jElapsedRealtime)) {
                for (int i2 = this.length - 1; i2 >= 0; i2--) {
                    if (!isBlacklisted(i2, jElapsedRealtime)) {
                        this.selectedIndex = i2;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }
    }

    public HlsChunkSource(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, HlsMasterPlaylist.HlsUrl[] hlsUrlArr, HlsDataSourceFactory hlsDataSourceFactory, TransferListener transferListener, TimestampAdjusterProvider timestampAdjusterProvider, List<Format> list) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.variants = hlsUrlArr;
        this.timestampAdjusterProvider = timestampAdjusterProvider;
        this.muxedCaptionFormats = list;
        Format[] formatArr = new Format[hlsUrlArr.length];
        int[] iArr = new int[hlsUrlArr.length];
        for (int i2 = 0; i2 < hlsUrlArr.length; i2++) {
            formatArr[i2] = hlsUrlArr[i2].format;
            iArr[i2] = i2;
        }
        this.mediaDataSource = hlsDataSourceFactory.createDataSource(1);
        if (transferListener != null) {
            this.mediaDataSource.addTransferListener(transferListener);
        }
        this.encryptionDataSource = hlsDataSourceFactory.createDataSource(3);
        this.trackGroup = new TrackGroup(formatArr);
        this.trackSelection = new InitializationTrackSelection(this.trackGroup, iArr);
    }

    private void clearEncryptionData() {
        this.encryptionKeyUri = null;
        this.encryptionKey = null;
        this.encryptionIvString = null;
        this.encryptionIv = null;
    }

    private long getChunkMediaSequence(HlsMediaChunk hlsMediaChunk, boolean z, HlsMediaPlaylist hlsMediaPlaylist, long j2, long j3) {
        long jBinarySearchFloor;
        long size;
        if (hlsMediaChunk != null && !z) {
            return hlsMediaChunk.getNextChunkIndex();
        }
        long j4 = hlsMediaPlaylist.durationUs + j2;
        if (hlsMediaChunk != null && !this.independentSegments) {
            j3 = hlsMediaChunk.startTimeUs;
        }
        if (hlsMediaPlaylist.hasEndTag || j3 < j4) {
            jBinarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) hlsMediaPlaylist.segments, Long.valueOf(j3 - j2), true, !this.playlistTracker.isLive() || hlsMediaChunk == null);
            size = hlsMediaPlaylist.mediaSequence;
        } else {
            jBinarySearchFloor = hlsMediaPlaylist.mediaSequence;
            size = hlsMediaPlaylist.segments.size();
        }
        return jBinarySearchFloor + size;
    }

    private EncryptionKeyChunk newEncryptionKeyChunk(Uri uri, String str, int i2, int i3, Object obj) {
        return new EncryptionKeyChunk(this.encryptionDataSource, new DataSpec(uri, 0L, -1L, null, 1), this.variants[i2].format, i3, obj, this.scratchSpace, str);
    }

    private long resolveTimeToLiveEdgeUs(long j2) {
        return (this.liveEdgeInPeriodTimeUs > C.TIME_UNSET ? 1 : (this.liveEdgeInPeriodTimeUs == C.TIME_UNSET ? 0 : -1)) != 0 ? this.liveEdgeInPeriodTimeUs - j2 : C.TIME_UNSET;
    }

    private void setEncryptionData(Uri uri, String str, byte[] bArr) {
        byte[] byteArray = new BigInteger(Util.toLowerInvariant(str).startsWith("0x") ? str.substring(2) : str, 16).toByteArray();
        byte[] bArr2 = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr2, (bArr2.length - byteArray.length) + length, byteArray.length - length);
        this.encryptionKeyUri = uri;
        this.encryptionKey = bArr;
        this.encryptionIvString = str;
        this.encryptionIv = bArr2;
    }

    private void updateLiveEdgeTimeUs(HlsMediaPlaylist hlsMediaPlaylist) {
        this.liveEdgeInPeriodTimeUs = hlsMediaPlaylist.hasEndTag ? C.TIME_UNSET : hlsMediaPlaylist.getEndTimeUs() - this.playlistTracker.getInitialStartTimeUs();
    }

    public MediaChunkIterator[] createMediaChunkIterators(HlsMediaChunk hlsMediaChunk, long j2) {
        int iIndexOf = hlsMediaChunk == null ? -1 : this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[this.trackSelection.length()];
        for (int i2 = 0; i2 < mediaChunkIteratorArr.length; i2++) {
            int indexInTrackGroup = this.trackSelection.getIndexInTrackGroup(i2);
            HlsMasterPlaylist.HlsUrl hlsUrl = this.variants[indexInTrackGroup];
            if (this.playlistTracker.isSnapshotValid(hlsUrl)) {
                HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(hlsUrl, false);
                long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
                long chunkMediaSequence = getChunkMediaSequence(hlsMediaChunk, indexInTrackGroup != iIndexOf, playlistSnapshot, initialStartTimeUs, j2);
                long j3 = playlistSnapshot.mediaSequence;
                if (chunkMediaSequence < j3) {
                    mediaChunkIteratorArr[i2] = MediaChunkIterator.EMPTY;
                } else {
                    mediaChunkIteratorArr[i2] = new HlsMediaPlaylistSegmentIterator(playlistSnapshot, initialStartTimeUs, (int) (chunkMediaSequence - j3));
                }
            } else {
                mediaChunkIteratorArr[i2] = MediaChunkIterator.EMPTY;
            }
        }
        return mediaChunkIteratorArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0056 A[PHI: r2
      0x0056: PHI (r2v2 long) = (r2v1 long), (r2v1 long), (r2v17 long) binds: [B:10:0x0033, B:12:0x0037, B:14:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void getNextChunk(long r40, long r42, java.util.List<com.google.android.exoplayer2.source.hls.HlsMediaChunk> r44, com.google.android.exoplayer2.source.hls.HlsChunkSource.HlsChunkHolder r45) {
        /*
            Method dump skipped, instruction units count: 478
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsChunkSource.getNextChunk(long, long, java.util.List, com.google.android.exoplayer2.source.hls.HlsChunkSource$HlsChunkHolder):void");
    }

    public TrackGroup getTrackGroup() {
        return this.trackGroup;
    }

    public TrackSelection getTrackSelection() {
        return this.trackSelection;
    }

    public boolean maybeBlacklistTrack(Chunk chunk, long j2) {
        TrackSelection trackSelection = this.trackSelection;
        return trackSelection.blacklist(trackSelection.indexOf(this.trackGroup.indexOf(chunk.trackFormat)), j2);
    }

    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        HlsMasterPlaylist.HlsUrl hlsUrl = this.expectedPlaylistUrl;
        if (hlsUrl == null || !this.seenExpectedPlaylistError) {
            return;
        }
        this.playlistTracker.maybeThrowPlaylistRefreshError(hlsUrl);
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            setEncryptionData(encryptionKeyChunk.dataSpec.uri, encryptionKeyChunk.iv, encryptionKeyChunk.getResult());
        }
    }

    public boolean onPlaylistError(HlsMasterPlaylist.HlsUrl hlsUrl, long j2) {
        int iIndexOf;
        int iIndexOf2 = this.trackGroup.indexOf(hlsUrl.format);
        if (iIndexOf2 == -1 || (iIndexOf = this.trackSelection.indexOf(iIndexOf2)) == -1) {
            return true;
        }
        this.seenExpectedPlaylistError = (this.expectedPlaylistUrl == hlsUrl) | this.seenExpectedPlaylistError;
        return j2 == C.TIME_UNSET || this.trackSelection.blacklist(iIndexOf, j2);
    }

    public void reset() {
        this.fatalError = null;
    }

    public void selectTracks(TrackSelection trackSelection) {
        this.trackSelection = trackSelection;
    }

    public void setIsTimestampMaster(boolean z) {
        this.isTimestampMaster = z;
    }
}
