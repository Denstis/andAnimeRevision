package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;

/* JADX INFO: loaded from: classes.dex */
final class zzcvh extends AdMetadataListener {
    private final /* synthetic */ zzwm zzgiq;
    private final /* synthetic */ zzcvf zzgir;

    zzcvh(zzcvf zzcvfVar, zzwm zzwmVar) {
        this.zzgir = zzcvfVar;
        this.zzgiq = zzwmVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        if (this.zzgir.zzgil != null) {
            try {
                this.zzgiq.onAdMetadataChanged();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }
}
