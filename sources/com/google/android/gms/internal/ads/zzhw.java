package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzhw extends Exception {
    private final int errorCode;

    public zzhw(int i2) {
        StringBuilder sb = new StringBuilder(36);
        sb.append("AudioTrack write failed: ");
        sb.append(i2);
        super(sb.toString());
        this.errorCode = i2;
    }
}
