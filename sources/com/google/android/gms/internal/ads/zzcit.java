package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcit extends zzalw {
    private zzcgf<zzamd, zzchk> zzfxs;
    private final /* synthetic */ zzcir zzfyz;

    private zzcit(zzcir zzcirVar, zzcgf<zzamd, zzchk> zzcgfVar) {
        this.zzfyz = zzcirVar;
        this.zzfxs = zzcgfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzalx
    public final void zza(zzakm zzakmVar) {
        this.zzfyz.zzfyy = zzakmVar;
        ((zzchk) this.zzfxs.zzfxg).onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzalx
    public final void zzdg(String str) {
        ((zzchk) this.zzfxs.zzfxg).onAdFailedToLoad(0);
    }
}
