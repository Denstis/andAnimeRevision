package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdrq {
    private static final zzdrq zzhml;
    private static final zzdrq zzhmm;

    static {
        zzdrp zzdrpVar = null;
        zzhml = new zzdrs();
        zzhmm = new zzdrr();
    }

    private zzdrq() {
    }

    static zzdrq zzbap() {
        return zzhml;
    }

    static zzdrq zzbaq() {
        return zzhmm;
    }

    abstract <L> List<L> zza(Object obj, long j2);

    abstract <L> void zza(Object obj, Object obj2, long j2);

    abstract void zzb(Object obj, long j2);
}
