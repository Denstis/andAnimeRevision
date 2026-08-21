package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.ClippingMediaPeriod;
import com.google.android.exoplayer2.source.EmptySampleStream;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class MediaPeriodHolder {
    private static final String TAG = "MediaPeriodHolder";
    public boolean hasEnabledTracks;
    public MediaPeriodInfo info;
    public final boolean[] mayRetainStreamFlags;
    public final MediaPeriod mediaPeriod;
    private final MediaSource mediaSource;
    public MediaPeriodHolder next;
    private TrackSelectorResult periodTrackSelectorResult;
    public boolean prepared;
    private final RendererCapabilities[] rendererCapabilities;
    private long rendererPositionOffsetUs;
    public final SampleStream[] sampleStreams;
    public TrackGroupArray trackGroups;
    private final TrackSelector trackSelector;
    public TrackSelectorResult trackSelectorResult;
    public final Object uid;

    public MediaPeriodHolder(RendererCapabilities[] rendererCapabilitiesArr, long j2, TrackSelector trackSelector, Allocator allocator, MediaSource mediaSource, MediaPeriodInfo mediaPeriodInfo) {
        this.rendererCapabilities = rendererCapabilitiesArr;
        this.rendererPositionOffsetUs = j2 - mediaPeriodInfo.startPositionUs;
        this.trackSelector = trackSelector;
        this.mediaSource = mediaSource;
        this.uid = Assertions.checkNotNull(mediaPeriodInfo.id.periodUid);
        this.info = mediaPeriodInfo;
        this.sampleStreams = new SampleStream[rendererCapabilitiesArr.length];
        this.mayRetainStreamFlags = new boolean[rendererCapabilitiesArr.length];
        MediaPeriod mediaPeriodCreatePeriod = mediaSource.createPeriod(mediaPeriodInfo.id, allocator, mediaPeriodInfo.startPositionUs);
        long j3 = mediaPeriodInfo.id.endPositionUs;
        this.mediaPeriod = j3 != Long.MIN_VALUE ? new ClippingMediaPeriod(mediaPeriodCreatePeriod, true, 0L, j3) : mediaPeriodCreatePeriod;
    }

    private void associateNoSampleRenderersWithEmptySampleStream(SampleStream[] sampleStreamArr) {
        int i2 = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i2 >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i2].getTrackType() == 6 && this.trackSelectorResult.isRendererEnabled(i2)) {
                sampleStreamArr[i2] = new EmptySampleStream();
            }
            i2++;
        }
    }

    private void disableTrackSelectionsInResult(TrackSelectorResult trackSelectorResult) {
        for (int i2 = 0; i2 < trackSelectorResult.length; i2++) {
            boolean zIsRendererEnabled = trackSelectorResult.isRendererEnabled(i2);
            TrackSelection trackSelection = trackSelectorResult.selections.get(i2);
            if (zIsRendererEnabled && trackSelection != null) {
                trackSelection.disable();
            }
        }
    }

    private void disassociateNoSampleRenderersWithEmptySampleStream(SampleStream[] sampleStreamArr) {
        int i2 = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i2 >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i2].getTrackType() == 6) {
                sampleStreamArr[i2] = null;
            }
            i2++;
        }
    }

    private void enableTrackSelectionsInResult(TrackSelectorResult trackSelectorResult) {
        for (int i2 = 0; i2 < trackSelectorResult.length; i2++) {
            boolean zIsRendererEnabled = trackSelectorResult.isRendererEnabled(i2);
            TrackSelection trackSelection = trackSelectorResult.selections.get(i2);
            if (zIsRendererEnabled && trackSelection != null) {
                trackSelection.enable();
            }
        }
    }

    private void updatePeriodTrackSelectorResult(TrackSelectorResult trackSelectorResult) {
        TrackSelectorResult trackSelectorResult2 = this.periodTrackSelectorResult;
        if (trackSelectorResult2 != null) {
            disableTrackSelectionsInResult(trackSelectorResult2);
        }
        this.periodTrackSelectorResult = trackSelectorResult;
        TrackSelectorResult trackSelectorResult3 = this.periodTrackSelectorResult;
        if (trackSelectorResult3 != null) {
            enableTrackSelectionsInResult(trackSelectorResult3);
        }
    }

    public long applyTrackSelection(long j2, boolean z) {
        return applyTrackSelection(j2, z, new boolean[this.rendererCapabilities.length]);
    }

    public long applyTrackSelection(long j2, boolean z, boolean[] zArr) {
        int i2 = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
            boolean z2 = true;
            if (i2 >= trackSelectorResult.length) {
                break;
            }
            boolean[] zArr2 = this.mayRetainStreamFlags;
            if (z || !trackSelectorResult.isEquivalent(this.periodTrackSelectorResult, i2)) {
                z2 = false;
            }
            zArr2[i2] = z2;
            i2++;
        }
        disassociateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        updatePeriodTrackSelectorResult(this.trackSelectorResult);
        TrackSelectionArray trackSelectionArray = this.trackSelectorResult.selections;
        long jSelectTracks = this.mediaPeriod.selectTracks(trackSelectionArray.getAll(), this.mayRetainStreamFlags, this.sampleStreams, zArr, j2);
        associateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        this.hasEnabledTracks = false;
        int i3 = 0;
        while (true) {
            SampleStream[] sampleStreamArr = this.sampleStreams;
            if (i3 >= sampleStreamArr.length) {
                return jSelectTracks;
            }
            if (sampleStreamArr[i3] != null) {
                Assertions.checkState(this.trackSelectorResult.isRendererEnabled(i3));
                if (this.rendererCapabilities[i3].getTrackType() != 6) {
                    this.hasEnabledTracks = true;
                }
            } else {
                Assertions.checkState(trackSelectionArray.get(i3) == null);
            }
            i3++;
        }
    }

    public void continueLoading(long j2) {
        this.mediaPeriod.continueLoading(toPeriodTime(j2));
    }

    public long getBufferedPositionUs() {
        if (!this.prepared) {
            return this.info.startPositionUs;
        }
        long bufferedPositionUs = this.hasEnabledTracks ? this.mediaPeriod.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.info.durationUs : bufferedPositionUs;
    }

    public long getDurationUs() {
        return this.info.durationUs;
    }

    public long getNextLoadPositionUs() {
        if (this.prepared) {
            return this.mediaPeriod.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long getRendererOffset() {
        return this.rendererPositionOffsetUs;
    }

    public long getStartPositionRendererTime() {
        return this.info.startPositionUs + this.rendererPositionOffsetUs;
    }

    public void handlePrepared(float f2) {
        this.prepared = true;
        this.trackGroups = this.mediaPeriod.getTrackGroups();
        selectTracks(f2);
        long jApplyTrackSelection = applyTrackSelection(this.info.startPositionUs, false);
        long j2 = this.rendererPositionOffsetUs;
        MediaPeriodInfo mediaPeriodInfo = this.info;
        this.rendererPositionOffsetUs = j2 + (mediaPeriodInfo.startPositionUs - jApplyTrackSelection);
        this.info = mediaPeriodInfo.copyWithStartPositionUs(jApplyTrackSelection);
    }

    public boolean isFullyBuffered() {
        return this.prepared && (!this.hasEnabledTracks || this.mediaPeriod.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public void reevaluateBuffer(long j2) {
        if (this.prepared) {
            this.mediaPeriod.reevaluateBuffer(toPeriodTime(j2));
        }
    }

    public void release() {
        MediaSource mediaSource;
        MediaPeriod mediaPeriod;
        updatePeriodTrackSelectorResult(null);
        try {
            if (this.info.id.endPositionUs != Long.MIN_VALUE) {
                mediaSource = this.mediaSource;
                mediaPeriod = ((ClippingMediaPeriod) this.mediaPeriod).mediaPeriod;
            } else {
                mediaSource = this.mediaSource;
                mediaPeriod = this.mediaPeriod;
            }
            mediaSource.releasePeriod(mediaPeriod);
        } catch (RuntimeException e2) {
            Log.e(TAG, "Period release failed.", e2);
        }
    }

    public boolean selectTracks(float f2) {
        TrackSelectorResult trackSelectorResultSelectTracks = this.trackSelector.selectTracks(this.rendererCapabilities, this.trackGroups);
        if (trackSelectorResultSelectTracks.isEquivalent(this.periodTrackSelectorResult)) {
            return false;
        }
        this.trackSelectorResult = trackSelectorResultSelectTracks;
        for (TrackSelection trackSelection : this.trackSelectorResult.selections.getAll()) {
            if (trackSelection != null) {
                trackSelection.onPlaybackSpeed(f2);
            }
        }
        return true;
    }

    public long toPeriodTime(long j2) {
        return j2 - getRendererOffset();
    }

    public long toRendererTime(long j2) {
        return j2 + getRendererOffset();
    }
}
