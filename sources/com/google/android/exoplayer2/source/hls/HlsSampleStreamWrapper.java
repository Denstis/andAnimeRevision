package com.google.android.exoplayer2.source.hls;

import android.os.Handler;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.hls.HlsChunkSource;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class HlsSampleStreamWrapper implements Loader.Callback<Chunk>, Loader.ReleaseCallback, SequenceableLoader, ExtractorOutput, SampleQueue.UpstreamFormatChangedListener {
    public static final int SAMPLE_QUEUE_INDEX_NO_MAPPING_FATAL = -2;
    public static final int SAMPLE_QUEUE_INDEX_NO_MAPPING_NON_FATAL = -3;
    public static final int SAMPLE_QUEUE_INDEX_PENDING = -1;
    private static final String TAG = "HlsSampleStreamWrapper";
    private final Allocator allocator;
    private boolean audioSampleQueueMappingDone;
    private final Callback callback;
    private final HlsChunkSource chunkSource;
    private int chunkUid;
    private Format downstreamTrackFormat;
    private int enabledTrackGroupCount;
    private final MediaSourceEventListener.EventDispatcher eventDispatcher;
    private boolean haveAudioVideoSampleQueues;
    private long lastSeekPositionUs;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private boolean loadingFinished;
    private final Format muxedAudioFormat;
    private TrackGroupArray optionalTrackGroups;
    private long pendingResetPositionUs;
    private boolean pendingResetUpstreamFormats;
    private boolean prepared;
    private int primarySampleQueueIndex;
    private int primarySampleQueueType;
    private int primaryTrackGroupIndex;
    private boolean released;
    private long sampleOffsetUs;
    private boolean sampleQueuesBuilt;
    private boolean seenFirstTrackSelection;
    private int[] trackGroupToSampleQueueIndex;
    private TrackGroupArray trackGroups;
    private final int trackType;
    private boolean tracksEnded;
    private Format upstreamTrackFormat;
    private boolean videoSampleQueueMappingDone;
    private final Loader loader = new Loader("Loader:HlsSampleStreamWrapper");
    private final HlsChunkSource.HlsChunkHolder nextChunkHolder = new HlsChunkSource.HlsChunkHolder();
    private int[] sampleQueueTrackIds = new int[0];
    private int audioSampleQueueIndex = -1;
    private int videoSampleQueueIndex = -1;
    private SampleQueue[] sampleQueues = new SampleQueue[0];
    private boolean[] sampleQueueIsAudioVideoFlags = new boolean[0];
    private boolean[] sampleQueuesEnabledStates = new boolean[0];
    private final ArrayList<HlsMediaChunk> mediaChunks = new ArrayList<>();
    private final List<HlsMediaChunk> readOnlyMediaChunks = Collections.unmodifiableList(this.mediaChunks);
    private final ArrayList<HlsSampleStream> hlsSampleStreams = new ArrayList<>();
    private final Runnable maybeFinishPrepareRunnable = new Runnable() { // from class: com.google.android.exoplayer2.source.hls.a
        @Override // java.lang.Runnable
        public final void run() {
            this.f4018b.maybeFinishPrepare();
        }
    };
    private final Runnable onTracksEndedRunnable = new Runnable() { // from class: com.google.android.exoplayer2.source.hls.b
        @Override // java.lang.Runnable
        public final void run() {
            this.f4019b.onTracksEnded();
        }
    };
    private final Handler handler = new Handler();

    public interface Callback extends SequenceableLoader.Callback<HlsSampleStreamWrapper> {
        void onPlaylistRefreshRequired(HlsMasterPlaylist.HlsUrl hlsUrl);

        void onPrepared();
    }

    private static final class PrivTimestampStrippingSampleQueue extends SampleQueue {
        public PrivTimestampStrippingSampleQueue(Allocator allocator) {
            super(allocator);
        }

        private Metadata getAdjustedMetadata(Metadata metadata) {
            if (metadata == null) {
                return null;
            }
            int length = metadata.length();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    i3 = -1;
                    break;
                }
                Metadata.Entry entry = metadata.get(i3);
                if ((entry instanceof PrivFrame) && HlsMediaChunk.PRIV_TIMESTAMP_FRAME_OWNER.equals(((PrivFrame) entry).owner)) {
                    break;
                }
                i3++;
            }
            if (i3 == -1) {
                return metadata;
            }
            if (length == 1) {
                return null;
            }
            Metadata.Entry[] entryArr = new Metadata.Entry[length - 1];
            while (i2 < length) {
                if (i2 != i3) {
                    entryArr[i2 < i3 ? i2 : i2 - 1] = metadata.get(i2);
                }
                i2++;
            }
            return new Metadata(entryArr);
        }

        @Override // com.google.android.exoplayer2.source.SampleQueue, com.google.android.exoplayer2.extractor.TrackOutput
        public void format(Format format) {
            super.format(format.copyWithMetadata(getAdjustedMetadata(format.metadata)));
        }
    }

    public HlsSampleStreamWrapper(int i2, Callback callback, HlsChunkSource hlsChunkSource, Allocator allocator, long j2, Format format, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher) {
        this.trackType = i2;
        this.callback = callback;
        this.chunkSource = hlsChunkSource;
        this.allocator = allocator;
        this.muxedAudioFormat = format;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher;
        this.lastSeekPositionUs = j2;
        this.pendingResetPositionUs = j2;
    }

    private void buildTracksFromSampleStreams() {
        int length = this.sampleQueues.length;
        int i2 = 0;
        int i3 = 6;
        int i4 = -1;
        while (true) {
            if (i2 >= length) {
                break;
            }
            String str = this.sampleQueues[i2].getUpstreamFormat().sampleMimeType;
            int i5 = MimeTypes.isVideo(str) ? 2 : MimeTypes.isAudio(str) ? 1 : MimeTypes.isText(str) ? 3 : 6;
            if (getTrackTypeScore(i5) > getTrackTypeScore(i3)) {
                i4 = i2;
                i3 = i5;
            } else if (i5 == i3 && i4 != -1) {
                i4 = -1;
            }
            i2++;
        }
        TrackGroup trackGroup = this.chunkSource.getTrackGroup();
        int i6 = trackGroup.length;
        this.primaryTrackGroupIndex = -1;
        this.trackGroupToSampleQueueIndex = new int[length];
        for (int i7 = 0; i7 < length; i7++) {
            this.trackGroupToSampleQueueIndex[i7] = i7;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        for (int i8 = 0; i8 < length; i8++) {
            Format upstreamFormat = this.sampleQueues[i8].getUpstreamFormat();
            if (i8 == i4) {
                Format[] formatArr = new Format[i6];
                if (i6 == 1) {
                    formatArr[0] = upstreamFormat.copyWithManifestFormatInfo(trackGroup.getFormat(0));
                } else {
                    for (int i9 = 0; i9 < i6; i9++) {
                        formatArr[i9] = deriveFormat(trackGroup.getFormat(i9), upstreamFormat, true);
                    }
                }
                trackGroupArr[i8] = new TrackGroup(formatArr);
                this.primaryTrackGroupIndex = i8;
            } else {
                trackGroupArr[i8] = new TrackGroup(deriveFormat((i3 == 2 && MimeTypes.isAudio(upstreamFormat.sampleMimeType)) ? this.muxedAudioFormat : null, upstreamFormat, false));
            }
        }
        this.trackGroups = new TrackGroupArray(trackGroupArr);
        Assertions.checkState(this.optionalTrackGroups == null);
        this.optionalTrackGroups = TrackGroupArray.EMPTY;
    }

    private static DummyTrackOutput createDummyTrackOutput(int i2, int i3) {
        Log.w(TAG, "Unmapped track with id " + i2 + " of type " + i3);
        return new DummyTrackOutput();
    }

    private static Format deriveFormat(Format format, Format format2, boolean z) {
        if (format == null) {
            return format2;
        }
        int i2 = z ? format.bitrate : -1;
        String codecsOfType = Util.getCodecsOfType(format.codecs, MimeTypes.getTrackType(format2.sampleMimeType));
        String mediaMimeType = MimeTypes.getMediaMimeType(codecsOfType);
        if (mediaMimeType == null) {
            mediaMimeType = format2.sampleMimeType;
        }
        return format2.copyWithContainerInfo(format.id, format.label, mediaMimeType, codecsOfType, i2, format.width, format.height, format.selectionFlags, format.language);
    }

    private boolean finishedReadingChunk(HlsMediaChunk hlsMediaChunk) {
        int i2 = hlsMediaChunk.uid;
        int length = this.sampleQueues.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (this.sampleQueuesEnabledStates[i3] && this.sampleQueues[i3].peekSourceId() == i2) {
                return false;
            }
        }
        return true;
    }

    private static boolean formatsMatch(Format format, Format format2) {
        String str = format.sampleMimeType;
        String str2 = format2.sampleMimeType;
        int trackType = MimeTypes.getTrackType(str);
        if (trackType != 3) {
            return trackType == MimeTypes.getTrackType(str2);
        }
        if (Util.areEqual(str, str2)) {
            return !(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str)) || format.accessibilityChannel == format2.accessibilityChannel;
        }
        return false;
    }

    private HlsMediaChunk getLastMediaChunk() {
        return this.mediaChunks.get(r0.size() - 1);
    }

    private static int getTrackTypeScore(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return i2 != 3 ? 0 : 1;
        }
        return 3;
    }

    private static boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof HlsMediaChunk;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != C.TIME_UNSET;
    }

    private void mapSampleQueuesToMatchTrackGroups() {
        int i2 = this.trackGroups.length;
        this.trackGroupToSampleQueueIndex = new int[i2];
        Arrays.fill(this.trackGroupToSampleQueueIndex, -1);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = 0;
            while (true) {
                SampleQueue[] sampleQueueArr = this.sampleQueues;
                if (i4 >= sampleQueueArr.length) {
                    break;
                }
                if (formatsMatch(sampleQueueArr[i4].getUpstreamFormat(), this.trackGroups.get(i3).getFormat(0))) {
                    this.trackGroupToSampleQueueIndex[i3] = i4;
                    break;
                }
                i4++;
            }
        }
        Iterator<HlsSampleStream> it = this.hlsSampleStreams.iterator();
        while (it.hasNext()) {
            it.next().bindSampleQueue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFinishPrepare() {
        if (!this.released && this.trackGroupToSampleQueueIndex == null && this.sampleQueuesBuilt) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                if (sampleQueue.getUpstreamFormat() == null) {
                    return;
                }
            }
            if (this.trackGroups != null) {
                mapSampleQueuesToMatchTrackGroups();
                return;
            }
            buildTracksFromSampleStreams();
            this.prepared = true;
            this.callback.onPrepared();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTracksEnded() {
        this.sampleQueuesBuilt = true;
        maybeFinishPrepare();
    }

    private void resetSampleQueues() {
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset(this.pendingResetUpstreamFormats);
        }
        this.pendingResetUpstreamFormats = false;
    }

    private boolean seekInsideBufferUs(long j2) {
        int length = this.sampleQueues.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                return true;
            }
            SampleQueue sampleQueue = this.sampleQueues[i2];
            sampleQueue.rewind();
            if (!(sampleQueue.advanceTo(j2, true, false) != -1) && (this.sampleQueueIsAudioVideoFlags[i2] || !this.haveAudioVideoSampleQueues)) {
                break;
            }
            i2++;
        }
        return false;
    }

    private void updateSampleStreams(SampleStream[] sampleStreamArr) {
        this.hlsSampleStreams.clear();
        for (SampleStream sampleStream : sampleStreamArr) {
            if (sampleStream != null) {
                this.hlsSampleStreams.add((HlsSampleStream) sampleStream);
            }
        }
    }

    public int bindSampleQueueToSampleStream(int i2) {
        int i3 = this.trackGroupToSampleQueueIndex[i2];
        if (i3 == -1) {
            return this.optionalTrackGroups.indexOf(this.trackGroups.get(i2)) == -1 ? -2 : -3;
        }
        boolean[] zArr = this.sampleQueuesEnabledStates;
        if (zArr[i3]) {
            return -2;
        }
        zArr[i3] = true;
        return i3;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j2) {
        List<HlsMediaChunk> listEmptyList;
        long jMax;
        if (this.loadingFinished || this.loader.isLoading()) {
            return false;
        }
        if (isPendingReset()) {
            listEmptyList = Collections.emptyList();
            jMax = this.pendingResetPositionUs;
        } else {
            listEmptyList = this.readOnlyMediaChunks;
            HlsMediaChunk lastMediaChunk = getLastMediaChunk();
            jMax = lastMediaChunk.isLoadCompleted() ? lastMediaChunk.endTimeUs : Math.max(this.lastSeekPositionUs, lastMediaChunk.startTimeUs);
        }
        this.chunkSource.getNextChunk(j2, jMax, listEmptyList, this.nextChunkHolder);
        HlsChunkSource.HlsChunkHolder hlsChunkHolder = this.nextChunkHolder;
        boolean z = hlsChunkHolder.endOfStream;
        Chunk chunk = hlsChunkHolder.chunk;
        HlsMasterPlaylist.HlsUrl hlsUrl = hlsChunkHolder.playlist;
        hlsChunkHolder.clear();
        if (z) {
            this.pendingResetPositionUs = C.TIME_UNSET;
            this.loadingFinished = true;
            return true;
        }
        if (chunk == null) {
            if (hlsUrl != null) {
                this.callback.onPlaylistRefreshRequired(hlsUrl);
            }
            return false;
        }
        if (isMediaChunk(chunk)) {
            this.pendingResetPositionUs = C.TIME_UNSET;
            HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) chunk;
            hlsMediaChunk.init(this);
            this.mediaChunks.add(hlsMediaChunk);
            this.upstreamTrackFormat = hlsMediaChunk.trackFormat;
        }
        this.eventDispatcher.loadStarted(chunk.dataSpec, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, this.loader.startLoading(chunk, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(chunk.type)));
        return true;
    }

    public void continuePreparing() {
        if (this.prepared) {
            return;
        }
        continueLoading(this.lastSeekPositionUs);
    }

    public void discardBuffer(long j2, boolean z) {
        if (!this.sampleQueuesBuilt || isPendingReset()) {
            return;
        }
        int length = this.sampleQueues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.sampleQueues[i2].discardTo(j2, z, this.sampleQueuesEnabledStates[i2]);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.tracksEnded = true;
        this.handler.post(this.onTracksEndedRunnable);
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException
        */
    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        /*
            r7 = this;
            boolean r0 = r7.loadingFinished
            if (r0 == 0) goto L7
            r0 = -9223372036854775808
            return r0
        L7:
            boolean r0 = r7.isPendingReset()
            if (r0 == 0) goto L10
            long r0 = r7.pendingResetPositionUs
            return r0
        L10:
            long r0 = r7.lastSeekPositionUs
            com.google.android.exoplayer2.source.hls.HlsMediaChunk r2 = r7.getLastMediaChunk()
            boolean r3 = r2.isLoadCompleted()
            if (r3 == 0) goto L1d
            goto L36
        L1d:
            java.util.ArrayList<com.google.android.exoplayer2.source.hls.HlsMediaChunk> r2 = r7.mediaChunks
            int r2 = r2.size()
            r3 = 1
            if (r2 <= r3) goto L35
            java.util.ArrayList<com.google.android.exoplayer2.source.hls.HlsMediaChunk> r2 = r7.mediaChunks
            int r3 = r2.size()
            int r3 = r3 + (-2)
            java.lang.Object r2 = r2.get(r3)
            com.google.android.exoplayer2.source.hls.HlsMediaChunk r2 = (com.google.android.exoplayer2.source.hls.HlsMediaChunk) r2
            goto L36
        L35:
            r2 = 0
        L36:
            if (r2 == 0) goto L3e
            long r2 = r2.endTimeUs
            long r0 = java.lang.Math.max(r0, r2)
        L3e:
            boolean r2 = r7.sampleQueuesBuilt
            if (r2 == 0) goto L55
            com.google.android.exoplayer2.source.SampleQueue[] r2 = r7.sampleQueues
            int r3 = r2.length
            r4 = 0
        L46:
            if (r4 >= r3) goto L55
            r5 = r2[r4]
            long r5 = r5.getLargestQueuedTimestampUs()
            long r0 = java.lang.Math.max(r0, r5)
            int r4 = r4 + 1
            goto L46
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.getBufferedPositionUs():long");
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        return getLastMediaChunk().endTimeUs;
    }

    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    public void init(int i2, boolean z, boolean z2) {
        if (!z2) {
            this.audioSampleQueueMappingDone = false;
            this.videoSampleQueueMappingDone = false;
        }
        this.chunkUid = i2;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.sourceId(i2);
        }
        if (z) {
            for (SampleQueue sampleQueue2 : this.sampleQueues) {
                sampleQueue2.splice();
            }
        }
    }

    public boolean isReady(int i2) {
        return this.loadingFinished || (!isPendingReset() && this.sampleQueues[i2].hasNextSample());
    }

    public void maybeThrowError() {
        this.loader.maybeThrowError();
        this.chunkSource.maybeThrowError();
    }

    public void maybeThrowPrepareError() {
        maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(Chunk chunk, long j2, long j3, boolean z) {
        this.eventDispatcher.loadCanceled(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j2, j3, chunk.bytesLoaded());
        if (z) {
            return;
        }
        resetSampleQueues();
        if (this.enabledTrackGroupCount > 0) {
            this.callback.onContinueLoadingRequested(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(Chunk chunk, long j2, long j3) {
        this.chunkSource.onChunkLoadCompleted(chunk);
        this.eventDispatcher.loadCompleted(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j2, j3, chunk.bytesLoaded());
        if (this.prepared) {
            this.callback.onContinueLoadingRequested(this);
        } else {
            continueLoading(this.lastSeekPositionUs);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public Loader.LoadErrorAction onLoadError(Chunk chunk, long j2, long j3, IOException iOException, int i2) {
        Loader.LoadErrorAction loadErrorActionCreateRetryAction;
        long jBytesLoaded = chunk.bytesLoaded();
        boolean zIsMediaChunk = isMediaChunk(chunk);
        long blacklistDurationMsFor = this.loadErrorHandlingPolicy.getBlacklistDurationMsFor(chunk.type, j3, iOException, i2);
        boolean zMaybeBlacklistTrack = blacklistDurationMsFor != C.TIME_UNSET ? this.chunkSource.maybeBlacklistTrack(chunk, blacklistDurationMsFor) : false;
        if (zMaybeBlacklistTrack) {
            if (zIsMediaChunk && jBytesLoaded == 0) {
                ArrayList<HlsMediaChunk> arrayList = this.mediaChunks;
                Assertions.checkState(arrayList.remove(arrayList.size() - 1) == chunk);
                if (this.mediaChunks.isEmpty()) {
                    this.pendingResetPositionUs = this.lastSeekPositionUs;
                }
            }
            loadErrorActionCreateRetryAction = Loader.DONT_RETRY;
        } else {
            long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(chunk.type, j3, iOException, i2);
            loadErrorActionCreateRetryAction = retryDelayMsFor != C.TIME_UNSET ? Loader.createRetryAction(false, retryDelayMsFor) : Loader.DONT_RETRY_FATAL;
        }
        Loader.LoadErrorAction loadErrorAction = loadErrorActionCreateRetryAction;
        this.eventDispatcher.loadError(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j2, j3, jBytesLoaded, iOException, !loadErrorAction.isRetry());
        if (zMaybeBlacklistTrack) {
            if (this.prepared) {
                this.callback.onContinueLoadingRequested(this);
            } else {
                continueLoading(this.lastSeekPositionUs);
            }
        }
        return loadErrorAction;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        resetSampleQueues();
    }

    public boolean onPlaylistError(HlsMasterPlaylist.HlsUrl hlsUrl, long j2) {
        return this.chunkSource.onPlaylistError(hlsUrl, j2);
    }

    @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    public void prepareWithMasterPlaylistInfo(TrackGroupArray trackGroupArray, int i2, TrackGroupArray trackGroupArray2) {
        this.prepared = true;
        this.trackGroups = trackGroupArray;
        this.optionalTrackGroups = trackGroupArray2;
        this.primaryTrackGroupIndex = i2;
        this.callback.onPrepared();
    }

    public int readData(int i2, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
        if (isPendingReset()) {
            return -3;
        }
        int i3 = 0;
        if (!this.mediaChunks.isEmpty()) {
            int i4 = 0;
            while (i4 < this.mediaChunks.size() - 1 && finishedReadingChunk(this.mediaChunks.get(i4))) {
                i4++;
            }
            Util.removeRange(this.mediaChunks, 0, i4);
            HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(0);
            Format format = hlsMediaChunk.trackFormat;
            if (!format.equals(this.downstreamTrackFormat)) {
                this.eventDispatcher.downstreamFormatChanged(this.trackType, format, hlsMediaChunk.trackSelectionReason, hlsMediaChunk.trackSelectionData, hlsMediaChunk.startTimeUs);
            }
            this.downstreamTrackFormat = format;
        }
        int i5 = this.sampleQueues[i2].read(formatHolder, decoderInputBuffer, z, this.loadingFinished, this.lastSeekPositionUs);
        if (i5 == -5 && i2 == this.primarySampleQueueIndex) {
            int iPeekSourceId = this.sampleQueues[i2].peekSourceId();
            while (i3 < this.mediaChunks.size() && this.mediaChunks.get(i3).uid != iPeekSourceId) {
                i3++;
            }
            formatHolder.format = formatHolder.format.copyWithManifestFormatInfo(i3 < this.mediaChunks.size() ? this.mediaChunks.get(i3).trackFormat : this.upstreamTrackFormat);
        }
        return i5;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j2) {
    }

    public void release() {
        if (this.prepared) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.discardToEnd();
            }
        }
        this.loader.release(this);
        this.handler.removeCallbacksAndMessages(null);
        this.released = true;
        this.hlsSampleStreams.clear();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
    }

    public boolean seekToUs(long j2, boolean z) {
        this.lastSeekPositionUs = j2;
        if (isPendingReset()) {
            this.pendingResetPositionUs = j2;
            return true;
        }
        if (this.sampleQueuesBuilt && !z && seekInsideBufferUs(j2)) {
            return false;
        }
        this.pendingResetPositionUs = j2;
        this.loadingFinished = false;
        this.mediaChunks.clear();
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
        } else {
            resetSampleQueues();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x013c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean selectTracks(com.google.android.exoplayer2.trackselection.TrackSelection[] r20, boolean[] r21, com.google.android.exoplayer2.source.SampleStream[] r22, boolean[] r23, long r24, boolean r26) {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.selectTracks(com.google.android.exoplayer2.trackselection.TrackSelection[], boolean[], com.google.android.exoplayer2.source.SampleStream[], boolean[], long, boolean):boolean");
    }

    public void setIsTimestampMaster(boolean z) {
        this.chunkSource.setIsTimestampMaster(z);
    }

    public void setSampleOffsetUs(long j2) {
        this.sampleOffsetUs = j2;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.setSampleOffsetUs(j2);
        }
    }

    public int skipData(int i2, long j2) {
        if (isPendingReset()) {
            return 0;
        }
        SampleQueue sampleQueue = this.sampleQueues[i2];
        if (this.loadingFinished && j2 > sampleQueue.getLargestQueuedTimestampUs()) {
            return sampleQueue.advanceToEnd();
        }
        int iAdvanceTo = sampleQueue.advanceTo(j2, true, true);
        if (iAdvanceTo == -1) {
            return 0;
        }
        return iAdvanceTo;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i2, int i3) {
        SampleQueue[] sampleQueueArr = this.sampleQueues;
        int length = sampleQueueArr.length;
        if (i3 == 1) {
            int i4 = this.audioSampleQueueIndex;
            if (i4 != -1) {
                if (this.audioSampleQueueMappingDone) {
                    return this.sampleQueueTrackIds[i4] == i2 ? sampleQueueArr[i4] : createDummyTrackOutput(i2, i3);
                }
                this.audioSampleQueueMappingDone = true;
                this.sampleQueueTrackIds[i4] = i2;
                return sampleQueueArr[i4];
            }
            if (this.tracksEnded) {
                return createDummyTrackOutput(i2, i3);
            }
        } else if (i3 == 2) {
            int i5 = this.videoSampleQueueIndex;
            if (i5 != -1) {
                if (this.videoSampleQueueMappingDone) {
                    return this.sampleQueueTrackIds[i5] == i2 ? sampleQueueArr[i5] : createDummyTrackOutput(i2, i3);
                }
                this.videoSampleQueueMappingDone = true;
                this.sampleQueueTrackIds[i5] = i2;
                return sampleQueueArr[i5];
            }
            if (this.tracksEnded) {
                return createDummyTrackOutput(i2, i3);
            }
        } else {
            for (int i6 = 0; i6 < length; i6++) {
                if (this.sampleQueueTrackIds[i6] == i2) {
                    return this.sampleQueues[i6];
                }
            }
            if (this.tracksEnded) {
                return createDummyTrackOutput(i2, i3);
            }
        }
        PrivTimestampStrippingSampleQueue privTimestampStrippingSampleQueue = new PrivTimestampStrippingSampleQueue(this.allocator);
        privTimestampStrippingSampleQueue.setSampleOffsetUs(this.sampleOffsetUs);
        privTimestampStrippingSampleQueue.sourceId(this.chunkUid);
        privTimestampStrippingSampleQueue.setUpstreamFormatChangeListener(this);
        int i7 = length + 1;
        this.sampleQueueTrackIds = Arrays.copyOf(this.sampleQueueTrackIds, i7);
        this.sampleQueueTrackIds[length] = i2;
        this.sampleQueues = (SampleQueue[]) Arrays.copyOf(this.sampleQueues, i7);
        this.sampleQueues[length] = privTimestampStrippingSampleQueue;
        this.sampleQueueIsAudioVideoFlags = Arrays.copyOf(this.sampleQueueIsAudioVideoFlags, i7);
        this.sampleQueueIsAudioVideoFlags[length] = i3 == 1 || i3 == 2;
        this.haveAudioVideoSampleQueues |= this.sampleQueueIsAudioVideoFlags[length];
        if (i3 == 1) {
            this.audioSampleQueueMappingDone = true;
            this.audioSampleQueueIndex = length;
        } else if (i3 == 2) {
            this.videoSampleQueueMappingDone = true;
            this.videoSampleQueueIndex = length;
        }
        if (getTrackTypeScore(i3) > getTrackTypeScore(this.primarySampleQueueType)) {
            this.primarySampleQueueIndex = length;
            this.primarySampleQueueType = i3;
        }
        this.sampleQueuesEnabledStates = Arrays.copyOf(this.sampleQueuesEnabledStates, i7);
        return privTimestampStrippingSampleQueue;
    }

    public void unbindSampleQueue(int i2) {
        int i3 = this.trackGroupToSampleQueueIndex[i2];
        Assertions.checkState(this.sampleQueuesEnabledStates[i3]);
        this.sampleQueuesEnabledStates[i3] = false;
    }
}
