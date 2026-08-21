package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class zzaxv<T> implements zzddi<T> {
    private final zzddt<T> zzdws = zzddt.zzapl();

    private static boolean zzal(boolean z) {
        if (!z) {
            com.google.android.gms.ads.internal.zzq.zzkn().zzb(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzddi
    public void addListener(Runnable runnable, Executor executor) {
        this.zzdws.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.zzdws.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() {
        return this.zzdws.get();
    }

    @Override // java.util.concurrent.Future
    public T get(long j2, TimeUnit timeUnit) {
        return this.zzdws.get(j2, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.zzdws.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.zzdws.isDone();
    }

    public final boolean set(T t) {
        return zzal(this.zzdws.set(t));
    }

    public final boolean setException(Throwable th) {
        return zzal(this.zzdws.setException(th));
    }
}
