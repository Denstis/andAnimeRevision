package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;

/* JADX INFO: loaded from: classes.dex */
final class zzai extends zzx.zza {
    private final /* synthetic */ long zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzai(zzx zzxVar, long j2) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = j2;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        this.zzd.zzr.setSessionTimeoutDuration(this.zzc);
    }
}
