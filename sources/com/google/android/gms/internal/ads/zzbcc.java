package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbcc implements com.google.android.gms.ads.internal.overlay.zzo {
    private com.google.android.gms.ads.internal.overlay.zzo zzdhy;
    private zzbbw zzeff;

    public zzbcc(zzbbw zzbbwVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar) {
        this.zzeff = zzbbwVar;
        this.zzdhy = zzoVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsi() {
        this.zzdhy.zzsi();
        this.zzeff.zzzi();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsj() {
        this.zzdhy.zzsj();
        this.zzeff.zzsu();
    }
}
