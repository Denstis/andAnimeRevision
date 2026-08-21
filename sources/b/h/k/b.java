package b.h.k;

import android.os.Build;
import android.os.Trace;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static void a() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }
}
