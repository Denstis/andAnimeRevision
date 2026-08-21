package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;

/* JADX INFO: loaded from: classes.dex */
final class zzamp implements SignalCallbacks {
    private final /* synthetic */ zzame zzdfc;

    zzamp(zzami zzamiVar, zzame zzameVar) {
        this.zzdfc = zzameVar;
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onFailure(String str) {
        try {
            this.zzdfc.onFailure(str);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String str) {
        try {
            this.zzdfc.zzdi(str);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }
}
