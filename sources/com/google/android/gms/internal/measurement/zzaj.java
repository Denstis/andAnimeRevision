package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;

/* JADX INFO: loaded from: classes.dex */
final class zzaj extends zzx.zza {
    private final /* synthetic */ com.google.android.gms.measurement.internal.zzha zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzaj(zzx zzxVar, com.google.android.gms.measurement.internal.zzha zzhaVar) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = zzhaVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        this.zzd.zzr.setEventInterceptor(new zzx.zzc(this.zzc));
    }
}
