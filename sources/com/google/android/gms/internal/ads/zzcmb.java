package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzcmb extends zzvc {
    private final zzcmm zzgca;

    public zzcmb(Context context, zzbei zzbeiVar, zzcwg zzcwgVar, zzbuy zzbuyVar, zzuy zzuyVar) {
        zzcmo zzcmoVar = new zzcmo(zzbuyVar);
        zzcmoVar.zzc(zzuyVar);
        this.zzgca = new zzcmm(new zzcmu(zzbeiVar, context, zzcmoVar, zzcwgVar), zzcwgVar.zzand());
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final synchronized String getMediationAdapterClassName() {
        return this.zzgca.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final synchronized boolean isLoading() {
        return this.zzgca.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final synchronized void zza(zztx zztxVar, int i2) {
        this.zzgca.zza(zztxVar, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzb(zztx zztxVar) {
        this.zzgca.zzb(zztxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final synchronized String zzju() {
        return this.zzgca.zzju();
    }
}
