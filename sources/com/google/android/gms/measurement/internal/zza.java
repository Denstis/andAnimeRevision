package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zza implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ zzb zzc;

    zza(zzb zzbVar, String str, long j2) {
        this.zzc = zzbVar;
        this.zza = str;
        this.zzb = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzc(this.zza, this.zzb);
    }
}
