package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzjc implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzm zzd;
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzn zze;
    private final /* synthetic */ zzij zzf;

    zzjc(zzij zzijVar, String str, String str2, boolean z, zzm zzmVar, com.google.android.gms.internal.measurement.zzn zznVar) {
        this.zzf = zzijVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = z;
        this.zzd = zzmVar;
        this.zze = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle = new Bundle();
        try {
            try {
                zzeo zzeoVar = this.zzf.zzb;
                if (zzeoVar == null) {
                    this.zzf.zzr().zzf().zza("Failed to get user properties", this.zza, this.zzb);
                } else {
                    bundle = zzkm.zza(zzeoVar.zza(this.zza, this.zzb, this.zzc, this.zzd));
                    this.zzf.zzaj();
                }
            } catch (RemoteException e2) {
                this.zzf.zzr().zzf().zza("Failed to get user properties", this.zza, e2);
            }
        } finally {
            this.zzf.zzp().zza(this.zze, bundle);
        }
    }
}
