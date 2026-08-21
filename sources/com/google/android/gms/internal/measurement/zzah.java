package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;

/* JADX INFO: loaded from: classes.dex */
final class zzah extends zzx.zza {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzah(zzx zzxVar, String str) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        this.zzd.zzr.beginAdUnitExposure(this.zzc, this.zzb);
    }
}
