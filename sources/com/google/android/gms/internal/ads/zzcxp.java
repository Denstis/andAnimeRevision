package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzcxp<E, V> implements zzddi<V> {
    private final E zzgll;
    private final String zzglm;
    private final zzddi<V> zzgln;

    public zzcxp(E e2, String str, zzddi<V> zzddiVar) {
        this.zzgll = e2;
        this.zzglm = str;
        this.zzgln = zzddiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddi
    public final void addListener(Runnable runnable, Executor executor) {
        this.zzgln.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.zzgln.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return this.zzgln.get();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j2, TimeUnit timeUnit) {
        return this.zzgln.get(j2, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zzgln.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.zzgln.isDone();
    }

    public final String toString() {
        String str = this.zzglm;
        int iIdentityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(iIdentityHashCode);
        return sb.toString();
    }

    public final E zzanq() {
        return this.zzgll;
    }

    public final String zzanr() {
        return this.zzglm;
    }
}
