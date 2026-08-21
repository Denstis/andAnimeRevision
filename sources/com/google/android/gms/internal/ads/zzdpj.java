package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdpj {
    private static final Class<?> zzhft = zzhg("libcore.io.Memory");
    private static final boolean zzhfu;

    static {
        zzhfu = zzhg("org.robolectric.Robolectric") != null;
    }

    static boolean zzaxl() {
        return (zzhft == null || zzhfu) ? false : true;
    }

    static Class<?> zzaxm() {
        return zzhft;
    }

    private static <T> Class<T> zzhg(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
