package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzall implements Runnable {
    private final /* synthetic */ zzala zzden;

    zzall(zzala zzalaVar) {
        this.zzden = zzalaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzden.zzdea.onAdClosed();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }
}
