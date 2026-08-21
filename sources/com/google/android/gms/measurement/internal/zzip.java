package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzip implements Runnable {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzn zzb;
    private final /* synthetic */ zzij zzc;

    zzip(zzij zzijVar, zzm zzmVar, com.google.android.gms.internal.measurement.zzn zznVar) {
        this.zzc = zzijVar;
        this.zza = zzmVar;
        this.zzb = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strZzc = null;
        try {
            try {
                zzeo zzeoVar = this.zzc.zzb;
                if (zzeoVar == null) {
                    this.zzc.zzr().zzf().zza("Failed to get app instance id");
                } else {
                    strZzc = zzeoVar.zzc(this.zza);
                    if (strZzc != null) {
                        this.zzc.zzf().zza(strZzc);
                        this.zzc.zzs().zzj.zza(strZzc);
                    }
                    this.zzc.zzaj();
                }
            } catch (RemoteException e2) {
                this.zzc.zzr().zzf().zza("Failed to get app instance id", e2);
            }
        } finally {
            this.zzc.zzp().zza(this.zzb, (String) null);
        }
    }
}
