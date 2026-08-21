package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzbqs<T> {
    public Executor executor;
    public T zzfhz;

    public zzbqs(T t, Executor executor) {
        this.zzfhz = t;
        this.executor = executor;
    }

    public static <T> zzbqs<T> zzb(T t, Executor executor) {
        return new zzbqs<>(t, executor);
    }
}
