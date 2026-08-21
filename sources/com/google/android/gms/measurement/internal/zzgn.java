package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class zzgn implements Callable<List<zzkn>> {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ zzgb zzb;

    zzgn(zzgb zzgbVar, zzm zzmVar) {
        this.zzb = zzgbVar;
        this.zza = zzmVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzkn> call() {
        this.zzb.zza.zzo();
        return this.zzb.zza.zze().zza(this.zza.zza);
    }
}
