package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzcfi implements Callable {
    private final zzcfh zzfvv;

    private zzcfi(zzcfh zzcfhVar) {
        this.zzfvv = zzcfhVar;
    }

    static Callable zza(zzcfh zzcfhVar) {
        return new zzcfi(zzcfhVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzfvv.getWritableDatabase();
    }
}
