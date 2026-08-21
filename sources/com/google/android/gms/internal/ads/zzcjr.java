package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcjr extends zzamb {
    private zzcgf<zzamd, zzchk> zzfxs;

    private zzcjr(zzcjm zzcjmVar, zzcgf<zzamd, zzchk> zzcgfVar) {
        this.zzfxs = zzcgfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaly
    public final void zzdg(String str) {
        ((zzchk) this.zzfxs.zzfxg).onAdFailedToLoad(0);
    }

    @Override // com.google.android.gms.internal.ads.zzaly
    public final void zzsf() {
        ((zzchk) this.zzfxs.zzfxg).onAdLoaded();
    }
}
