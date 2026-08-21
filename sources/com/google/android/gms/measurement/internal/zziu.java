package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zziu implements Runnable {
    private final /* synthetic */ zzan zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzn zzc;
    private final /* synthetic */ zzij zzd;

    zziu(zzij zzijVar, zzan zzanVar, String str, com.google.android.gms.internal.measurement.zzn zznVar) {
        this.zzd = zzijVar;
        this.zza = zzanVar;
        this.zzb = str;
        this.zzc = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        byte[] bArrZza = null;
        try {
            try {
                zzeo zzeoVar = this.zzd.zzb;
                if (zzeoVar == null) {
                    this.zzd.zzr().zzf().zza("Discarding data. Failed to send event to service to bundle");
                } else {
                    bArrZza = zzeoVar.zza(this.zza, this.zzb);
                    this.zzd.zzaj();
                }
            } catch (RemoteException e2) {
                this.zzd.zzr().zzf().zza("Failed to send event to the service to bundle", e2);
            }
        } finally {
            this.zzd.zzp().zza(this.zzc, bArrZza);
        }
    }
}
