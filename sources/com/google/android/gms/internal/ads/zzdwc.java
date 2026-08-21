package com.google.android.gms.internal.ads;

import com.google.android.material.R;

/* JADX INFO: loaded from: classes.dex */
public final class zzdwc<T> implements zzdvv<T>, zzdwo<T> {
    private static final Object zzhxo = new Object();
    private volatile Object zzduz = zzhxo;
    private volatile zzdwo<T> zzhxp;

    private zzdwc(zzdwo<T> zzdwoVar) {
        this.zzhxp = zzdwoVar;
    }

    public static <P extends zzdwo<T>, T> zzdwo<T> zzan(P p) {
        zzdwh.checkNotNull(p);
        return p instanceof zzdwc ? p : new zzdwc(p);
    }

    public static <P extends zzdwo<T>, T> zzdvv<T> zzao(P p) {
        return p instanceof zzdvv ? (zzdvv) p : new zzdwc((zzdwo) zzdwh.checkNotNull(p));
    }

    @Override // com.google.android.gms.internal.ads.zzdvv, com.google.android.gms.internal.ads.zzdwo
    public final T get() {
        T t = (T) this.zzduz;
        if (t == zzhxo) {
            synchronized (this) {
                t = (T) this.zzduz;
                if (t == zzhxo) {
                    t = this.zzhxp.get();
                    Object obj = this.zzduz;
                    if (((obj == zzhxo || (obj instanceof zzdwi)) ? false : true) && obj != t) {
                        String strValueOf = String.valueOf(obj);
                        String strValueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + R.styleable.AppCompatTheme_windowMinWidthMajor + String.valueOf(strValueOf2).length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(strValueOf);
                        sb.append(" & ");
                        sb.append(strValueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.zzduz = t;
                    this.zzhxp = null;
                }
            }
        }
        return t;
    }
}
