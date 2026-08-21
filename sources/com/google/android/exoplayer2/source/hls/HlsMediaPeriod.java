package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HlsMediaPeriod implements MediaPeriod, HlsSampleStreamWrapper.Callback, HlsPlaylistTracker.PlaylistEventListener {
    private final Allocator allocator;
    private final boolean allowChunklessPreparation;
    private MediaPeriod.Callback callback;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final HlsDataSourceFactory dataSourceFactory;
    private final MediaSourceEventListener.EventDispatcher eventDispatcher;
    private final HlsExtractorFactory extractorFactory;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final TransferListener mediaTransferListener;
    private boolean notifiedReadingStarted;
    private int pendingPrepareCount;
    private final HlsPlaylistTracker playlistTracker;
    private TrackGroupArray trackGroups;
    private final IdentityHashMap<SampleStream, Integer> streamWrapperIndices = new IdentityHashMap<>();
    private final TimestampAdjusterProvider timestampAdjusterProvider = new TimestampAdjusterProvider();
    private HlsSampleStreamWrapper[] sampleStreamWrappers = new HlsSampleStreamWrapper[0];
    private HlsSampleStreamWrapper[] enabledSampleStreamWrappers = new HlsSampleStreamWrapper[0];

    public HlsMediaPeriod(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, HlsDataSourceFactory hlsDataSourceFactory, TransferListener transferListener, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher, Allocator allocator, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, boolean z) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.mediaTransferListener = transferListener;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.allowChunklessPreparation = z;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(new SequenceableLoader[0]);
        eventDispatcher.mediaPeriodCreated();
    }

    private void buildAndPrepareMainSampleStreamWrapper(HlsMasterPlaylist hlsMasterPlaylist, long j2) {
        List list;
        List arrayList = new ArrayList(hlsMasterPlaylist.variants);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            HlsMasterPlaylist.HlsUrl hlsUrl = (HlsMasterPlaylist.HlsUrl) arrayList.get(i2);
            Format format = hlsUrl.format;
            if (format.height > 0 || Util.getCodecsOfType(format.codecs, 2) != null) {
                arrayList2.add(hlsUrl);
            } else if (Util.getCodecsOfType(format.codecs, 1) != null) {
                arrayList3.add(hlsUrl);
            }
        }
        if (arrayList2.isEmpty()) {
            if (arrayList3.size() < arrayList.size()) {
                arrayList.removeAll(arrayList3);
            }
            list = arrayList;
        } else {
            list = arrayList2;
        }
        Assertions.checkArgument(!list.isEmpty());
        HlsMasterPlaylist.HlsUrl[] hlsUrlArr = (HlsMasterPlaylist.HlsUrl[]) list.toArray(new HlsMasterPlaylist.HlsUrl[0]);
        String str = hlsUrlArr[0].format.codecs;
        HlsSampleStreamWrapper hlsSampleStreamWrapperBuildSampleStreamWrapper = buildSampleStreamWrapper(0, hlsUrlArr, hlsMasterPlaylist.muxedAudioFormat, hlsMasterPlaylist.muxedCaptionFormats, j2);
        this.sampleStreamWrappers[0] = hlsSampleStreamWrapperBuildSampleStreamWrapper;
        if (!this.allowChunklessPreparation || str == null) {
            hlsSampleStreamWrapperBuildSampleStreamWrapper.setIsTimestampMaster(true);
            hlsSampleStreamWrapperBuildSampleStreamWrapper.continuePreparing();
            return;
        }
        boolean z = Util.getCodecsOfType(str, 2) != null;
        boolean z2 = Util.getCodecsOfType(str, 1) != null;
        ArrayList arrayList4 = new ArrayList();
        if (z) {
            Format[] formatArr = new Format[list.size()];
            for (int i3 = 0; i3 < formatArr.length; i3++) {
                formatArr[i3] = deriveVideoFormat(hlsUrlArr[i3].format);
            }
            arrayList4.add(new TrackGroup(formatArr));
            if (z2 && (hlsMasterPlaylist.muxedAudioFormat != null || hlsMasterPlaylist.audios.isEmpty())) {
                arrayList4.add(new TrackGroup(deriveAudioFormat(hlsUrlArr[0].format, hlsMasterPlaylist.muxedAudioFormat, false)));
            }
            List<Format> list2 = hlsMasterPlaylist.muxedCaptionFormats;
            if (list2 != null) {
                for (int i4 = 0; i4 < list2.size(); i4++) {
                    arrayList4.add(new TrackGroup(list2.get(i4)));
                }
            }
        } else {
            if (!z2) {
                throw new IllegalArgumentException("Unexpected codecs attribute: " + str);
            }
            Format[] formatArr2 = new Format[list.size()];
            for (int i5 = 0; i5 < formatArr2.length; i5++) {
                formatArr2[i5] = deriveAudioFormat(hlsUrlArr[i5].format, hlsMasterPlaylist.muxedAudioFormat, true);
            }
            arrayList4.add(new TrackGroup(formatArr2));
        }
        TrackGroup trackGroup = new TrackGroup(Format.createSampleFormat("ID3", MimeTypes.APPLICATION_ID3, null, -1, null));
        arrayList4.add(trackGroup);
        hlsSampleStreamWrapperBuildSampleStreamWrapper.prepareWithMasterPlaylistInfo(new TrackGroupArray((TrackGroup[]) arrayList4.toArray(new TrackGroup[0])), 0, new TrackGroupArray(trackGroup));
    }

    private void buildAndPrepareSampleStreamWrappers(long j2) {
        HlsMasterPlaylist masterPlaylist = this.playlistTracker.getMasterPlaylist();
        List<HlsMasterPlaylist.HlsUrl> list = masterPlaylist.audios;
        List<HlsMasterPlaylist.HlsUrl> list2 = masterPlaylist.subtitles;
        int size = list.size() + 1 + list2.size();
        this.sampleStreamWrappers = new HlsSampleStreamWrapper[size];
        this.pendingPrepareCount = size;
        buildAndPrepareMainSampleStreamWrapper(masterPlaylist, j2);
        char c2 = 0;
        int i2 = 0;
        int i3 = 1;
        while (i2 < list.size()) {
            HlsMasterPlaylist.HlsUrl hlsUrl = list.get(i2);
            HlsMasterPlaylist.HlsUrl[] hlsUrlArr = new HlsMasterPlaylist.HlsUrl[1];
            hlsUrlArr[c2] = hlsUrl;
            HlsSampleStreamWrapper hlsSampleStreamWrapperBuildSampleStreamWrapper = buildSampleStreamWrapper(1, hlsUrlArr, null, Collections.emptyList(), j2);
            int i4 = i3 + 1;
            this.sampleStreamWrappers[i3] = hlsSampleStreamWrapperBuildSampleStreamWrapper;
            Format format = hlsUrl.format;
            if (!this.allowChunklessPreparation || format.codecs == null) {
                hlsSampleStreamWrapperBuildSampleStreamWrapper.continuePreparing();
            } else {
                hlsSampleStreamWrapperBuildSampleStreamWrapper.prepareWithMasterPlaylistInfo(new TrackGroupArray(new TrackGroup(format)), 0, TrackGroupArray.EMPTY);
            }
            i2++;
            i3 = i4;
            c2 = 0;
        }
        int i5 = 0;
        while (i5 < list2.size()) {
            HlsMasterPlaylist.HlsUrl hlsUrl2 = list2.get(i5);
            HlsSampleStreamWrapper hlsSampleStreamWrapperBuildSampleStreamWrapper2 = buildSampleStreamWrapper(3, new HlsMasterPlaylist.HlsUrl[]{hlsUrl2}, null, Collections.emptyList(), j2);
            this.sampleStreamWrappers[i3] = hlsSampleStreamWrapperBuildSampleStreamWrapper2;
            hlsSampleStreamWrapperBuildSampleStreamWrapper2.prepareWithMasterPlaylistInfo(new TrackGroupArray(new TrackGroup(hlsUrl2.format)), 0, TrackGroupArray.EMPTY);
            i5++;
            i3++;
        }
        this.enabledSampleStreamWrappers = this.sampleStreamWrappers;
    }

    private HlsSampleStreamWrapper buildSampleStreamWrapper(int i2, HlsMasterPlaylist.HlsUrl[] hlsUrlArr, Format format, List<Format> list, long j2) {
        return new HlsSampleStreamWrapper(i2, this, new HlsChunkSource(this.extractorFactory, this.playlistTracker, hlsUrlArr, this.dataSourceFactory, this.mediaTransferListener, this.timestampAdjusterProvider, list), this.allocator, j2, format, this.loadErrorHandlingPolicy, this.eventDispatcher);
    }

    private static Format deriveAudioFormat(Format format, Format format2, boolean z) {
        String str;
        String str2;
        String str3;
        int i2;
        int i3;
        if (format2 != null) {
            String str4 = format2.codecs;
            int i4 = format2.channelCount;
            int i5 = format2.selectionFlags;
            String str5 = format2.language;
            str2 = format2.label;
            str = str4;
            i2 = i4;
            i3 = i5;
            str3 = str5;
        } else {
            String codecsOfType = Util.getCodecsOfType(format.codecs, 1);
            if (z) {
                int i6 = format.channelCount;
                int i7 = format.selectionFlags;
                str = codecsOfType;
                i2 = i6;
                str2 = format.label;
                str3 = str2;
                i3 = i7;
            } else {
                str = codecsOfType;
                str2 = null;
                str3 = null;
                i2 = -1;
                i3 = 0;
            }
        }
        return Format.createAudioContainerFormat(format.id, str2, format.containerMimeType, MimeTypes.getMediaMimeType(str), str, z ? format.bitrate : -1, i2, -1, null, i3, str3);
    }

    private static Format deriveVideoFormat(Format format) {
        String codecsOfType = Util.getCodecsOfType(format.codecs, 2);
        return Format.createVideoContainerFormat(format.id, format.label, format.containerMimeType, MimeTypes.getMediaMimeType(codecsOfType), codecsOfType, format.bitrate, format.width, format.height, format.frameRate, null, format.selectionFlags);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j2) {
        if (this.trackGroups != null) {
            return this.compositeSequenceableLoader.continueLoading(j2);
        }
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.continuePreparing();
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j2, boolean z) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.enabledSampleStreamWrappers) {
            hlsSampleStreamWrapper.discardBuffer(j2, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j2, SeekParameters seekParameters) {
        return j2;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(HlsSampleStreamWrapper hlsSampleStreamWrapper) {
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public void onPlaylistChanged() {
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public boolean onPlaylistError(HlsMasterPlaylist.HlsUrl hlsUrl, long j2) {
        boolean zOnPlaylistError = true;
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            zOnPlaylistError &= hlsSampleStreamWrapper.onPlaylistError(hlsUrl, j2);
        }
        this.callback.onContinueLoadingRequested(this);
        return zOnPlaylistError;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback
    public void onPlaylistRefreshRequired(HlsMasterPlaylist.HlsUrl hlsUrl) {
        this.playlistTracker.refreshPlaylist(hlsUrl);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback
    public void onPrepared() {
        int i2 = this.pendingPrepareCount - 1;
        this.pendingPrepareCount = i2;
        if (i2 > 0) {
            return;
        }
        int i3 = 0;
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            i3 += hlsSampleStreamWrapper.getTrackGroups().length;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i3];
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
        int length = hlsSampleStreamWrapperArr.length;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            HlsSampleStreamWrapper hlsSampleStreamWrapper2 = hlsSampleStreamWrapperArr[i4];
            int i6 = hlsSampleStreamWrapper2.getTrackGroups().length;
            int i7 = i5;
            int i8 = 0;
            while (i8 < i6) {
                trackGroupArr[i7] = hlsSampleStreamWrapper2.getTrackGroups().get(i8);
                i8++;
                i7++;
            }
            i4++;
            i5 = i7;
        }
        this.trackGroups = new TrackGroupArray(trackGroupArr);
        this.callback.onPrepared(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j2) {
        this.callback = callback;
        this.playlistTracker.addListener(this);
        buildAndPrepareSampleStreamWrappers(j2);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        if (this.notifiedReadingStarted) {
            return C.TIME_UNSET;
        }
        this.eventDispatcher.readingStarted();
        this.notifiedReadingStarted = true;
        return C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j2) {
        this.compositeSequenceableLoader.reevaluateBuffer(j2);
    }

    public void release() {
        this.playlistTracker.removeListener(this);
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.release();
        }
        this.callback = null;
        this.eventDispatcher.mediaPeriodReleased();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j2) {
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.enabledSampleStreamWrappers;
        if (hlsSampleStreamWrapperArr.length > 0) {
            boolean zSeekToUs = hlsSampleStreamWrapperArr[0].seekToUs(j2, false);
            int i2 = 1;
            while (true) {
                HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = this.enabledSampleStreamWrappers;
                if (i2 >= hlsSampleStreamWrapperArr2.length) {
                    break;
                }
                hlsSampleStreamWrapperArr2[i2].seekToUs(j2, zSeekToUs);
                i2++;
            }
            if (zSeekToUs) {
                this.timestampAdjusterProvider.reset();
            }
        }
        return j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00ed  */
    @Override // com.google.android.exoplayer2.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long selectTracks(com.google.android.exoplayer2.trackselection.TrackSelection[] r21, boolean[] r22, com.google.android.exoplayer2.source.SampleStream[] r23, boolean[] r24, long r25) {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsMediaPeriod.selectTracks(com.google.android.exoplayer2.trackselection.TrackSelection[], boolean[], com.google.android.exoplayer2.source.SampleStream[], boolean[], long):long");
    }
}
