package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdcd<I, O> extends zzdca<I, O, zzdcj<? super I, ? extends O>, zzddi<? extends O>> {
    zzdcd(zzddi<? extends I> zzddiVar, zzdcj<? super I, ? extends O> zzdcjVar) {
        super(zzddiVar, zzdcjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdca
    final /* synthetic */ void setResult(Object obj) {
        setFuture((zzddi) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdca
    final /* synthetic */ Object zzc(Object obj, Object obj2) {
        zzdcj zzdcjVar = (zzdcj) obj;
        zzddi<O> zzddiVarZzf = zzdcjVar.zzf(obj2);
        zzdaq.zza(zzddiVarZzf, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzdcjVar);
        return zzddiVarZzf;
    }
}
