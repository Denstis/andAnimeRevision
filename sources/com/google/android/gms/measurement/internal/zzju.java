package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzju implements Runnable {
    long zza;
    final /* synthetic */ zzjp zzb;

    zzju(zzjp zzjpVar, long j2) {
        this.zzb = zzjpVar;
        this.zza = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzq().zza(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.zzjt
            private final zzju zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzju zzjuVar = this.zza;
                zzjp zzjpVar = zzjuVar.zzb;
                long j2 = zzjuVar.zza;
                zzjpVar.zza.zzd();
                zzjpVar.zza.zzr().zzw().zza("Application going to the background");
                zzjpVar.zza.zzf().zza("auto", "_ab", j2, new Bundle());
            }
        });
    }
}
