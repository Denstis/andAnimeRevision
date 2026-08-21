package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
final class zzan extends FilterInputStream {
    private final long zzcb;
    private long zzcc;

    zzan(InputStream inputStream, long j2) {
        super(inputStream);
        this.zzcb = j2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i2 = super.read();
        if (i2 != -1) {
            this.zzcc++;
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = super.read(bArr, i2, i3);
        if (i4 != -1) {
            this.zzcc += (long) i4;
        }
        return i4;
    }

    final long zzn() {
        return this.zzcb - this.zzcc;
    }
}
