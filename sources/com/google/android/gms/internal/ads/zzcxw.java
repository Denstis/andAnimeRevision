package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcxw {
    private final E zzgll;
    private final /* synthetic */ zzcxs zzglr;

    private zzcxw(zzcxs zzcxsVar, E e2) {
        this.zzglr = zzcxsVar;
        this.zzgll = e2;
    }

    private final <O> zzcxy<O> zza(Callable<O> callable, zzddl zzddlVar) {
        return new zzcxy<>(this.zzglr, this.zzgll, zzcxs.zzglo, Collections.emptyList(), zzddlVar.submit(callable));
    }

    public final zzcxy<?> zza(final zzcxq zzcxqVar, zzddl zzddlVar) {
        return zza(new Callable(zzcxqVar) { // from class: com.google.android.gms.internal.ads.zzcxv
            private final zzcxq zzgls;

            {
                this.zzgls = zzcxqVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.zzgls.run();
                return null;
            }
        }, zzddlVar);
    }

    public final <O> zzcxy<O> zzb(zzddi<O> zzddiVar) {
        return new zzcxy<>(this.zzglr, this.zzgll, zzcxs.zzglo, Collections.emptyList(), zzddiVar);
    }

    public final <O> zzcxy<O> zzc(Callable<O> callable) {
        return zza(callable, this.zzglr.zzfoa);
    }
}
