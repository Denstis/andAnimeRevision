package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzjn implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzjo zzb;

    zzjn(zzjo zzjoVar, long j2) {
        this.zzb = zzjoVar;
        this.zza = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza(this.zza);
    }
}
