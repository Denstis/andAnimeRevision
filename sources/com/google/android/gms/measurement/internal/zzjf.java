package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class zzjf implements Runnable {
    private final /* synthetic */ zzjb zza;

    zzjf(zzjb zzjbVar) {
        this.zza = zzjbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzij zzijVar = this.zza.zza;
        Context contextZzn = zzijVar.zzn();
        this.zza.zza.zzu();
        zzijVar.zza(new ComponentName(contextZzn, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
