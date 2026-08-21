package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;

/* JADX INFO: loaded from: classes.dex */
final class zzao extends zzx.zza {
    private final /* synthetic */ zzk zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzao(zzx zzxVar, zzk zzkVar) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        this.zzd.zzr.generateEventId(this.zzc);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    protected final void zzb() {
        this.zzc.zza((Bundle) null);
    }
}
