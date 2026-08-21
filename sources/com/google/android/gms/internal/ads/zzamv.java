package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* JADX INFO: loaded from: classes.dex */
final class zzamv implements Runnable {
    private final /* synthetic */ zzamt zzdfe;
    private final /* synthetic */ AdOverlayInfoParcel zzdfm;

    zzamv(zzamt zzamtVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzdfe = zzamtVar;
        this.zzdfm = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzq.zzki();
        com.google.android.gms.ads.internal.overlay.zzn.zza(this.zzdfe.zzdff, this.zzdfm, true);
    }
}
