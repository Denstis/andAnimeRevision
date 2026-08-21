package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzxr implements Runnable {
    private final /* synthetic */ zzxo zzcfg;

    zzxr(zzxo zzxoVar) {
        this.zzcfg = zzxoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzcfg.zzcff.zzblp != null) {
            try {
                this.zzcfg.zzcff.zzblp.onAdFailedToLoad(1);
            } catch (RemoteException e2) {
                zzaxi.zzd("Could not notify onAdFailedToLoad event.", e2);
            }
        }
    }
}
