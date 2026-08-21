package com.google.android.exoplayer2.offline;

/* JADX INFO: loaded from: classes.dex */
public final class TrackKey {
    public final int groupIndex;
    public final int periodIndex;
    public final int trackIndex;

    public TrackKey(int i2, int i3, int i4) {
        this.periodIndex = i2;
        this.groupIndex = i3;
        this.trackIndex = i4;
    }
}
