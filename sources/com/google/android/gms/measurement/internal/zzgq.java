package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzgq implements Runnable {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ zzgb zzb;

    zzgq(zzgb zzgbVar, zzm zzmVar) {
        this.zzb = zzgbVar;
        this.zza = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzo();
        this.zzb.zza.zzb(this.zza);
    }
}
