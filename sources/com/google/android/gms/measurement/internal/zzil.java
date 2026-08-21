package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzil implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzkl zzb;
    private final /* synthetic */ zzm zzc;
    private final /* synthetic */ zzij zzd;

    zzil(zzij zzijVar, boolean z, zzkl zzklVar, zzm zzmVar) {
        this.zzd = zzijVar;
        this.zza = z;
        this.zzb = zzklVar;
        this.zzc = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar = this.zzd.zzb;
        if (zzeoVar == null) {
            this.zzd.zzr().zzf().zza("Discarding data. Failed to set user attribute");
        } else {
            this.zzd.zza(zzeoVar, this.zza ? null : this.zzb, this.zzc);
            this.zzd.zzaj();
        }
    }
}
