package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzavp extends Exception {
    private final int errorCode;

    public zzavp(String str, int i2) {
        super(str);
        this.errorCode = i2;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }
}
