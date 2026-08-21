package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdtp extends zzdtn<zzdtq, zzdtq> {
    zzdtp() {
    }

    private static void zza(Object obj, zzdtq zzdtqVar) {
        ((zzdqw) obj).zzhkr = zzdtqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ void zza(zzdtq zzdtqVar, int i2, long j2) {
        zzdtqVar.zzc(i2 << 3, Long.valueOf(j2));
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ void zza(zzdtq zzdtqVar, int i2, zzdpm zzdpmVar) {
        zzdtqVar.zzc((i2 << 3) | 2, zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ void zza(zzdtq zzdtqVar, int i2, zzdtq zzdtqVar2) {
        zzdtqVar.zzc((i2 << 3) | 3, zzdtqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ void zza(zzdtq zzdtqVar, zzduk zzdukVar) {
        zzdtqVar.zzb(zzdukVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final boolean zza(zzdsw zzdswVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final void zzak(Object obj) {
        ((zzdqw) obj).zzhkr.zzaxj();
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ zzdtq zzaq(zzdtq zzdtqVar) {
        zzdtq zzdtqVar2 = zzdtqVar;
        zzdtqVar2.zzaxj();
        return zzdtqVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ int zzau(zzdtq zzdtqVar) {
        return zzdtqVar.zzazu();
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ zzdtq zzay(Object obj) {
        return ((zzdqw) obj).zzhkr;
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ zzdtq zzaz(Object obj) {
        zzdtq zzdtqVar = ((zzdqw) obj).zzhkr;
        if (zzdtqVar != zzdtq.zzbbx()) {
            return zzdtqVar;
        }
        zzdtq zzdtqVarZzbby = zzdtq.zzbby();
        zza(obj, zzdtqVarZzbby);
        return zzdtqVarZzbby;
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ void zzb(zzdtq zzdtqVar, int i2, long j2) {
        zzdtqVar.zzc((i2 << 3) | 1, Long.valueOf(j2));
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ int zzba(zzdtq zzdtqVar) {
        return zzdtqVar.zzbbz();
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ zzdtq zzbbw() {
        return zzdtq.zzbby();
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ void zzc(zzdtq zzdtqVar, int i2, int i3) {
        zzdtqVar.zzc((i2 << 3) | 5, Integer.valueOf(i3));
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ void zzc(zzdtq zzdtqVar, zzduk zzdukVar) {
        zzdtqVar.zza(zzdukVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ void zzh(Object obj, zzdtq zzdtqVar) {
        zza(obj, zzdtqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ void zzi(Object obj, zzdtq zzdtqVar) {
        zza(obj, zzdtqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtn
    final /* synthetic */ zzdtq zzj(zzdtq zzdtqVar, zzdtq zzdtqVar2) {
        zzdtq zzdtqVar3 = zzdtqVar;
        zzdtq zzdtqVar4 = zzdtqVar2;
        return zzdtqVar4.equals(zzdtq.zzbbx()) ? zzdtqVar3 : zzdtq.zza(zzdtqVar3, zzdtqVar4);
    }
}
