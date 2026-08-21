package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ClippingMediaSource extends CompositeMediaSource<Void> {
    private final boolean allowDynamicClippingUpdates;
    private IllegalClippingException clippingError;
    private ClippingTimeline clippingTimeline;
    private final boolean enableInitialDiscontinuity;
    private final long endUs;
    private Object manifest;
    private final ArrayList<ClippingMediaPeriod> mediaPeriods;
    private final MediaSource mediaSource;
    private long periodEndUs;
    private long periodStartUs;
    private final boolean relativeToDefaultPosition;
    private final long startUs;
    private final Timeline.Window window;

    private static final class ClippingTimeline extends ForwardingTimeline {
        private final long durationUs;
        private final long endUs;
        private final boolean isDynamic;
        private final long startUs;

        /* JADX WARN: Removed duplicated region for block: B:37:0x0072  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public ClippingTimeline(com.google.android.exoplayer2.Timeline r10, long r11, long r13) throws com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException {
            /*
                r9 = this;
                r9.<init>(r10)
                int r0 = r10.getPeriodCount()
                r1 = 0
                r2 = 1
                if (r0 != r2) goto L76
                com.google.android.exoplayer2.Timeline$Window r0 = new com.google.android.exoplayer2.Timeline$Window
                r0.<init>()
                com.google.android.exoplayer2.Timeline$Window r10 = r10.getWindow(r1, r0)
                r3 = 0
                long r11 = java.lang.Math.max(r3, r11)
                r5 = -9223372036854775808
                int r0 = (r13 > r5 ? 1 : (r13 == r5 ? 0 : -1))
                if (r0 != 0) goto L23
                long r13 = r10.durationUs
                goto L27
            L23:
                long r13 = java.lang.Math.max(r3, r13)
            L27:
                long r5 = r10.durationUs
                r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                if (r0 == 0) goto L52
                int r0 = (r13 > r5 ? 1 : (r13 == r5 ? 0 : -1))
                if (r0 <= 0) goto L37
                r13 = r5
            L37:
                int r0 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
                if (r0 == 0) goto L46
                boolean r0 = r10.isSeekable
                if (r0 == 0) goto L40
                goto L46
            L40:
                com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException r10 = new com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException
                r10.<init>(r2)
                throw r10
            L46:
                int r0 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
                if (r0 > 0) goto L4b
                goto L52
            L4b:
                com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException r10 = new com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException
                r11 = 2
                r10.<init>(r11)
                throw r10
            L52:
                r9.startUs = r11
                r9.endUs = r13
                int r0 = (r13 > r7 ? 1 : (r13 == r7 ? 0 : -1))
                if (r0 != 0) goto L5c
                r11 = r7
                goto L5e
            L5c:
                long r11 = r13 - r11
            L5e:
                r9.durationUs = r11
                boolean r11 = r10.isDynamic
                if (r11 == 0) goto L73
                int r11 = (r13 > r7 ? 1 : (r13 == r7 ? 0 : -1))
                if (r11 == 0) goto L72
                long r10 = r10.durationUs
                int r12 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
                if (r12 == 0) goto L73
                int r12 = (r13 > r10 ? 1 : (r13 == r10 ? 0 : -1))
                if (r12 != 0) goto L73
            L72:
                r1 = 1
            L73:
                r9.isDynamic = r1
                return
            L76:
                com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException r10 = new com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException
                r10.<init>(r1)
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ClippingMediaSource.ClippingTimeline.<init>(com.google.android.exoplayer2.Timeline, long, long):void");
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i2, Timeline.Period period, boolean z) {
            this.timeline.getPeriod(0, period, z);
            long positionInWindowUs = period.getPositionInWindowUs() - this.startUs;
            long j2 = this.durationUs;
            return period.set(period.id, period.uid, 0, j2 == C.TIME_UNSET ? -9223372036854775807L : j2 - positionInWindowUs, positionInWindowUs);
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i2, Timeline.Window window, boolean z, long j2) {
            this.timeline.getWindow(0, window, z, 0L);
            long j3 = window.positionInFirstPeriodUs;
            long j4 = this.startUs;
            window.positionInFirstPeriodUs = j3 + j4;
            window.durationUs = this.durationUs;
            window.isDynamic = this.isDynamic;
            long j5 = window.defaultPositionUs;
            if (j5 != C.TIME_UNSET) {
                window.defaultPositionUs = Math.max(j5, j4);
                long j6 = this.endUs;
                window.defaultPositionUs = j6 == C.TIME_UNSET ? window.defaultPositionUs : Math.min(window.defaultPositionUs, j6);
                window.defaultPositionUs -= this.startUs;
            }
            long jUsToMs = C.usToMs(this.startUs);
            long j7 = window.presentationStartTimeMs;
            if (j7 != C.TIME_UNSET) {
                window.presentationStartTimeMs = j7 + jUsToMs;
            }
            long j8 = window.windowStartTimeMs;
            if (j8 != C.TIME_UNSET) {
                window.windowStartTimeMs = j8 + jUsToMs;
            }
            return window;
        }
    }

    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        public IllegalClippingException(int i2) {
            super("Illegal clipping: " + getReasonDescription(i2));
            this.reason = i2;
        }

        private static String getReasonDescription(int i2) {
            return i2 != 0 ? i2 != 1 ? i2 != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count";
        }
    }

    public ClippingMediaSource(MediaSource mediaSource, long j2) {
        this(mediaSource, 0L, j2, true, false, true);
    }

    public ClippingMediaSource(MediaSource mediaSource, long j2, long j3) {
        this(mediaSource, j2, j3, true, false, false);
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j2, long j3, boolean z) {
        this(mediaSource, j2, j3, z, false, false);
    }

    public ClippingMediaSource(MediaSource mediaSource, long j2, long j3, boolean z, boolean z2, boolean z3) {
        Assertions.checkArgument(j2 >= 0);
        this.mediaSource = (MediaSource) Assertions.checkNotNull(mediaSource);
        this.startUs = j2;
        this.endUs = j3;
        this.enableInitialDiscontinuity = z;
        this.allowDynamicClippingUpdates = z2;
        this.relativeToDefaultPosition = z3;
        this.mediaPeriods = new ArrayList<>();
        this.window = new Timeline.Window();
    }

    private void refreshClippedTimeline(Timeline timeline) {
        long j2;
        long j3;
        timeline.getWindow(0, this.window);
        long positionInFirstPeriodUs = this.window.getPositionInFirstPeriodUs();
        if (this.clippingTimeline == null || this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            long j4 = this.startUs;
            long j5 = this.endUs;
            if (this.relativeToDefaultPosition) {
                long defaultPositionUs = this.window.getDefaultPositionUs();
                j4 += defaultPositionUs;
                j5 += defaultPositionUs;
            }
            this.periodStartUs = positionInFirstPeriodUs + j4;
            this.periodEndUs = this.endUs != Long.MIN_VALUE ? positionInFirstPeriodUs + j5 : Long.MIN_VALUE;
            int size = this.mediaPeriods.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mediaPeriods.get(i2).updateClipping(this.periodStartUs, this.periodEndUs);
            }
            j2 = j4;
            j3 = j5;
        } else {
            long j6 = this.periodStartUs - positionInFirstPeriodUs;
            j3 = this.endUs != Long.MIN_VALUE ? this.periodEndUs - positionInFirstPeriodUs : Long.MIN_VALUE;
            j2 = j6;
        }
        try {
            this.clippingTimeline = new ClippingTimeline(timeline, j2, j3);
            refreshSourceInfo(this.clippingTimeline, this.manifest);
        } catch (IllegalClippingException e2) {
            this.clippingError = e2;
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j2) {
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(this.mediaSource.createPeriod(mediaPeriodId, allocator, j2), this.enableInitialDiscontinuity, this.periodStartUs, this.periodEndUs);
        this.mediaPeriods.add(clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public long getMediaTimeForChildMediaTime(Void r7, long j2) {
        if (j2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long jUsToMs = C.usToMs(this.startUs);
        long jMax = Math.max(0L, j2 - jUsToMs);
        long j3 = this.endUs;
        return j3 != Long.MIN_VALUE ? Math.min(C.usToMs(j3) - jUsToMs, jMax) : jMax;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource, com.google.android.exoplayer2.source.MediaSource
    public Object getTag() {
        return this.mediaSource.getTag();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IllegalClippingException {
        IllegalClippingException illegalClippingException = this.clippingError;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* JADX INFO: renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void a(Void r1, MediaSource mediaSource, Timeline timeline, Object obj) {
        if (this.clippingError != null) {
            return;
        }
        this.manifest = obj;
        refreshClippedTimeline(timeline);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(ExoPlayer exoPlayer, boolean z, TransferListener transferListener) {
        super.prepareSourceInternal(exoPlayer, z, transferListener);
        prepareChildSource(null, this.mediaSource);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        Assertions.checkState(this.mediaPeriods.remove(mediaPeriod));
        this.mediaSource.releasePeriod(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
        if (!this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            return;
        }
        refreshClippedTimeline(this.clippingTimeline.timeline);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.clippingError = null;
        this.clippingTimeline = null;
    }
}
