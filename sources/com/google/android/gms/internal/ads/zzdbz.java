package com.google.android.gms.internal.ads;

import java.lang.Throwable;

/* JADX INFO: loaded from: classes.dex */
final class zzdbz<V, X extends Throwable> extends zzdbw<V, X, zzdcj<? super X, ? extends V>, zzddi<? extends V>> {
    zzdbz(zzddi<? extends V> zzddiVar, Class<X> cls, zzdcj<? super X, ? extends V> zzdcjVar) {
        super(zzddiVar, cls, zzdcjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    final /* synthetic */ void setResult(Object obj) {
        setFuture((zzddi) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    final /* synthetic */ Object zza(Object obj, Throwable th) {
        zzdcj zzdcjVar = (zzdcj) obj;
        zzddi zzddiVarZzf = zzdcjVar.zzf(th);
        zzdaq.zza(zzddiVarZzf, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzdcjVar);
        return zzddiVarZzf;
    }
}
