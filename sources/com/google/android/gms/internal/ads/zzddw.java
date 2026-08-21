package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: loaded from: classes.dex */
final class zzddw<V> extends zzdcv<V> implements RunnableFuture<V> {
    private volatile zzddh<?> zzgsf;

    private zzddw(Callable<V> callable) {
        this.zzgsf = new zzddz(this, callable);
    }

    static <V> zzddw<V> zza(Runnable runnable, V v) {
        return new zzddw<>(Executors.callable(runnable, v));
    }

    static <V> zzddw<V> zze(Callable<V> callable) {
        return new zzddw<>(callable);
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    protected final void afterDone() {
        zzddh<?> zzddhVar;
        super.afterDone();
        if (wasInterrupted() && (zzddhVar = this.zzgsf) != null) {
            zzddhVar.interruptTask();
        }
        this.zzgsf = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    protected final String pendingToString() {
        zzddh<?> zzddhVar = this.zzgsf;
        if (zzddhVar == null) {
            return super.pendingToString();
        }
        String strValueOf = String.valueOf(zzddhVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 7);
        sb.append("task=[");
        sb.append(strValueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzddh<?> zzddhVar = this.zzgsf;
        if (zzddhVar != null) {
            zzddhVar.run();
        }
        this.zzgsf = null;
    }
}
