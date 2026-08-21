package c.a.a.t;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final double f3325a;

    static {
        f3325a = Build.VERSION.SDK_INT >= 17 ? 1.0d / Math.pow(10.0d, 6.0d) : 1.0d;
    }

    public static double a(long j2) {
        double dA = a() - j2;
        double d2 = f3325a;
        Double.isNaN(dA);
        return dA * d2;
    }

    @TargetApi(17)
    public static long a() {
        return Build.VERSION.SDK_INT >= 17 ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }
}
