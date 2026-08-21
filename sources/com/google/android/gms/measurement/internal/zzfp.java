package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzfp implements Runnable {
    private final /* synthetic */ zzga zza;
    private final /* synthetic */ zzew zzb;

    zzfp(zzfq zzfqVar, zzga zzgaVar, zzew zzewVar) {
        this.zza = zzgaVar;
        this.zzb = zzewVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zza.zzf() == null) {
            this.zzb.zzf().zza("Install Referrer Reporter is null");
            return;
        }
        zzfl zzflVarZzf = this.zza.zzf();
        zzflVarZzf.zza.zzad();
        zzflVarZzf.zza(zzflVarZzf.zza.zzn().getPackageName());
    }
}
