package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzin implements Runnable {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ zzij zzb;

    zzin(zzij zzijVar, zzm zzmVar) {
        this.zzb = zzijVar;
        this.zza = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar = this.zzb.zzb;
        if (zzeoVar == null) {
            this.zzb.zzr().zzf().zza("Failed to reset data on the service; null service");
            return;
        }
        try {
            zzeoVar.zzd(this.zza);
        } catch (RemoteException e2) {
            this.zzb.zzr().zzf().zza("Failed to reset data on the service", e2);
        }
        this.zzb.zzaj();
    }
}
