package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zznw {
    private int size;
    private long[] zzbgc;

    public zznw() {
        this(32);
    }

    private zznw(int i2) {
        this.zzbgc = new long[32];
    }

    public final void add(long j2) {
        int i2 = this.size;
        long[] jArr = this.zzbgc;
        if (i2 == jArr.length) {
            this.zzbgc = Arrays.copyOf(jArr, i2 << 1);
        }
        long[] jArr2 = this.zzbgc;
        int i3 = this.size;
        this.size = i3 + 1;
        jArr2[i3] = j2;
    }

    public final long get(int i2) {
        if (i2 >= 0 && i2 < this.size) {
            return this.zzbgc[i2];
        }
        int i3 = this.size;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Invalid index ");
        sb.append(i2);
        sb.append(", size is ");
        sb.append(i3);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final int size() {
        return this.size;
    }
}
