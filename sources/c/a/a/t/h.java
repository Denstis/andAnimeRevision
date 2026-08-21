package c.a.a.t;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class h extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3329b;

    public h(InputStream inputStream) {
        super(inputStream);
        this.f3329b = Integer.MIN_VALUE;
    }

    private long h(long j2) {
        int i2 = this.f3329b;
        if (i2 == 0) {
            return -1L;
        }
        return (i2 == Integer.MIN_VALUE || j2 <= ((long) i2)) ? j2 : i2;
    }

    private void i(long j2) {
        int i2 = this.f3329b;
        if (i2 == Integer.MIN_VALUE || j2 == -1) {
            return;
        }
        this.f3329b = (int) (((long) i2) - j2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int i2 = this.f3329b;
        return i2 == Integer.MIN_VALUE ? super.available() : Math.min(i2, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i2) {
        super.mark(i2);
        this.f3329b = i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (h(1L) == -1) {
            return -1;
        }
        int i2 = super.read();
        i(1L);
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int iH = (int) h(i3);
        if (iH == -1) {
            return -1;
        }
        int i4 = super.read(bArr, i2, iH);
        i(i4);
        return i4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        super.reset();
        this.f3329b = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j2) throws IOException {
        long jH = h(j2);
        if (jH == -1) {
            return 0L;
        }
        long jSkip = super.skip(jH);
        i(jSkip);
        return jSkip;
    }
}
