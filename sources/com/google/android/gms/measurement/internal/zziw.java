package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zziw implements Runnable {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ zzij zzb;

    zziw(zzij zzijVar, zzm zzmVar) {
        this.zzb = zzijVar;
        this.zza = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar = this.zzb.zzb;
        if (zzeoVar == null) {
            this.zzb.zzr().zzf().zza("Failed to send measurementEnabled to service");
            return;
        }
        try {
            zzeoVar.zzb(this.zza);
            this.zzb.zzaj();
        } catch (RemoteException e2) {
            this.zzb.zzr().zzf().zza("Failed to send measurementEnabled to the service", e2);
        }
    }
}
