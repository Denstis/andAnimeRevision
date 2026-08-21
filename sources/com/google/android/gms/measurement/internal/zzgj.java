package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzgj implements Runnable {
    private final /* synthetic */ zzan zza;
    private final /* synthetic */ zzm zzb;
    private final /* synthetic */ zzgb zzc;

    zzgj(zzgb zzgbVar, zzan zzanVar, zzm zzmVar) {
        this.zzc = zzgbVar;
        this.zza = zzanVar;
        this.zzb = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzan zzanVarZzb = this.zzc.zzb(this.zza, this.zzb);
        this.zzc.zza.zzo();
        this.zzc.zza.zza(zzanVarZzb, this.zzb);
    }
}
