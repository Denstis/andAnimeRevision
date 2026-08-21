package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class zzgg implements Callable<List<zzkn>> {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ zzgb zzd;

    zzgg(zzgb zzgbVar, zzm zzmVar, String str, String str2) {
        this.zzd = zzgbVar;
        this.zza = zzmVar;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzkn> call() {
        this.zzd.zza.zzo();
        return this.zzd.zza.zze().zza(this.zza.zza, this.zzb, this.zzc);
    }
}
