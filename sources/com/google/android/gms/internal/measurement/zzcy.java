package com.google.android.gms.internal.measurement;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzcy<T> implements Serializable {
    zzcy() {
    }

    public static <T> zzcy<T> zza(T t) {
        return new zzda(zzcx.zza(t));
    }

    public static <T> zzcy<T> zzc() {
        return zzcw.zza;
    }

    public abstract boolean zza();

    public abstract T zzb();
}
