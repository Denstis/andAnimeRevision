package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.Timeline;

/* JADX INFO: loaded from: classes.dex */
public abstract class ForwardingTimeline extends Timeline {
    protected final Timeline timeline;

    public ForwardingTimeline(Timeline timeline) {
        this.timeline = timeline;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getFirstWindowIndex(boolean z) {
        return this.timeline.getFirstWindowIndex(z);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getIndexOfPeriod(Object obj) {
        return this.timeline.getIndexOfPeriod(obj);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getLastWindowIndex(boolean z) {
        return this.timeline.getLastWindowIndex(z);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getNextWindowIndex(int i2, int i3, boolean z) {
        return this.timeline.getNextWindowIndex(i2, i3, z);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public Timeline.Period getPeriod(int i2, Timeline.Period period, boolean z) {
        return this.timeline.getPeriod(i2, period, z);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getPeriodCount() {
        return this.timeline.getPeriodCount();
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getPreviousWindowIndex(int i2, int i3, boolean z) {
        return this.timeline.getPreviousWindowIndex(i2, i3, z);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public Object getUidOfPeriod(int i2) {
        return this.timeline.getUidOfPeriod(i2);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public Timeline.Window getWindow(int i2, Timeline.Window window, boolean z, long j2) {
        return this.timeline.getWindow(i2, window, z, j2);
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getWindowCount() {
        return this.timeline.getWindowCount();
    }
}
