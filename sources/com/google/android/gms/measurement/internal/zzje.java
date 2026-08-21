package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzje implements Runnable {
    private final /* synthetic */ zzeo zza;
    private final /* synthetic */ zzjb zzb;

    zzje(zzjb zzjbVar, zzeo zzeoVar) {
        this.zzb = zzjbVar;
        this.zza = zzeoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb) {
            zzjb.zza(this.zzb, false);
            if (!this.zzb.zza.zzab()) {
                this.zzb.zza.zzr().zzx().zza("Connected to service");
                this.zzb.zza.zza(this.zza);
            }
        }
    }
}
