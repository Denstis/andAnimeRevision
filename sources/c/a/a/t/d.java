package c.a.a.t;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class d extends InputStream {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Queue<d> f3319d = k.a(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private InputStream f3320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private IOException f3321c;

    d() {
    }

    public static d b(InputStream inputStream) {
        d dVarPoll;
        synchronized (f3319d) {
            dVarPoll = f3319d.poll();
        }
        if (dVarPoll == null) {
            dVarPoll = new d();
        }
        dVarPoll.a(inputStream);
        return dVarPoll;
    }

    void a(InputStream inputStream) {
        this.f3320b = inputStream;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f3320b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3320b.close();
    }

    public IOException j() {
        return this.f3321c;
    }

    public void k() {
        this.f3321c = null;
        this.f3320b = null;
        synchronized (f3319d) {
            f3319d.offer(this);
        }
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        this.f3320b.mark(i2);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f3320b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f3320b.read();
        } catch (IOException e2) {
            this.f3321c = e2;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f3320b.read(bArr);
        } catch (IOException e2) {
            this.f3321c = e2;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) {
        try {
            return this.f3320b.read(bArr, i2, i3);
        } catch (IOException e2) {
            this.f3321c = e2;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
        this.f3320b.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j2) {
        try {
            return this.f3320b.skip(j2);
        } catch (IOException e2) {
            this.f3321c = e2;
            return 0L;
        }
    }
}
