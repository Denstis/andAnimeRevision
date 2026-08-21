package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzir implements Runnable {
    private final /* synthetic */ zzif zza;
    private final /* synthetic */ zzij zzb;

    zzir(zzij zzijVar, zzif zzifVar) {
        this.zzb = zzijVar;
        this.zza = zzifVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j2;
        String str;
        String str2;
        String packageName;
        zzeo zzeoVar = this.zzb.zzb;
        if (zzeoVar == null) {
            this.zzb.zzr().zzf().zza("Failed to send current screen to service");
            return;
        }
        try {
            if (this.zza == null) {
                j2 = 0;
                str = null;
                str2 = null;
                packageName = this.zzb.zzn().getPackageName();
            } else {
                j2 = this.zza.zzc;
                str = this.zza.zza;
                str2 = this.zza.zzb;
                packageName = this.zzb.zzn().getPackageName();
            }
            zzeoVar.zza(j2, str, str2, packageName);
            this.zzb.zzaj();
        } catch (RemoteException e2) {
            this.zzb.zzr().zzf().zza("Failed to send current screen to the service", e2);
        }
    }
}
