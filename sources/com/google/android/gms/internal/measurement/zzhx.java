package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzhx extends zzhv<zzhy, zzhy> {
    zzhx() {
    }

    /* JADX INFO: renamed from: zza, reason: avoid collision after fix types in other method */
    private static void zza2(Object obj, zzhy zzhyVar) {
        ((zzfd) obj).zzb = zzhyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ zzhy zza() {
        return zzhy.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ zzhy zza(zzhy zzhyVar) {
        zzhy zzhyVar2 = zzhyVar;
        zzhyVar2.zzc();
        return zzhyVar2;
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zza(zzhy zzhyVar, int i2, int i3) {
        zzhyVar.zza((i2 << 3) | 5, Integer.valueOf(i3));
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zza(zzhy zzhyVar, int i2, long j2) {
        zzhyVar.zza(i2 << 3, Long.valueOf(j2));
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zza(zzhy zzhyVar, int i2, zzdu zzduVar) {
        zzhyVar.zza((i2 << 3) | 2, zzduVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zza(zzhy zzhyVar, int i2, zzhy zzhyVar2) {
        zzhyVar.zza((i2 << 3) | 3, zzhyVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zza(zzhy zzhyVar, zzis zzisVar) {
        zzhyVar.zzb(zzisVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* bridge */ /* synthetic */ void zza(Object obj, zzhy zzhyVar) {
        zza2(obj, zzhyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final boolean zza(zzhe zzheVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ zzhy zzb(Object obj) {
        return ((zzfd) obj).zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zzb(zzhy zzhyVar, int i2, long j2) {
        zzhyVar.zza((i2 << 3) | 1, Long.valueOf(j2));
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zzb(zzhy zzhyVar, zzis zzisVar) {
        zzhyVar.zza(zzisVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zzb(Object obj, zzhy zzhyVar) {
        zza2(obj, zzhyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ zzhy zzc(Object obj) {
        zzhy zzhyVar = ((zzfd) obj).zzb;
        if (zzhyVar != zzhy.zza()) {
            return zzhyVar;
        }
        zzhy zzhyVarZzb = zzhy.zzb();
        zza2(obj, zzhyVarZzb);
        return zzhyVarZzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ zzhy zzc(zzhy zzhyVar, zzhy zzhyVar2) {
        zzhy zzhyVar3 = zzhyVar;
        zzhy zzhyVar4 = zzhyVar2;
        return zzhyVar4.equals(zzhy.zza()) ? zzhyVar3 : zzhy.zza(zzhyVar3, zzhyVar4);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final void zzd(Object obj) {
        ((zzfd) obj).zzb.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ int zze(zzhy zzhyVar) {
        return zzhyVar.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ int zzf(zzhy zzhyVar) {
        return zzhyVar.zze();
    }
}
