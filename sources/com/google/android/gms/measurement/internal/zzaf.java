package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
abstract class zzaf {
    private static volatile Handler zzb;
    private final zzgt zza;
    private final Runnable zzc;
    private volatile long zzd;

    zzaf(zzgt zzgtVar) {
        Preconditions.checkNotNull(zzgtVar);
        this.zza = zzgtVar;
        this.zzc = new zzai(this, zzgtVar);
    }

    static /* synthetic */ long zza(zzaf zzafVar, long j2) {
        zzafVar.zzd = 0L;
        return 0L;
    }

    private final Handler zzd() {
        Handler handler;
        if (zzb != null) {
            return zzb;
        }
        synchronized (zzaf.class) {
            if (zzb == null) {
                zzb = new com.google.android.gms.internal.measurement.zzj(this.zza.zzn().getMainLooper());
            }
            handler = zzb;
        }
        return handler;
    }

    public abstract void zza();

    public final void zza(long j2) {
        zzc();
        if (j2 >= 0) {
            this.zzd = this.zza.zzm().currentTimeMillis();
            if (zzd().postDelayed(this.zzc, j2)) {
                return;
            }
            this.zza.zzr().zzf().zza("Failed to schedule delayed post. time", Long.valueOf(j2));
        }
    }

    public final boolean zzb() {
        return this.zzd != 0;
    }

    final void zzc() {
        this.zzd = 0L;
        zzd().removeCallbacks(this.zzc);
    }
}
