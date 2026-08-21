package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzgs implements Runnable {
    private final /* synthetic */ zzv zza;
    private final /* synthetic */ zzm zzb;
    private final /* synthetic */ zzgb zzc;

    zzgs(zzgb zzgbVar, zzv zzvVar, zzm zzmVar) {
        this.zzc = zzgbVar;
        this.zza = zzvVar;
        this.zzb = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzo();
        if (this.zza.zzc.zza() == null) {
            this.zzc.zza.zzb(this.zza, this.zzb);
        } else {
            this.zzc.zza.zza(this.zza, this.zzb);
        }
    }
}
