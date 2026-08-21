package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class DefaultLoadErrorHandlingPolicy implements LoadErrorHandlingPolicy {
    private static final int DEFAULT_BEHAVIOR_MIN_LOADABLE_RETRY_COUNT = -1;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT_PROGRESSIVE_LIVE = 6;
    public static final long DEFAULT_TRACK_BLACKLIST_MS = 60000;
    private final int minimumLoadableRetryCount;

    public DefaultLoadErrorHandlingPolicy() {
        this(-1);
    }

    public DefaultLoadErrorHandlingPolicy(int i2) {
        this.minimumLoadableRetryCount = i2;
    }

    @Override // com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy
    public long getBlacklistDurationMsFor(int i2, long j2, IOException iOException, int i3) {
        if (!(iOException instanceof HttpDataSource.InvalidResponseCodeException)) {
            return C.TIME_UNSET;
        }
        int i4 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode;
        return (i4 == 404 || i4 == 410) ? DEFAULT_TRACK_BLACKLIST_MS : C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy
    public int getMinimumLoadableRetryCount(int i2) {
        int i3 = this.minimumLoadableRetryCount;
        return i3 == -1 ? i2 == 7 ? 6 : 3 : i3;
    }

    @Override // com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy
    public long getRetryDelayMsFor(int i2, long j2, IOException iOException, int i3) {
        return iOException instanceof ParserException ? C.TIME_UNSET : Math.min((i3 - 1) * 1000, 5000);
    }
}
