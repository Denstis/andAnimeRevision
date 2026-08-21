package com.google.android.gms.internal.ads;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzddr<V> extends zzdcw<V> implements zzddi<V>, ScheduledFuture<V> {
    private final ScheduledFuture<?> zzgsb;

    public zzddr(zzddi<V> zzddiVar, ScheduledFuture<?> scheduledFuture) {
        super(zzddiVar);
        this.zzgsb = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzdcu, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean zCancel = super.cancel(z);
        if (zCancel) {
            this.zzgsb.cancel(z);
        }
        return zCancel;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Delayed delayed) {
        return this.zzgsb.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.zzgsb.getDelay(timeUnit);
    }
}
