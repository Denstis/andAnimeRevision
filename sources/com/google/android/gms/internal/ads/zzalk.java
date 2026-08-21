package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;

/* JADX INFO: loaded from: classes.dex */
final class zzalk implements Runnable {
    private final /* synthetic */ zzala zzden;
    private final /* synthetic */ AdRequest.ErrorCode zzdeo;

    zzalk(zzala zzalaVar, AdRequest.ErrorCode errorCode) {
        this.zzden = zzalaVar;
        this.zzdeo = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzden.zzdea.onAdFailedToLoad(zzalm.zza(this.zzdeo));
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }
}
