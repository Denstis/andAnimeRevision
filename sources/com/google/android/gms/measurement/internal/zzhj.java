package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzhj implements Runnable {
    private final /* synthetic */ zzha zza;
    private final /* synthetic */ zzhb zzb;

    zzhj(zzhb zzhbVar, zzha zzhaVar) {
        this.zzb = zzhbVar;
        this.zza = zzhaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza(this.zza);
    }
}
