package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdcc<I, O> extends zzdca<I, O, zzdal<? super I, ? extends O>, O> {
    zzdcc(zzddi<? extends I> zzddiVar, zzdal<? super I, ? extends O> zzdalVar) {
        super(zzddiVar, zzdalVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdca
    final void setResult(O o) {
        set(o);
    }

    @Override // com.google.android.gms.internal.ads.zzdca
    final /* synthetic */ Object zzc(Object obj, Object obj2) {
        return ((zzdal) obj).apply(obj2);
    }
}
