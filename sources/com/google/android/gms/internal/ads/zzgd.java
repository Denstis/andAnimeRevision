package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgd extends Exception {
    private final int type;
    private final int zzack;

    private zzgd(int i2, String str, Throwable th, int i3) {
        super(null, th);
        this.type = i2;
        this.zzack = i3;
    }

    public static zzgd zza(IOException iOException) {
        return new zzgd(0, null, iOException, -1);
    }

    public static zzgd zza(Exception exc, int i2) {
        return new zzgd(1, null, exc, i2);
    }

    static zzgd zza(RuntimeException runtimeException) {
        return new zzgd(2, null, runtimeException, -1);
    }
}
