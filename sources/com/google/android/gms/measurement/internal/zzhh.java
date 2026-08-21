package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
final class zzhh implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzhb zzb;

    zzhh(zzhb zzhbVar, AtomicReference atomicReference) {
        this.zzb = zzhbVar;
        this.zza = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzh().zza(this.zza);
    }
}
