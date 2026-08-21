package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public interface zzddi<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
