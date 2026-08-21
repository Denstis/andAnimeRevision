package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzddd<V> {
    private final boolean zzgqs;
    private final zzdbd<zzddi<? extends V>> zzgro;

    private zzddd(boolean z, zzdbd<zzddi<? extends V>> zzdbdVar) {
        this.zzgqs = false;
        this.zzgro = zzdbdVar;
    }

    /* synthetic */ zzddd(boolean z, zzdbd zzdbdVar, zzddb zzddbVar) {
        this(false, zzdbdVar);
    }

    public final <C> zzddi<C> zza(Callable<C> callable, Executor executor) {
        return new zzdcm(this.zzgro, this.zzgqs, executor, callable);
    }
}
