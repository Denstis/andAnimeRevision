package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zznf {
    public final int flags;
    public final Uri uri;
    public final long zzamq;
    public final byte[] zzbek;
    public final long zzbel;
    public final long zzcb;
    public final String zzce;

    public zznf(Uri uri) {
        this(uri, 0);
    }

    private zznf(Uri uri, int i2) {
        this(uri, 0L, -1L, null, 0);
    }

    private zznf(Uri uri, long j2, long j3, long j4, String str, int i2) {
        this(uri, null, j2, j3, j4, str, i2);
    }

    public zznf(Uri uri, long j2, long j3, String str) {
        this(uri, j2, j2, j3, str, 0);
    }

    private zznf(Uri uri, long j2, long j3, String str, int i2) {
        this(uri, 0L, 0L, -1L, null, 0);
    }

    public zznf(Uri uri, byte[] bArr, long j2, long j3, long j4, String str, int i2) {
        boolean z = true;
        zznr.checkArgument(j2 >= 0);
        zznr.checkArgument(j3 >= 0);
        if (j4 <= 0 && j4 != -1) {
            z = false;
        }
        zznr.checkArgument(z);
        this.uri = uri;
        this.zzbek = bArr;
        this.zzbel = j2;
        this.zzamq = j3;
        this.zzcb = j4;
        this.zzce = str;
        this.flags = i2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.uri);
        String string = Arrays.toString(this.zzbek);
        long j2 = this.zzbel;
        long j3 = this.zzamq;
        long j4 = this.zzcb;
        String str = this.zzce;
        int i2 = this.flags;
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 93 + String.valueOf(string).length() + String.valueOf(str).length());
        sb.append("DataSpec[");
        sb.append(strValueOf);
        sb.append(", ");
        sb.append(string);
        sb.append(", ");
        sb.append(j2);
        sb.append(", ");
        sb.append(j3);
        sb.append(", ");
        sb.append(j4);
        sb.append(", ");
        sb.append(str);
        sb.append(", ");
        sb.append(i2);
        sb.append("]");
        return sb.toString();
    }

    public final boolean zzaz(int i2) {
        return (this.flags & 1) == 1;
    }
}
