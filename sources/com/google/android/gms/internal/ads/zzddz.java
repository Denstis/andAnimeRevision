package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: loaded from: classes.dex */
final class zzddz<V> extends zzddh<V> {
    private final Callable<V> zzgrh;
    private final /* synthetic */ zzddw zzgsg;

    zzddz(zzddw zzddwVar, Callable<V> callable) {
        this.zzgsg = zzddwVar;
        this.zzgrh = (Callable) zzdaq.checkNotNull(callable);
    }

    @Override // com.google.android.gms.internal.ads.zzddh
    final boolean isDone() {
        return this.zzgsg.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzddh
    final V zzapg() {
        return this.zzgrh.call();
    }

    @Override // com.google.android.gms.internal.ads.zzddh
    final String zzaph() {
        return this.zzgrh.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzddh
    final void zzb(V v, Throwable th) {
        if (th == null) {
            this.zzgsg.set(v);
        } else {
            this.zzgsg.setException(th);
        }
    }
}
