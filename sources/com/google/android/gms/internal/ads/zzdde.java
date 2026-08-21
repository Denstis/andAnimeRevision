package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdby;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdde<V> implements zzddi<V> {
    private static final Logger zzgqc = Logger.getLogger(zzdde.class.getName());

    static class zza<V> extends zzdde<V> {
        static final zza<Object> zzgrp = new zza<>(null);
        private final V value;

        zza(V v) {
            this.value = v;
        }

        @Override // com.google.android.gms.internal.ads.zzdde, java.util.concurrent.Future
        public final V get() {
            return this.value;
        }

        public final String toString() {
            String string = super.toString();
            String strValueOf = String.valueOf(this.value);
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 27 + String.valueOf(strValueOf).length());
            sb.append(string);
            sb.append("[status=SUCCESS, result=[");
            sb.append(strValueOf);
            sb.append("]]");
            return sb.toString();
        }
    }

    static final class zzb<V> extends zzdby.zzj<V> {
        zzb(Throwable th) {
            setException(th);
        }
    }

    zzdde() {
    }

    @Override // com.google.android.gms.internal.ads.zzddi
    public void addListener(Runnable runnable, Executor executor) {
        zzdaq.checkNotNull(runnable, "Runnable was null.");
        zzdaq.checkNotNull(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = zzgqc;
            Level level = Level.SEVERE;
            String strValueOf = String.valueOf(runnable);
            String strValueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 57 + String.valueOf(strValueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(strValueOf);
            sb.append(" with executor ");
            sb.append(strValueOf2);
            logger.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", sb.toString(), (Throwable) e2);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public abstract V get();

    @Override // java.util.concurrent.Future
    public V get(long j2, TimeUnit timeUnit) {
        zzdaq.checkNotNull(timeUnit);
        return get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }
}
