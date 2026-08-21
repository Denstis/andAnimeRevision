package com.google.android.exoplayer2.text;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface Subtitle {
    List<Cue> getCues(long j2);

    long getEventTime(int i2);

    int getEventTimeCount();

    int getNextEventTimeIndex(long j2);
}
