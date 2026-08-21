package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzdwe<T> implements zzdvv<T>, zzdwb<T> {
    private static final zzdwe<Object> zzhxr = new zzdwe<>(null);
    private final T zzduz;

    private zzdwe(T t) {
        this.zzduz = t;
    }

    public static <T> zzdwb<T> zzbb(T t) {
        return new zzdwe(zzdwh.zza(t, "instance cannot be null"));
    }

    public static <T> zzdwb<T> zzbc(T t) {
        return t == null ? zzhxr : new zzdwe(t);
    }

    @Override // com.google.android.gms.internal.ads.zzdvv, com.google.android.gms.internal.ads.zzdwo
    public final T get() {
        return this.zzduz;
    }
}
