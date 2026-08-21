package com.google.android.exoplayer2.ui;

/* JADX INFO: loaded from: classes.dex */
public interface TimeBar {

    public interface OnScrubListener {
        void onScrubMove(TimeBar timeBar, long j2);

        void onScrubStart(TimeBar timeBar, long j2);

        void onScrubStop(TimeBar timeBar, long j2, boolean z);
    }

    void addListener(OnScrubListener onScrubListener);

    void removeListener(OnScrubListener onScrubListener);

    void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i2);

    void setBufferedPosition(long j2);

    void setDuration(long j2);

    void setEnabled(boolean z);

    void setKeyCountIncrement(int i2);

    void setKeyTimeIncrement(long j2);

    void setPosition(long j2);
}
