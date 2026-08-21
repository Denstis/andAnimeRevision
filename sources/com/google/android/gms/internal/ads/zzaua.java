package com.google.android.gms.internal.ads;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public final class zzaua {
    private BigInteger zzdrw = BigInteger.ONE;
    private String zzdix = "0";

    public final synchronized String zzur() {
        String string;
        string = this.zzdrw.toString();
        this.zzdrw = this.zzdrw.add(BigInteger.ONE);
        this.zzdix = string;
        return string;
    }

    public final synchronized String zzus() {
        return this.zzdix;
    }
}
