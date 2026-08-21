package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdcu<V> extends zzdaw implements Future<V> {
    protected zzdcu() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return zzaoi().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return zzaoi().get();
    }

    @Override // java.util.concurrent.Future
    public V get(long j2, TimeUnit timeUnit) {
        return zzaoi().get(j2, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return zzaoi().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return zzaoi().isDone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdaw
    /* JADX INFO: renamed from: zzapi, reason: merged with bridge method [inline-methods] */
    public abstract Future<? extends V> zzaoi();
}
