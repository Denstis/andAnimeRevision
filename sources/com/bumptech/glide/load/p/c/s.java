package com.bumptech.glide.load.p.c;

import com.google.android.exoplayer2.C;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class s extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile byte[] f3840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3842d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3843e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3844f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.b f3845g;

    static class a extends IOException {
        a(String str) {
            super(str);
        }
    }

    public s(InputStream inputStream, com.bumptech.glide.load.n.a0.b bVar) {
        this(inputStream, bVar, C.DEFAULT_BUFFER_SEGMENT_SIZE);
    }

    s(InputStream inputStream, com.bumptech.glide.load.n.a0.b bVar, int i2) {
        super(inputStream);
        this.f3843e = -1;
        this.f3845g = bVar;
        this.f3840b = (byte[]) bVar.b(i2, byte[].class);
    }

    private int a(InputStream inputStream, byte[] bArr) throws IOException {
        int i2 = this.f3843e;
        if (i2 != -1) {
            int i3 = this.f3844f - i2;
            int i4 = this.f3842d;
            if (i3 < i4) {
                if (i2 == 0 && i4 > bArr.length && this.f3841c == bArr.length) {
                    int length = bArr.length * 2;
                    if (length > i4) {
                        length = i4;
                    }
                    byte[] bArr2 = (byte[]) this.f3845g.b(length, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f3840b = bArr2;
                    this.f3845g.a(bArr);
                    bArr = bArr2;
                } else {
                    int i5 = this.f3843e;
                    if (i5 > 0) {
                        System.arraycopy(bArr, i5, bArr, 0, bArr.length - i5);
                    }
                }
                this.f3844f -= this.f3843e;
                this.f3843e = 0;
                this.f3841c = 0;
                int i6 = this.f3844f;
                int i7 = inputStream.read(bArr, i6, bArr.length - i6);
                int i8 = this.f3844f;
                if (i7 > 0) {
                    i8 += i7;
                }
                this.f3841c = i8;
                return i7;
            }
        }
        int i9 = inputStream.read(bArr);
        if (i9 > 0) {
            this.f3843e = -1;
            this.f3844f = 0;
            this.f3841c = i9;
        }
        return i9;
    }

    private static IOException l() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f3840b == null || inputStream == null) {
            l();
            throw null;
        }
        return (this.f3841c - this.f3844f) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f3840b != null) {
            this.f3845g.a(this.f3840b);
            this.f3840b = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public synchronized void j() {
        this.f3842d = this.f3840b.length;
    }

    public synchronized void k() {
        if (this.f3840b != null) {
            this.f3845g.a(this.f3840b);
            this.f3840b = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i2) {
        this.f3842d = Math.max(this.f3842d, i2);
        this.f3843e = this.f3844f;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() {
        byte[] bArr = this.f3840b;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            l();
            throw null;
        }
        if (this.f3844f >= this.f3841c && a(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.f3840b && (bArr = this.f3840b) == null) {
            l();
            throw null;
        }
        if (this.f3841c - this.f3844f <= 0) {
            return -1;
        }
        int i2 = this.f3844f;
        this.f3844f = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        byte[] bArr2 = this.f3840b;
        if (bArr2 == null) {
            l();
            throw null;
        }
        if (i3 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            l();
            throw null;
        }
        if (this.f3844f < this.f3841c) {
            int i6 = this.f3841c - this.f3844f >= i3 ? i3 : this.f3841c - this.f3844f;
            System.arraycopy(bArr2, this.f3844f, bArr, i2, i6);
            this.f3844f += i6;
            if (i6 == i3 || inputStream.available() == 0) {
                return i6;
            }
            i2 += i6;
            i4 = i3 - i6;
        } else {
            i4 = i3;
        }
        while (true) {
            if (this.f3843e == -1 && i4 >= bArr2.length) {
                i5 = inputStream.read(bArr, i2, i4);
                if (i5 == -1) {
                    return i4 != i3 ? i3 - i4 : -1;
                }
            } else {
                if (a(inputStream, bArr2) == -1) {
                    return i4 != i3 ? i3 - i4 : -1;
                }
                if (bArr2 != this.f3840b && (bArr2 = this.f3840b) == null) {
                    l();
                    throw null;
                }
                i5 = this.f3841c - this.f3844f >= i4 ? i4 : this.f3841c - this.f3844f;
                System.arraycopy(bArr2, this.f3844f, bArr, i2, i5);
                this.f3844f += i5;
            }
            i4 -= i5;
            if (i4 == 0) {
                return i3;
            }
            if (inputStream.available() == 0) {
                return i3 - i4;
            }
            i2 += i5;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        if (this.f3840b == null) {
            throw new IOException("Stream is closed");
        }
        if (-1 == this.f3843e) {
            throw new a("Mark has been invalidated, pos: " + this.f3844f + " markLimit: " + this.f3842d);
        }
        this.f3844f = this.f3843e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j2) {
        if (j2 < 1) {
            return 0L;
        }
        byte[] bArr = this.f3840b;
        if (bArr == null) {
            l();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            l();
            throw null;
        }
        if (this.f3841c - this.f3844f >= j2) {
            this.f3844f = (int) (((long) this.f3844f) + j2);
            return j2;
        }
        long j3 = ((long) this.f3841c) - ((long) this.f3844f);
        this.f3844f = this.f3841c;
        if (this.f3843e == -1 || j2 > this.f3842d) {
            return j3 + inputStream.skip(j2 - j3);
        }
        if (a(inputStream, bArr) == -1) {
            return j3;
        }
        if (this.f3841c - this.f3844f >= j2 - j3) {
            this.f3844f = (int) ((((long) this.f3844f) + j2) - j3);
            return j2;
        }
        long j4 = (j3 + ((long) this.f3841c)) - ((long) this.f3844f);
        this.f3844f = this.f3841c;
        return j4;
    }
}
