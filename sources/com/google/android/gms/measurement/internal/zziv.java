package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
final class zziv implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ boolean zzb;
    private final /* synthetic */ zzan zzc;
    private final /* synthetic */ zzm zzd;
    private final /* synthetic */ String zze;
    private final /* synthetic */ zzij zzf;

    zziv(zzij zzijVar, boolean z, boolean z2, zzan zzanVar, zzm zzmVar, String str) {
        this.zzf = zzijVar;
        this.zza = z;
        this.zzb = z2;
        this.zzc = zzanVar;
        this.zzd = zzmVar;
        this.zze = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar = this.zzf.zzb;
        if (zzeoVar == null) {
            this.zzf.zzr().zzf().zza("Discarding data. Failed to send event to service");
            return;
        }
        if (this.zza) {
            this.zzf.zza(zzeoVar, this.zzb ? null : this.zzc, this.zzd);
        } else {
            try {
                if (TextUtils.isEmpty(this.zze)) {
                    zzeoVar.zza(this.zzc, this.zzd);
                } else {
                    zzeoVar.zza(this.zzc, this.zze, this.zzf.zzr().zzy());
                }
            } catch (RemoteException e2) {
                this.zzf.zzr().zzf().zza("Failed to send event to the service", e2);
            }
        }
        this.zzf.zzaj();
    }
}
