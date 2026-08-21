package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class zzcmj implements zztp {
    private zzux zzgcn;

    @Override // com.google.android.gms.internal.ads.zztp
    public final synchronized void onAdClicked() {
        if (this.zzgcn != null) {
            try {
                this.zzgcn.onAdClicked();
            } catch (RemoteException e2) {
                zzaxi.zzd("Remote Exception at onAdClicked.", e2);
            }
        }
    }

    public final synchronized void zzb(zzux zzuxVar) {
        this.zzgcn = zzuxVar;
    }
}
