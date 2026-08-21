package c.a.a.t;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class c extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f3317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3318c;

    private c(InputStream inputStream, long j2) {
        super(inputStream);
        this.f3317b = j2;
    }

    private int a(int i2) throws IOException {
        if (i2 >= 0) {
            this.f3318c += i2;
        } else if (this.f3317b - ((long) this.f3318c) > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f3317b + ", but read: " + this.f3318c);
        }
        return i2;
    }

    public static InputStream a(InputStream inputStream, long j2) {
        return new c(inputStream, j2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() {
        return (int) Math.max(this.f3317b - ((long) this.f3318c), ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() {
        int i2;
        i2 = super.read();
        a(i2 >= 0 ? 1 : -1);
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i2, int i3) {
        int i4;
        i4 = super.read(bArr, i2, i3);
        a(i4);
        return i4;
    }
}
