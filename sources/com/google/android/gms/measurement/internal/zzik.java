package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzik implements Runnable {
    private final /* synthetic */ zzif zza;
    private final /* synthetic */ zzii zzb;

    zzik(zzii zziiVar, zzif zzifVar) {
        this.zzb = zziiVar;
        this.zza = zzifVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza(this.zza, false);
        zzii zziiVar = this.zzb;
        zziiVar.zza = null;
        zziiVar.zzh().zza((zzif) null);
    }
}
