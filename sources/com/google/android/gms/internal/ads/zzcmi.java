package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class zzcmi implements zzbna, zzbnb, zzbnj, zzbog, zztp {
    private zzuy zzgcm;

    @Override // com.google.android.gms.internal.ads.zztp
    public final synchronized void onAdClicked() {
        if (this.zzgcm != null) {
            try {
                this.zzgcm.onAdClicked();
            } catch (RemoteException e2) {
                zzaxi.zzd("Remote Exception at onAdClicked.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final synchronized void onAdClosed() {
        if (this.zzgcm != null) {
            try {
                this.zzgcm.onAdClosed();
            } catch (RemoteException e2) {
                zzaxi.zzd("Remote Exception at onAdClosed.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final synchronized void onAdFailedToLoad(int i2) {
        if (this.zzgcm != null) {
            try {
                this.zzgcm.onAdFailedToLoad(i2);
            } catch (RemoteException e2) {
                zzaxi.zzd("Remote Exception at onAdFailedToLoad.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnj
    public final synchronized void onAdImpression() {
        if (this.zzgcm != null) {
            try {
                this.zzgcm.onAdImpression();
            } catch (RemoteException e2) {
                zzaxi.zzd("Remote Exception at onAdImpression.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final synchronized void onAdLeftApplication() {
        if (this.zzgcm != null) {
            try {
                this.zzgcm.onAdLeftApplication();
            } catch (RemoteException e2) {
                zzaxi.zzd("Remote Exception at onAdLeftApplication.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbog
    public final synchronized void onAdLoaded() {
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final synchronized void onAdOpened() {
        if (this.zzgcm != null) {
            try {
                this.zzgcm.onAdOpened();
            } catch (RemoteException e2) {
                zzaxi.zzd("Remote Exception at onAdOpened.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final void onRewardedVideoStarted() {
    }

    public final synchronized zzuy zzalh() {
        return this.zzgcm;
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final void zzb(zzapy zzapyVar, String str, String str2) {
    }

    public final synchronized void zzc(zzuy zzuyVar) {
        this.zzgcm = zzuyVar;
    }
}
