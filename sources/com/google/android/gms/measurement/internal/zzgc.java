package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzgc implements Runnable {
    private final /* synthetic */ zzhc zza;
    private final /* synthetic */ zzga zzb;

    zzgc(zzga zzgaVar, zzhc zzhcVar) {
        this.zzb = zzgaVar;
        this.zza = zzhcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza(this.zza);
        this.zzb.zza();
    }
}
