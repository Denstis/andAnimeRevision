package com.bumptech.glide.load.m;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class g extends FilterInputStream {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f3395d = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f3396e = f3395d.length;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f3397f = f3396e + 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte f3398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3399c;

    public g(InputStream inputStream, int i2) {
        super(inputStream);
        if (i2 >= -1 && i2 <= 8) {
            this.f3398b = (byte) i2;
            return;
        }
        throw new IllegalArgumentException("Cannot add invalid orientation: " + i2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int i2;
        int i3 = this.f3399c;
        int i4 = (i3 < 2 || i3 > (i2 = f3397f)) ? super.read() : i3 == i2 ? this.f3398b : f3395d[i3 - 2] & 255;
        if (i4 != -1) {
            this.f3399c++;
        }
        return i4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4;
        int i5 = this.f3399c;
        int i6 = f3397f;
        if (i5 > i6) {
            i4 = super.read(bArr, i2, i3);
        } else if (i5 == i6) {
            bArr[i2] = this.f3398b;
            i4 = 1;
        } else if (i5 < 2) {
            i4 = super.read(bArr, i2, 2 - i5);
        } else {
            int iMin = Math.min(i6 - i5, i3);
            System.arraycopy(f3395d, this.f3399c - 2, bArr, i2, iMin);
            i4 = iMin;
        }
        if (i4 > 0) {
            this.f3399c += i4;
        }
        return i4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j2) throws IOException {
        long jSkip = super.skip(j2);
        if (jSkip > 0) {
            this.f3399c = (int) (((long) this.f3399c) + jSkip);
        }
        return jSkip;
    }
}
