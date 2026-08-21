package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzjz extends zzaf {
    private final /* synthetic */ zzke zza;
    private final /* synthetic */ zzka zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzjz(zzka zzkaVar, zzgt zzgtVar, zzke zzkeVar) {
        super(zzgtVar);
        this.zzb = zzkaVar;
        this.zza = zzkeVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaf
    public final void zza() {
        this.zzb.zzf();
        this.zzb.zzr().zzx().zza("Starting upload from DelayedRunnable");
        this.zza.zzl();
    }
}
