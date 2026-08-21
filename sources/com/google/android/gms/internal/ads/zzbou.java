package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzbou extends zzbpm<zzboy> {
    private final Clock zzbmp;
    private boolean zzfcd;
    private final ScheduledExecutorService zzfcx;
    private long zzfcz;
    private long zzfda;
    private ScheduledFuture<?> zzfhe;

    public zzbou(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        super(Collections.emptySet());
        this.zzfcz = -1L;
        this.zzfda = -1L;
        this.zzfcd = false;
        this.zzfcx = scheduledExecutorService;
        this.zzbmp = clock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzagb() {
        zza(zzbot.zzfgz);
    }

    private final synchronized void zzex(long j2) {
        if (this.zzfhe != null && !this.zzfhe.isDone()) {
            this.zzfhe.cancel(true);
        }
        this.zzfcz = this.zzbmp.elapsedRealtime() + j2;
        this.zzfhe = this.zzfcx.schedule(new zzbov(this), j2, TimeUnit.MILLISECONDS);
    }

    public final synchronized void onPause() {
        if (!this.zzfcd) {
            if (this.zzfhe == null || this.zzfhe.isCancelled()) {
                this.zzfda = -1L;
            } else {
                this.zzfhe.cancel(true);
                this.zzfda = this.zzfcz - this.zzbmp.elapsedRealtime();
            }
            this.zzfcd = true;
        }
    }

    public final synchronized void onResume() {
        if (this.zzfcd) {
            if (this.zzfda > 0 && this.zzfhe.isCancelled()) {
                zzex(this.zzfda);
            }
            this.zzfcd = false;
        }
    }

    public final synchronized void zzaga() {
        this.zzfcd = false;
        zzex(0L);
    }

    public final synchronized void zzdd(int i2) {
        if (i2 <= 0) {
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(i2);
        if (!this.zzfcd) {
            if (this.zzbmp.elapsedRealtime() > this.zzfcz || this.zzfcz - this.zzbmp.elapsedRealtime() > millis) {
                zzex(millis);
            }
        } else {
            if (this.zzfda <= 0 || millis >= this.zzfda) {
                millis = this.zzfda;
            }
            this.zzfda = millis;
        }
    }
}
