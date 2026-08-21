package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzhu implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzhb zzb;

    zzhu(zzhb zzhbVar, boolean z) {
        this.zzb = zzhbVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzd(this.zza);
    }
}
