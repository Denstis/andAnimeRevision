package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzdr {
    private static final Class<?> zza = zza("libcore.io.Memory");
    private static final boolean zzb;

    static {
        zzb = zza("org.robolectric.Robolectric") != null;
    }

    private static <T> Class<T> zza(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean zza() {
        return (zza == null || zzb) ? false : true;
    }

    static Class<?> zzb() {
        return zza;
    }
}
