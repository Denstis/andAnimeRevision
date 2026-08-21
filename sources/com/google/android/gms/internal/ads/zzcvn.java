package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;

/* JADX INFO: loaded from: classes.dex */
final class zzcvn extends AdMetadataListener {
    private final /* synthetic */ zzvo zzgiv;
    private final /* synthetic */ zzcvl zzgiw;

    zzcvn(zzcvl zzcvlVar, zzvo zzvoVar) {
        this.zzgiw = zzcvlVar;
        this.zzgiv = zzvoVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        if (this.zzgiw.zzgil != null) {
            try {
                this.zzgiv.onAdMetadataChanged();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }
}
