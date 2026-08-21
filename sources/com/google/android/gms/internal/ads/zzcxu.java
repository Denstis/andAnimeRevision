package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcxu {
    private final E zzgll;
    private final List<zzddi<?>> zzglq;
    private final /* synthetic */ zzcxs zzglr;

    private zzcxu(zzcxs zzcxsVar, E e2, List<zzddi<?>> list) {
        this.zzglr = zzcxsVar;
        this.zzgll = e2;
        this.zzglq = list;
    }

    public final <O> zzcxy<O> zzb(Callable<O> callable) {
        zzddd zzdddVarZzh = zzdcy.zzh(this.zzglq);
        zzddi zzddiVarZza = zzdddVarZzh.zza(zzcxt.zzgfh, zzaxn.zzdwn);
        zzcxs zzcxsVar = this.zzglr;
        return new zzcxy<>(zzcxsVar, this.zzgll, zzddiVarZza, this.zzglq, zzdddVarZzh.zza(callable, zzcxsVar.zzfoa));
    }
}
