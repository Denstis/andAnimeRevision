package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzhh extends Exception {
    public zzhh(int i2, int i3, int i4) {
        StringBuilder sb = new StringBuilder(78);
        sb.append("Unhandled format: ");
        sb.append(i2);
        sb.append(" Hz, ");
        sb.append(i3);
        sb.append(" channels in encoding ");
        sb.append(i4);
        super(sb.toString());
    }
}
