package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdbf<E> extends zzdau<E> {
    private final zzdbd<E> zzgpd;

    zzdbf(zzdbd<E> zzdbdVar, int i2) {
        super(zzdbdVar.size(), i2);
        this.zzgpd = zzdbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdau
    protected final E get(int i2) {
        return this.zzgpd.get(i2);
    }
}
