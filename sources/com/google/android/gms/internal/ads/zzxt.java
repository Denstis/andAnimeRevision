package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzxt implements Runnable {
    private final /* synthetic */ zzxq zzcfi;

    zzxt(zzxq zzxqVar) {
        this.zzcfi = zzxqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzcfi.zzblp != null) {
            try {
                this.zzcfi.zzblp.onAdFailedToLoad(1);
            } catch (RemoteException e2) {
                zzaxi.zzd("Could not notify onAdFailedToLoad event.", e2);
            }
        }
    }
}
