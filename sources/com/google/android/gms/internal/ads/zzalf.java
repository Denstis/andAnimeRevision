package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzalf implements Runnable {
    private final /* synthetic */ zzala zzden;

    zzalf(zzala zzalaVar) {
        this.zzden = zzalaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzden.zzdea.onAdLoaded();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }
}
