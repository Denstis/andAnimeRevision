package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzai implements Runnable {
    private final /* synthetic */ zzgt zza;
    private final /* synthetic */ zzaf zzb;

    zzai(zzaf zzafVar, zzgt zzgtVar) {
        this.zzb = zzafVar;
        this.zza = zzgtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzu();
        if (zzw.zza()) {
            this.zza.zzq().zza(this);
            return;
        }
        boolean zZzb = this.zzb.zzb();
        zzaf.zza(this.zzb, 0L);
        if (zZzb) {
            this.zzb.zza();
        }
    }
}
