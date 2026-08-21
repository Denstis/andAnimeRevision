package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzjg implements Runnable {
    private final /* synthetic */ zzeo zza;
    private final /* synthetic */ zzjb zzb;

    zzjg(zzjb zzjbVar, zzeo zzeoVar) {
        this.zzb = zzjbVar;
        this.zza = zzeoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb) {
            zzjb.zza(this.zzb, false);
            if (!this.zzb.zza.zzab()) {
                this.zzb.zza.zzr().zzw().zza("Connected to remote service");
                this.zzb.zza.zza(this.zza);
            }
        }
    }
}
