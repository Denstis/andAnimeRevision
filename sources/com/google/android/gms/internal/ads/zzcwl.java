package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: loaded from: classes.dex */
public final class zzcwl<T> {
    private final zzddl zzfoa;
    private final Deque<zzddi<T>> zzgkp = new LinkedBlockingDeque();
    private final Callable<T> zzgkq;

    public zzcwl(Callable<T> callable, zzddl zzddlVar) {
        this.zzgkq = callable;
        this.zzfoa = zzddlVar;
    }

    public final synchronized void zza(zzddi<T> zzddiVar) {
        this.zzgkp.addFirst(zzddiVar);
    }

    public final synchronized zzddi<T> zzanf() {
        zzdj(1);
        return this.zzgkp.poll();
    }

    public final synchronized void zzdj(int i2) {
        int size = i2 - this.zzgkp.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.zzgkp.add(this.zzfoa.zzd(this.zzgkq));
        }
    }
}
