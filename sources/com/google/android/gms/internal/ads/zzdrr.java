package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzdrr extends zzdrq {
    private zzdrr() {
        super();
    }

    private static <E> zzdrd<E> zzc(Object obj, long j2) {
        return (zzdrd) zzdtt.zzp(obj, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzdrq
    final <L> List<L> zza(Object obj, long j2) {
        zzdrd zzdrdVarZzc = zzc(obj, j2);
        if (zzdrdVarZzc.zzaxi()) {
            return zzdrdVarZzc;
        }
        int size = zzdrdVarZzc.size();
        zzdrd zzdrdVarZzfl = zzdrdVarZzc.zzfl(size == 0 ? 10 : size << 1);
        zzdtt.zza(obj, j2, zzdrdVarZzfl);
        return zzdrdVarZzfl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.ads.zzdrd, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.ads.zzdrq
    final <E> void zza(Object obj, Object obj2, long j2) {
        zzdrd zzdrdVarZzc = zzc(obj, j2);
        ?? Zzc = zzc(obj2, j2);
        int size = zzdrdVarZzc.size();
        int size2 = Zzc.size();
        ?? r0 = zzdrdVarZzc;
        r0 = zzdrdVarZzc;
        if (size > 0 && size2 > 0) {
            boolean zZzaxi = zzdrdVarZzc.zzaxi();
            ?? Zzfl = zzdrdVarZzc;
            if (!zZzaxi) {
                Zzfl = zzdrdVarZzc.zzfl(size2 + size);
            }
            Zzfl.addAll(Zzc);
            r0 = Zzfl;
        }
        if (size > 0) {
            Zzc = r0;
        }
        zzdtt.zza(obj, j2, (Object) Zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzdrq
    final void zzb(Object obj, long j2) {
        zzc(obj, j2).zzaxj();
    }
}
