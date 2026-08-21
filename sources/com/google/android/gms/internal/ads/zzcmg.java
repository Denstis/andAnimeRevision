package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class zzcmg implements zzbnb {
    private zzqx zzgcj;

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final synchronized void onAdFailedToLoad(int i2) {
        if (this.zzgcj != null) {
            try {
                this.zzgcj.onAppOpenAdFailedToLoad(i2);
            } catch (RemoteException e2) {
                zzaxi.zzd("Remote Exception at onAdFailedToLoad.", e2);
            }
        }
    }

    public final synchronized void zzb(zzqx zzqxVar) {
        this.zzgcj = zzqxVar;
    }
}
