package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzhl implements Runnable {
    private final /* synthetic */ Bundle zza;
    private final /* synthetic */ zzhb zzb;

    zzhl(zzhb zzhbVar, Bundle bundle) {
        this.zzb = zzhbVar;
        this.zza = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzd(this.zza);
    }
}
