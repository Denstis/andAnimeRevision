package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzji implements Runnable {
    private final /* synthetic */ zzjb zza;

    zzji(zzjb zzjbVar) {
        this.zza = zzjbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzij.zza(this.zza.zza, (zzeo) null);
        this.zza.zza.zzal();
    }
}
