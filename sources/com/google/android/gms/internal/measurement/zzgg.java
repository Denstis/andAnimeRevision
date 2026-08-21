package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class zzgg<K, V> {
    static <K, V> int zza(zzgf<K, V> zzgfVar, K k2, V v) {
        return zzew.zza(zzgfVar.zza, 1, k2) + zzew.zza(zzgfVar.zzc, 2, v);
    }

    static <K, V> void zza(zzen zzenVar, zzgf<K, V> zzgfVar, K k2, V v) {
        zzew.zza(zzenVar, zzgfVar.zza, 1, k2);
        zzew.zza(zzenVar, zzgfVar.zzc, 2, v);
    }
}
