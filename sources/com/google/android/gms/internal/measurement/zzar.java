package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;

/* JADX INFO: loaded from: classes.dex */
final class zzar extends zzx.zza {
    private final /* synthetic */ Bundle zzc;
    private final /* synthetic */ zzk zzd;
    private final /* synthetic */ zzx zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzar(zzx zzxVar, Bundle bundle, zzk zzkVar) {
        super(zzxVar);
        this.zze = zzxVar;
        this.zzc = bundle;
        this.zzd = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        this.zze.zzr.performAction(this.zzc, this.zzd, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    protected final void zzb() {
        this.zzd.zza((Bundle) null);
    }
}
