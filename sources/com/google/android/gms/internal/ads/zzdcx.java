package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdcx<V> extends zzdcu<V> implements zzddi<V> {
    protected zzdcx() {
    }

    @Override // com.google.android.gms.internal.ads.zzddi
    public void addListener(Runnable runnable, Executor executor) {
        zzaoi().addListener(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdcu
    /* JADX INFO: renamed from: zzapj, reason: merged with bridge method [inline-methods] */
    public abstract zzddi<? extends V> zzaoi();
}
