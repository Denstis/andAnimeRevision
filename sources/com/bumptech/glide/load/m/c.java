package com.bumptech.glide.load.m;

import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class c extends OutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final OutputStream f3388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f3389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bumptech.glide.load.n.a0.b f3390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3391e;

    public c(OutputStream outputStream, com.bumptech.glide.load.n.a0.b bVar) {
        this(outputStream, bVar, C.DEFAULT_BUFFER_SEGMENT_SIZE);
    }

    c(OutputStream outputStream, com.bumptech.glide.load.n.a0.b bVar, int i2) {
        this.f3388b = outputStream;
        this.f3390d = bVar;
        this.f3389c = (byte[]) bVar.b(i2, byte[].class);
    }

    private void j() throws IOException {
        int i2 = this.f3391e;
        if (i2 > 0) {
            this.f3388b.write(this.f3389c, 0, i2);
            this.f3391e = 0;
        }
    }

    private void k() throws IOException {
        if (this.f3391e == this.f3389c.length) {
            j();
        }
    }

    private void l() {
        byte[] bArr = this.f3389c;
        if (bArr != null) {
            this.f3390d.a(bArr);
            this.f3389c = null;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.f3388b.close();
            l();
        } catch (Throwable th) {
            this.f3388b.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        j();
        this.f3388b.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        byte[] bArr = this.f3389c;
        int i3 = this.f3391e;
        this.f3391e = i3 + 1;
        bArr[i3] = (byte) i2;
        k();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = 0;
        do {
            int i5 = i3 - i4;
            int i6 = i2 + i4;
            if (this.f3391e == 0 && i5 >= this.f3389c.length) {
                this.f3388b.write(bArr, i6, i5);
                return;
            }
            int iMin = Math.min(i5, this.f3389c.length - this.f3391e);
            System.arraycopy(bArr, i6, this.f3389c, this.f3391e, iMin);
            this.f3391e += iMin;
            i4 += iMin;
            k();
        } while (i4 < i3);
    }
}
