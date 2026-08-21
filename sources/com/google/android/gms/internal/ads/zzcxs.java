package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzcxs<E> {
    private static final zzddi<?> zzglo = zzdcy.zzah(null);
    private final ScheduledExecutorService zzfcx;
    private final zzddl zzfoa;
    private final zzcye<E> zzglp;

    public zzcxs(zzddl zzddlVar, ScheduledExecutorService scheduledExecutorService, zzcye<E> zzcyeVar) {
        this.zzfoa = zzddlVar;
        this.zzfcx = scheduledExecutorService;
        this.zzglp = zzcyeVar;
    }

    public final zzcxu zza(E e2, zzddi<?>... zzddiVarArr) {
        return new zzcxu(this, e2, Arrays.asList(zzddiVarArr));
    }

    public final <I> zzcxy<I> zza(E e2, zzddi<I> zzddiVar) {
        return new zzcxy<>(this, e2, zzddiVar, Collections.singletonList(zzddiVar), zzddiVar);
    }

    public final zzcxw zzu(E e2) {
        return new zzcxw(this, e2);
    }

    protected abstract String zzv(E e2);
}
