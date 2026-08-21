package com.google.android.exoplayer2;

import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;

/* JADX INFO: loaded from: classes.dex */
final class PlaybackInfo {
    private static final MediaSource.MediaPeriodId DUMMY_MEDIA_PERIOD_ID = new MediaSource.MediaPeriodId(new Object());
    public volatile long bufferedPositionUs;
    public final long contentPositionUs;
    public final boolean isLoading;
    public final MediaSource.MediaPeriodId loadingMediaPeriodId;
    public final Object manifest;
    public final MediaSource.MediaPeriodId periodId;
    public final int playbackState;
    public volatile long positionUs;
    public final long startPositionUs;
    public final Timeline timeline;
    public volatile long totalBufferedDurationUs;
    public final TrackGroupArray trackGroups;
    public final TrackSelectorResult trackSelectorResult;

    public PlaybackInfo(Timeline timeline, Object obj, MediaSource.MediaPeriodId mediaPeriodId, long j2, long j3, int i2, boolean z, TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult, MediaSource.MediaPeriodId mediaPeriodId2, long j4, long j5, long j6) {
        this.timeline = timeline;
        this.manifest = obj;
        this.periodId = mediaPeriodId;
        this.startPositionUs = j2;
        this.contentPositionUs = j3;
        this.playbackState = i2;
        this.isLoading = z;
        this.trackGroups = trackGroupArray;
        this.trackSelectorResult = trackSelectorResult;
        this.loadingMediaPeriodId = mediaPeriodId2;
        this.bufferedPositionUs = j4;
        this.totalBufferedDurationUs = j5;
        this.positionUs = j6;
    }

    public static PlaybackInfo createDummy(long j2, TrackSelectorResult trackSelectorResult) {
        return new PlaybackInfo(Timeline.EMPTY, null, DUMMY_MEDIA_PERIOD_ID, j2, C.TIME_UNSET, 1, false, TrackGroupArray.EMPTY, trackSelectorResult, DUMMY_MEDIA_PERIOD_ID, j2, 0L, j2);
    }

    public PlaybackInfo copyWithIsLoading(boolean z) {
        return new PlaybackInfo(this.timeline, this.manifest, this.periodId, this.startPositionUs, this.contentPositionUs, this.playbackState, z, this.trackGroups, this.trackSelectorResult, this.loadingMediaPeriodId, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs);
    }

    public PlaybackInfo copyWithLoadingMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId) {
        return new PlaybackInfo(this.timeline, this.manifest, this.periodId, this.startPositionUs, this.contentPositionUs, this.playbackState, this.isLoading, this.trackGroups, this.trackSelectorResult, mediaPeriodId, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs);
    }

    public PlaybackInfo copyWithNewPosition(MediaSource.MediaPeriodId mediaPeriodId, long j2, long j3, long j4) {
        return new PlaybackInfo(this.timeline, this.manifest, mediaPeriodId, j2, mediaPeriodId.isAd() ? j3 : -9223372036854775807L, this.playbackState, this.isLoading, this.trackGroups, this.trackSelectorResult, this.loadingMediaPeriodId, this.bufferedPositionUs, j4, j2);
    }

    public PlaybackInfo copyWithPlaybackState(int i2) {
        return new PlaybackInfo(this.timeline, this.manifest, this.periodId, this.startPositionUs, this.contentPositionUs, i2, this.isLoading, this.trackGroups, this.trackSelectorResult, this.loadingMediaPeriodId, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs);
    }

    public PlaybackInfo copyWithTimeline(Timeline timeline, Object obj) {
        return new PlaybackInfo(timeline, obj, this.periodId, this.startPositionUs, this.contentPositionUs, this.playbackState, this.isLoading, this.trackGroups, this.trackSelectorResult, this.loadingMediaPeriodId, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs);
    }

    public PlaybackInfo copyWithTrackInfo(TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult) {
        return new PlaybackInfo(this.timeline, this.manifest, this.periodId, this.startPositionUs, this.contentPositionUs, this.playbackState, this.isLoading, trackGroupArray, trackSelectorResult, this.loadingMediaPeriodId, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs);
    }

    public MediaSource.MediaPeriodId getDummyFirstMediaPeriodId(boolean z, Timeline.Window window) {
        if (this.timeline.isEmpty()) {
            return DUMMY_MEDIA_PERIOD_ID;
        }
        Timeline timeline = this.timeline;
        return new MediaSource.MediaPeriodId(this.timeline.getUidOfPeriod(timeline.getWindow(timeline.getFirstWindowIndex(z), window).firstPeriodIndex));
    }

    public PlaybackInfo resetToNewPosition(MediaSource.MediaPeriodId mediaPeriodId, long j2, long j3) {
        return new PlaybackInfo(this.timeline, this.manifest, mediaPeriodId, j2, mediaPeriodId.isAd() ? j3 : -9223372036854775807L, this.playbackState, this.isLoading, this.trackGroups, this.trackSelectorResult, mediaPeriodId, j2, 0L, j2);
    }
}
