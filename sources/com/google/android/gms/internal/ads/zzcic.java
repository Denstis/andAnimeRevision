package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcic extends zzalv {
    private zzcgf<zzamd, zzchk> zzfxs;

    private zzcic(zzcib zzcibVar, zzcgf<zzamd, zzchk> zzcgfVar) {
        this.zzfxs = zzcgfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzals
    public final void zzdg(String str) {
        ((zzchk) this.zzfxs.zzfxg).onAdFailedToLoad(0);
    }

    @Override // com.google.android.gms.internal.ads.zzals
    public final void zzsf() {
        ((zzchk) this.zzfxs.zzfxg).onAdLoaded();
    }
}
