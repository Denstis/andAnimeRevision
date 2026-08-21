package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzdwl<T> implements zzdwo<T> {
    private static final Object zzhxo = new Object();
    private volatile Object zzduz = zzhxo;
    private volatile zzdwo<T> zzhxp;

    private zzdwl(zzdwo<T> zzdwoVar) {
        this.zzhxp = zzdwoVar;
    }

    public static <P extends zzdwo<T>, T> zzdwo<T> zzan(P p) {
        return ((p instanceof zzdwl) || (p instanceof zzdwc)) ? p : new zzdwl((zzdwo) zzdwh.checkNotNull(p));
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final T get() {
        T t = (T) this.zzduz;
        if (t != zzhxo) {
            return t;
        }
        zzdwo<T> zzdwoVar = this.zzhxp;
        if (zzdwoVar == null) {
            return (T) this.zzduz;
        }
        T t2 = zzdwoVar.get();
        this.zzduz = t2;
        this.zzhxp = null;
        return t2;
    }
}
