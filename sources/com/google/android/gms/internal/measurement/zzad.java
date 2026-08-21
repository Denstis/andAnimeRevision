package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;

/* JADX INFO: loaded from: classes.dex */
final class zzad extends zzx.zza {
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzad(zzx zzxVar, boolean z) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        this.zzd.zzr.setMeasurementEnabled(this.zzc, this.zza);
    }
}
