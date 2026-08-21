package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class zzfy {
    private static final zzfy zza;
    private static final zzfy zzb;

    static {
        zzfx zzfxVar = null;
        zza = new zzga();
        zzb = new zzfz();
    }

    private zzfy() {
    }

    static zzfy zza() {
        return zza;
    }

    static zzfy zzb() {
        return zzb;
    }

    abstract <L> List<L> zza(Object obj, long j2);

    abstract <L> void zza(Object obj, Object obj2, long j2);

    abstract void zzb(Object obj, long j2);
}
