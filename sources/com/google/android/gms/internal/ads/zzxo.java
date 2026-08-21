package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzxo extends zzvc {
    final /* synthetic */ zzxm zzcff;

    private zzxo(zzxm zzxmVar) {
        this.zzcff = zzxmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zza(zztx zztxVar, int i2) {
        zzaxi.zzes("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzawy.zzzb.post(new zzxr(this));
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzb(zztx zztxVar) {
        zza(zztxVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final String zzju() {
        return null;
    }
}
