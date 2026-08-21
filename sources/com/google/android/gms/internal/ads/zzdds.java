package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzdds<V> extends zzdcv<V> {
    private zzddi<V> zzgsc;
    private ScheduledFuture<?> zzgsd;

    private zzdds(zzddi<V> zzddiVar) {
        this.zzgsc = (zzddi) zzdaq.checkNotNull(zzddiVar);
    }

    static /* synthetic */ ScheduledFuture zza(zzdds zzddsVar, ScheduledFuture scheduledFuture) {
        zzddsVar.zzgsd = null;
        return null;
    }

    static <V> zzddi<V> zzb(zzddi<V> zzddiVar, long j2, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzdds zzddsVar = new zzdds(zzddiVar);
        zzddu zzdduVar = new zzddu(zzddsVar);
        zzddsVar.zzgsd = scheduledExecutorService.schedule(zzdduVar, j2, timeUnit);
        zzddiVar.addListener(zzdduVar, zzdcq.INSTANCE);
        return zzddsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    protected final void afterDone() {
        maybePropagateCancellationTo(this.zzgsc);
        ScheduledFuture<?> scheduledFuture = this.zzgsd;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zzgsc = null;
        this.zzgsd = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    protected final String pendingToString() {
        zzddi<V> zzddiVar = this.zzgsc;
        ScheduledFuture<?> scheduledFuture = this.zzgsd;
        if (zzddiVar == null) {
            return null;
        }
        String strValueOf = String.valueOf(zzddiVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 14);
        sb.append("inputFuture=[");
        sb.append(strValueOf);
        sb.append("]");
        String string = sb.toString();
        if (scheduledFuture == null) {
            return string;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return string;
        }
        String strValueOf2 = String.valueOf(string);
        StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 43);
        sb2.append(strValueOf2);
        sb2.append(", remaining delay=[");
        sb2.append(delay);
        sb2.append(" ms]");
        return sb2.toString();
    }
}
