package h.h0.i;

import h.h0.i.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
final class j implements Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Logger f4791h = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i.d f4792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f4793c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4796f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i.c f4794d = new i.c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final d.b f4797g = new d.b(this.f4794d);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4795e = 16384;

    j(i.d dVar, boolean z) {
        this.f4792b = dVar;
        this.f4793c = z;
    }

    private static void a(i.d dVar, int i2) {
        dVar.writeByte((i2 >>> 16) & 255);
        dVar.writeByte((i2 >>> 8) & 255);
        dVar.writeByte(i2 & 255);
    }

    private void b(int i2, long j2) {
        while (j2 > 0) {
            int iMin = (int) Math.min(this.f4795e, j2);
            long j3 = iMin;
            j2 -= j3;
            a(i2, iMin, (byte) 9, j2 == 0 ? (byte) 4 : (byte) 0);
            this.f4792b.b(this.f4794d, j3);
        }
    }

    void a(int i2, byte b2, i.c cVar, int i3) {
        a(i2, i3, (byte) 0, b2);
        if (i3 > 0) {
            this.f4792b.b(cVar, i3);
        }
    }

    public void a(int i2, int i3, byte b2, byte b3) {
        if (f4791h.isLoggable(Level.FINE)) {
            f4791h.fine(e.a(false, i2, i3, b2, b3));
        }
        int i4 = this.f4795e;
        if (i3 > i4) {
            e.a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i4), Integer.valueOf(i3));
            throw null;
        }
        if ((Integer.MIN_VALUE & i2) != 0) {
            e.a("reserved bit set: %s", Integer.valueOf(i2));
            throw null;
        }
        a(this.f4792b, i3);
        this.f4792b.writeByte(b2 & 255);
        this.f4792b.writeByte(b3 & 255);
        this.f4792b.writeInt(i2 & Integer.MAX_VALUE);
    }

    public synchronized void a(int i2, int i3, List<c> list) {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        this.f4797g.a(list);
        long jS = this.f4794d.s();
        int iMin = (int) Math.min(this.f4795e - 4, jS);
        long j2 = iMin;
        a(i2, iMin + 4, (byte) 5, jS == j2 ? (byte) 4 : (byte) 0);
        this.f4792b.writeInt(i3 & Integer.MAX_VALUE);
        this.f4792b.b(this.f4794d, j2);
        if (jS > j2) {
            b(i2, jS - j2);
        }
    }

    public synchronized void a(int i2, long j2) {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        if (j2 == 0 || j2 > 2147483647L) {
            e.a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j2));
            throw null;
        }
        a(i2, 4, (byte) 8, (byte) 0);
        this.f4792b.writeInt((int) j2);
        this.f4792b.flush();
    }

    public synchronized void a(int i2, b bVar) {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        if (bVar.f4660b == -1) {
            throw new IllegalArgumentException();
        }
        a(i2, 4, (byte) 3, (byte) 0);
        this.f4792b.writeInt(bVar.f4660b);
        this.f4792b.flush();
    }

    public synchronized void a(int i2, b bVar, byte[] bArr) {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        if (bVar.f4660b == -1) {
            e.a("errorCode.httpCode == -1", new Object[0]);
            throw null;
        }
        a(0, bArr.length + 8, (byte) 7, (byte) 0);
        this.f4792b.writeInt(i2);
        this.f4792b.writeInt(bVar.f4660b);
        if (bArr.length > 0) {
            this.f4792b.write(bArr);
        }
        this.f4792b.flush();
    }

    public synchronized void a(m mVar) {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        this.f4795e = mVar.c(this.f4795e);
        if (mVar.b() != -1) {
            this.f4797g.a(mVar.b());
        }
        a(0, 0, (byte) 4, (byte) 1);
        this.f4792b.flush();
    }

    public synchronized void a(boolean z, int i2, int i3) {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
        this.f4792b.writeInt(i2);
        this.f4792b.writeInt(i3);
        this.f4792b.flush();
    }

    public synchronized void a(boolean z, int i2, int i3, List<c> list) {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        a(z, i2, list);
    }

    public synchronized void a(boolean z, int i2, i.c cVar, int i3) {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        a(i2, z ? (byte) 1 : (byte) 0, cVar, i3);
    }

    void a(boolean z, int i2, List<c> list) throws IOException {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        this.f4797g.a(list);
        long jS = this.f4794d.s();
        int iMin = (int) Math.min(this.f4795e, jS);
        long j2 = iMin;
        byte b2 = jS == j2 ? (byte) 4 : (byte) 0;
        if (z) {
            b2 = (byte) (b2 | 1);
        }
        a(i2, iMin, (byte) 1, b2);
        this.f4792b.b(this.f4794d, j2);
        if (jS > j2) {
            b(i2, jS - j2);
        }
    }

    public synchronized void b(m mVar) {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        int i2 = 0;
        a(0, mVar.d() * 6, (byte) 4, (byte) 0);
        while (i2 < 10) {
            if (mVar.d(i2)) {
                this.f4792b.writeShort(i2 == 4 ? 3 : i2 == 7 ? 4 : i2);
                this.f4792b.writeInt(mVar.a(i2));
            }
            i2++;
        }
        this.f4792b.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f4796f = true;
        this.f4792b.close();
    }

    public synchronized void flush() {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        this.f4792b.flush();
    }

    public synchronized void j() {
        if (this.f4796f) {
            throw new IOException("closed");
        }
        if (this.f4793c) {
            if (f4791h.isLoggable(Level.FINE)) {
                f4791h.fine(h.h0.c.a(">> CONNECTION %s", e.f4689a.b()));
            }
            this.f4792b.write(e.f4689a.g());
            this.f4792b.flush();
        }
    }

    public int k() {
        return this.f4795e;
    }
}
