package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzkd implements Runnable {
    private final /* synthetic */ zzkj zza;
    private final /* synthetic */ zzke zzb;

    zzkd(zzke zzkeVar, zzkj zzkjVar) {
        this.zzb = zzkeVar;
        this.zza = zzkjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza(this.zza);
        this.zzb.zza();
    }
}
