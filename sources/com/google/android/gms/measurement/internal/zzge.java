package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
final class zzge implements Runnable {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ zzgb zzb;

    zzge(zzgb zzgbVar, zzm zzmVar) {
        this.zzb = zzgbVar;
        this.zza = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzo();
        zzke zzkeVar = this.zzb.zza;
        zzm zzmVar = this.zza;
        zzkeVar.zzq().zzd();
        zzkeVar.zzk();
        Preconditions.checkNotEmpty(zzmVar.zza);
        zzkeVar.zzc(zzmVar);
    }
}
