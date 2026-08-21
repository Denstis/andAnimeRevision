package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzbib implements zzqa {
    private final Clock zzbmp;
    private final ScheduledExecutorService zzfcx;
    private ScheduledFuture<?> zzfcy;
    private long zzfcz = -1;
    private long zzfda = -1;
    private Runnable zzdry = null;
    private boolean zzfdb = false;

    public zzbib(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        this.zzfcx = scheduledExecutorService;
        this.zzbmp = clock;
        com.google.android.gms.ads.internal.zzq.zzkm().zza(this);
    }

    @VisibleForTesting
    private final synchronized void zzaem() {
        if (!this.zzfdb) {
            if (this.zzfcy == null || this.zzfcy.isDone()) {
                this.zzfda = -1L;
            } else {
                this.zzfcy.cancel(true);
                this.zzfda = this.zzfcz - this.zzbmp.elapsedRealtime();
            }
            this.zzfdb = true;
        }
    }

    @VisibleForTesting
    private final synchronized void zzaen() {
        if (this.zzfdb) {
            if (this.zzfda > 0 && this.zzfcy != null && this.zzfcy.isCancelled()) {
                this.zzfcy = this.zzfcx.schedule(this.zzdry, this.zzfda, TimeUnit.MILLISECONDS);
            }
            this.zzfdb = false;
        }
    }

    public final synchronized void zza(int i2, Runnable runnable) {
        this.zzdry = runnable;
        long j2 = i2;
        this.zzfcz = this.zzbmp.elapsedRealtime() + j2;
        this.zzfcy = this.zzfcx.schedule(runnable, j2, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.zzqa
    public final void zzo(boolean z) {
        if (z) {
            zzaen();
        } else {
            zzaem();
        }
    }
}
