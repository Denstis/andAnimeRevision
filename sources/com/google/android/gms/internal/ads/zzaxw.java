package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzaxw<T> extends zzaxv<T> {
    private final T zzdwt;

    private zzaxw(T t) {
        this.zzdwt = t;
    }

    public static <T> zzaxw<T> zzl(T t) {
        return new zzaxw<>(t);
    }

    public final void zzwp() {
        set(this.zzdwt);
    }
}
