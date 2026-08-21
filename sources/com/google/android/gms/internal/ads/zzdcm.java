package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class zzdcm<V> extends zzdce<Object, V> {
    zzdcm(zzday<? extends zzddi<?>> zzdayVar, boolean z, Executor executor, Callable<V> callable) {
        zzd(new zzdcr(this, zzdayVar, z, new zzdcp(this, callable, executor)));
    }
}
