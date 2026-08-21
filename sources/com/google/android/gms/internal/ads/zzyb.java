package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzyb implements Runnable {
    private final /* synthetic */ zzxy zzcfn;

    zzyb(zzxy zzxyVar) {
        this.zzcfn = zzxyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzcfn.zzcfk != null) {
            try {
                this.zzcfn.zzcfk.onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e2) {
                zzaxi.zzd("Could not notify onRewardedVideoAdFailedToLoad event.", e2);
            }
        }
    }
}
