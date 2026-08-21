package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzfz extends zzfy {
    private zzfz() {
        super();
    }

    private static <E> zzfl<E> zzc(Object obj, long j2) {
        return (zzfl) zzib.zzf(obj, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    final <L> List<L> zza(Object obj, long j2) {
        zzfl zzflVarZzc = zzc(obj, j2);
        if (zzflVarZzc.zza()) {
            return zzflVarZzc;
        }
        int size = zzflVarZzc.size();
        zzfl zzflVarZza = zzflVarZzc.zza(size == 0 ? 10 : size << 1);
        zzib.zza(obj, j2, zzflVarZza);
        return zzflVarZza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.measurement.zzfl, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.measurement.zzfy
    final <E> void zza(Object obj, Object obj2, long j2) {
        zzfl zzflVarZzc = zzc(obj, j2);
        ?? Zzc = zzc(obj2, j2);
        int size = zzflVarZzc.size();
        int size2 = Zzc.size();
        ?? r0 = zzflVarZzc;
        r0 = zzflVarZzc;
        if (size > 0 && size2 > 0) {
            boolean zZza = zzflVarZzc.zza();
            ?? Zza = zzflVarZzc;
            if (!zZza) {
                Zza = zzflVarZzc.zza(size2 + size);
            }
            Zza.addAll(Zzc);
            r0 = Zza;
        }
        if (size > 0) {
            Zzc = r0;
        }
        zzib.zza(obj, j2, (Object) Zzc);
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    final void zzb(Object obj, long j2) {
        zzc(obj, j2).h_();
    }
}
