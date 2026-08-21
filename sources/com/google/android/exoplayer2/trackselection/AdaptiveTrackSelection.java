package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.Util;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdaptiveTrackSelection extends BaseTrackSelection {
    public static final float DEFAULT_BANDWIDTH_FRACTION = 0.75f;
    public static final float DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE = 0.75f;
    public static final int DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS = 25000;
    public static final int DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS = 10000;
    public static final int DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS = 25000;
    public static final long DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS = 2000;
    private final float bandwidthFraction;
    private final BandwidthMeter bandwidthMeter;
    private final float bufferedFractionToLiveEdgeForQualityIncrease;
    private final Clock clock;
    private long lastBufferEvaluationMs;
    private final long maxDurationForQualityDecreaseUs;
    private final long minDurationForQualityIncreaseUs;
    private final long minDurationToRetainAfterDiscardUs;
    private final long minTimeBetweenBufferReevaluationMs;
    private float playbackSpeed;
    private int reason;
    private int selectedIndex;

    public static final class Factory implements TrackSelection.Factory {
        private final float bandwidthFraction;
        private final BandwidthMeter bandwidthMeter;
        private final float bufferedFractionToLiveEdgeForQualityIncrease;
        private final Clock clock;
        private final int maxDurationForQualityDecreaseMs;
        private final int minDurationForQualityIncreaseMs;
        private final int minDurationToRetainAfterDiscardMs;
        private final long minTimeBetweenBufferReevaluationMs;

        public Factory() {
            this(10000, 25000, 25000, 0.75f, 0.75f, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS, Clock.DEFAULT);
        }

        public Factory(int i2, int i3, int i4, float f2) {
            this(i2, i3, i4, f2, 0.75f, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS, Clock.DEFAULT);
        }

        public Factory(int i2, int i3, int i4, float f2, float f3, long j2, Clock clock) {
            this(null, i2, i3, i4, f2, f3, j2, clock);
        }

        @Deprecated
        public Factory(BandwidthMeter bandwidthMeter) {
            this(bandwidthMeter, 10000, 25000, 25000, 0.75f, 0.75f, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS, Clock.DEFAULT);
        }

        @Deprecated
        public Factory(BandwidthMeter bandwidthMeter, int i2, int i3, int i4, float f2) {
            this(bandwidthMeter, i2, i3, i4, f2, 0.75f, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS, Clock.DEFAULT);
        }

        @Deprecated
        public Factory(BandwidthMeter bandwidthMeter, int i2, int i3, int i4, float f2, float f3, long j2, Clock clock) {
            this.bandwidthMeter = bandwidthMeter;
            this.minDurationForQualityIncreaseMs = i2;
            this.maxDurationForQualityDecreaseMs = i3;
            this.minDurationToRetainAfterDiscardMs = i4;
            this.bandwidthFraction = f2;
            this.bufferedFractionToLiveEdgeForQualityIncrease = f3;
            this.minTimeBetweenBufferReevaluationMs = j2;
            this.clock = clock;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection.Factory
        public AdaptiveTrackSelection createTrackSelection(TrackGroup trackGroup, BandwidthMeter bandwidthMeter, int... iArr) {
            BandwidthMeter bandwidthMeter2 = this.bandwidthMeter;
            return new AdaptiveTrackSelection(trackGroup, iArr, bandwidthMeter2 != null ? bandwidthMeter2 : bandwidthMeter, this.minDurationForQualityIncreaseMs, this.maxDurationForQualityDecreaseMs, this.minDurationToRetainAfterDiscardMs, this.bandwidthFraction, this.bufferedFractionToLiveEdgeForQualityIncrease, this.minTimeBetweenBufferReevaluationMs, this.clock);
        }
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter) {
        this(trackGroup, iArr, bandwidthMeter, 10000L, 25000L, 25000L, 0.75f, 0.75f, DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS, Clock.DEFAULT);
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter, long j2, long j3, long j4, float f2, float f3, long j5, Clock clock) {
        super(trackGroup, iArr);
        this.bandwidthMeter = bandwidthMeter;
        this.minDurationForQualityIncreaseUs = j2 * 1000;
        this.maxDurationForQualityDecreaseUs = j3 * 1000;
        this.minDurationToRetainAfterDiscardUs = j4 * 1000;
        this.bandwidthFraction = f2;
        this.bufferedFractionToLiveEdgeForQualityIncrease = f3;
        this.minTimeBetweenBufferReevaluationMs = j5;
        this.clock = clock;
        this.playbackSpeed = 1.0f;
        this.reason = 1;
        this.lastBufferEvaluationMs = C.TIME_UNSET;
        this.selectedIndex = determineIdealSelectedIndex(Long.MIN_VALUE);
    }

    private int determineIdealSelectedIndex(long j2) {
        long bitrateEstimate = (long) (this.bandwidthMeter.getBitrateEstimate() * this.bandwidthFraction);
        int i2 = 0;
        for (int i3 = 0; i3 < this.length; i3++) {
            if (j2 == Long.MIN_VALUE || !isBlacklisted(i3, j2)) {
                if (Math.round(getFormat(i3).bitrate * this.playbackSpeed) <= bitrateEstimate) {
                    return i3;
                }
                i2 = i3;
            }
        }
        return i2;
    }

    private long minDurationForQualityIncreaseUs(long j2) {
        return (j2 > C.TIME_UNSET ? 1 : (j2 == C.TIME_UNSET ? 0 : -1)) != 0 && (j2 > this.minDurationForQualityIncreaseUs ? 1 : (j2 == this.minDurationForQualityIncreaseUs ? 0 : -1)) <= 0 ? (long) (j2 * this.bufferedFractionToLiveEdgeForQualityIncrease) : this.minDurationForQualityIncreaseUs;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.TrackSelection
    public void enable() {
        this.lastBufferEvaluationMs = C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.TrackSelection
    public int evaluateQueueSize(long j2, List<? extends MediaChunk> list) {
        int i2;
        int i3;
        long jElapsedRealtime = this.clock.elapsedRealtime();
        long j3 = this.lastBufferEvaluationMs;
        if (j3 != C.TIME_UNSET && jElapsedRealtime - j3 < this.minTimeBetweenBufferReevaluationMs) {
            return list.size();
        }
        this.lastBufferEvaluationMs = jElapsedRealtime;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        if (Util.getPlayoutDurationForMediaDuration(list.get(size - 1).startTimeUs - j2, this.playbackSpeed) < this.minDurationToRetainAfterDiscardUs) {
            return size;
        }
        Format format = getFormat(determineIdealSelectedIndex(jElapsedRealtime));
        for (int i4 = 0; i4 < size; i4++) {
            MediaChunk mediaChunk = list.get(i4);
            Format format2 = mediaChunk.trackFormat;
            if (Util.getPlayoutDurationForMediaDuration(mediaChunk.startTimeUs - j2, this.playbackSpeed) >= this.minDurationToRetainAfterDiscardUs && format2.bitrate < format.bitrate && (i2 = format2.height) != -1 && i2 < 720 && (i3 = format2.width) != -1 && i3 < 1280 && i2 < format.height) {
                return i4;
            }
        }
        return size;
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
        return this.reason;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.TrackSelection
    public void onPlaybackSpeed(float f2) {
        this.playbackSpeed = f2;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.TrackSelection
    public void updateSelectedTrack(long j2, long j3, long j4, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long jElapsedRealtime = this.clock.elapsedRealtime();
        int i2 = this.selectedIndex;
        this.selectedIndex = determineIdealSelectedIndex(jElapsedRealtime);
        if (this.selectedIndex == i2) {
            return;
        }
        if (!isBlacklisted(i2, jElapsedRealtime)) {
            Format format = getFormat(i2);
            Format format2 = getFormat(this.selectedIndex);
            if ((format2.bitrate > format.bitrate && j3 < minDurationForQualityIncreaseUs(j4)) || (format2.bitrate < format.bitrate && j3 >= this.maxDurationForQualityDecreaseUs)) {
                this.selectedIndex = i2;
            }
        }
        if (this.selectedIndex != i2) {
            this.reason = 3;
        }
    }
}
