package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class zzag {
    private static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable("Volley", 2);
    private static final String CLASS_NAME = zzag.class.getName();

    static class zza {
        public static final boolean zzbl = zzag.DEBUG;
        private final List<zzai> zzbm = new ArrayList();
        private boolean zzbn = false;

        zza() {
        }

        protected final void finalize() {
            if (this.zzbn) {
                return;
            }
            zzc("Request on the loose");
            zzag.e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }

        public final synchronized void zza(String str, long j2) {
            if (this.zzbn) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.zzbm.add(new zzai(str, j2, SystemClock.elapsedRealtime()));
        }

        public final synchronized void zzc(String str) {
            this.zzbn = true;
            long j2 = this.zzbm.size() == 0 ? 0L : this.zzbm.get(this.zzbm.size() - 1).time - this.zzbm.get(0).time;
            if (j2 <= 0) {
                return;
            }
            long j3 = this.zzbm.get(0).time;
            zzag.d("(%-4d ms) %s", Long.valueOf(j2), str);
            for (zzai zzaiVar : this.zzbm) {
                long j4 = zzaiVar.time;
                zzag.d("(+%-4d) [%2d] %s", Long.valueOf(j4 - j3), Long.valueOf(zzaiVar.zzbo), zzaiVar.name);
                j3 = j4;
            }
        }
    }

    public static void d(String str, Object... objArr) {
        Log.d(TAG, zza(str, objArr));
    }

    public static void e(String str, Object... objArr) {
        Log.e(TAG, zza(str, objArr));
    }

    public static void v(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, zza(str, objArr));
        }
    }

    private static String zza(String str, Object... objArr) {
        String string;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i2 = 2;
        while (true) {
            if (i2 >= stackTrace.length) {
                string = "<unknown>";
                break;
            }
            if (!stackTrace[i2].getClassName().equals(CLASS_NAME)) {
                String className = stackTrace[i2].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                String strSubstring2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i2].getMethodName();
                StringBuilder sb = new StringBuilder(String.valueOf(strSubstring2).length() + 1 + String.valueOf(methodName).length());
                sb.append(strSubstring2);
                sb.append(".");
                sb.append(methodName);
                string = sb.toString();
                break;
            }
            i2++;
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), string, str);
    }

    public static void zza(Throwable th, String str, Object... objArr) {
        Log.e(TAG, zza(str, objArr), th);
    }
}
