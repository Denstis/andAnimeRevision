package com.google.android.gms.internal.ads;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdar<T> implements Serializable {
    zzdar() {
    }

    public static <T> zzdar<T> zzz(T t) {
        return t == null ? zzdaj.zzgoq : new zzdat(t);
    }

    public abstract T zzaof();
}
