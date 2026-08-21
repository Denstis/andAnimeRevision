package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class zzkh implements Callable<String> {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ zzke zzb;

    zzkh(zzke zzkeVar, zzm zzmVar) {
        this.zzb = zzkeVar;
        this.zza = zzmVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        zzg zzgVarZzc = this.zzb.zzc(this.zza);
        if (zzgVarZzc != null) {
            return zzgVarZzc.zzd();
        }
        this.zzb.zzr().zzi().zza("App info was null when attempting to get app instance id");
        return null;
    }
}
