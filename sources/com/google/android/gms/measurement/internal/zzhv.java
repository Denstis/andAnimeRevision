package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzhv implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzhb zzb;

    zzhv(zzhb zzhbVar, long j2) {
        this.zzb = zzhbVar;
        this.zza = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzs().zzl.zza(this.zza);
        this.zzb.zzr().zzw().zza("Session timeout duration set", Long.valueOf(this.zza));
    }
}
