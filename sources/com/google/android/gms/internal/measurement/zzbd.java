package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;

/* JADX INFO: loaded from: classes.dex */
final class zzbd extends zzx.zza {
    private final /* synthetic */ Activity zzc;
    private final /* synthetic */ zzx.zzd zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbd(zzx.zzd zzdVar, Activity activity) {
        super(zzx.this);
        this.zzd = zzdVar;
        this.zzc = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzx.this.zzr.onActivityResumed(ObjectWrapper.wrap(this.zzc), this.zzb);
    }
}
