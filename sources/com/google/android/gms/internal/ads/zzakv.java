package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;

/* JADX INFO: loaded from: classes.dex */
final class zzakv implements InitializationCompleteCallback {
    private final /* synthetic */ zzaft zzdee;

    zzakv(zzakt zzaktVar, zzaft zzaftVar) {
        this.zzdee = zzaftVar;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.zzdee.onInitializationFailed(str);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.zzdee.onInitializationSucceeded();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }
}
