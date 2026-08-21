package com.google.android.exoplayer2.upstream;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface LoadErrorHandlingPolicy {
    long getBlacklistDurationMsFor(int i2, long j2, IOException iOException, int i3);

    int getMinimumLoadableRetryCount(int i2);

    long getRetryDelayMsFor(int i2, long j2, IOException iOException, int i3);
}
