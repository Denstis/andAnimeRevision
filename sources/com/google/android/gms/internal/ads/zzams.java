package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzams implements com.google.android.gms.ads.internal.overlay.zzo {
    private final /* synthetic */ zzamt zzdfe;

    zzams(zzamt zzamtVar) {
        this.zzdfe = zzamtVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
        zzaxi.zzdv("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
        zzaxi.zzdv("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsi() {
        zzaxi.zzdv("AdMobCustomTabsAdapter overlay is closed.");
        this.zzdfe.zzdfg.onAdClosed(this.zzdfe);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsj() {
        zzaxi.zzdv("Opening AdMobCustomTabsAdapter overlay.");
        this.zzdfe.zzdfg.onAdOpened(this.zzdfe);
    }
}
