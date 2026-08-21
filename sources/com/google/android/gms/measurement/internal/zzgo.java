package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzgo implements Runnable {
    private final /* synthetic */ zzkl zza;
    private final /* synthetic */ zzm zzb;
    private final /* synthetic */ zzgb zzc;

    zzgo(zzgb zzgbVar, zzkl zzklVar, zzm zzmVar) {
        this.zzc = zzgbVar;
        this.zza = zzklVar;
        this.zzb = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzo();
        if (this.zza.zza() == null) {
            this.zzc.zza.zzb(this.zza, this.zzb);
        } else {
            this.zzc.zza.zza(this.zza, this.zzb);
        }
    }
}
