package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzgd implements Runnable {
    private final /* synthetic */ zzv zza;
    private final /* synthetic */ zzgb zzb;

    zzgd(zzgb zzgbVar, zzv zzvVar) {
        this.zzb = zzgbVar;
        this.zza = zzvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzo();
        if (this.zza.zzc.zza() == null) {
            this.zzb.zza.zzb(this.zza);
        } else {
            this.zzb.zza.zza(this.zza);
        }
    }
}
