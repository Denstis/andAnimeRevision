package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzgp implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ long zzd;
    private final /* synthetic */ zzgb zze;

    zzgp(zzgb zzgbVar, String str, String str2, String str3, long j2) {
        this.zze = zzgbVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.zza;
        if (str == null) {
            this.zze.zza.zzs().zzv().zza(this.zzb, (zzif) null);
        } else {
            this.zze.zza.zzs().zzv().zza(this.zzb, new zzif(this.zzc, str, this.zzd));
        }
    }
}
