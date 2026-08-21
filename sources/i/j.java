package i;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public final class j implements s {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f5006c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Inflater f5007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f5008e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5005b = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CRC32 f5009f = new CRC32();

    public j(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.f5007d = new Inflater(true);
        this.f5006c = l.a(sVar);
        this.f5008e = new k(this.f5006c, this.f5007d);
    }

    private void a(c cVar, long j2, long j3) {
        o oVar = cVar.f4993b;
        while (true) {
            int i2 = oVar.f5029c;
            int i3 = oVar.f5028b;
            if (j2 < i2 - i3) {
                break;
            }
            j2 -= (long) (i2 - i3);
            oVar = oVar.f5032f;
        }
        while (j3 > 0) {
            int i4 = (int) (((long) oVar.f5028b) + j2);
            int iMin = (int) Math.min(oVar.f5029c - i4, j3);
            this.f5009f.update(oVar.f5027a, i4, iMin);
            j3 -= (long) iMin;
            oVar = oVar.f5032f;
            j2 = 0;
        }
    }

    private void a(String str, int i2, int i3) throws IOException {
        if (i3 != i2) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i3), Integer.valueOf(i2)));
        }
    }

    private void i() throws IOException {
        this.f5006c.e(10L);
        byte bH = this.f5006c.a().h(3L);
        boolean z = ((bH >> 1) & 1) == 1;
        if (z) {
            a(this.f5006c.a(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f5006c.readShort());
        this.f5006c.skip(8L);
        if (((bH >> 2) & 1) == 1) {
            this.f5006c.e(2L);
            if (z) {
                a(this.f5006c.a(), 0L, 2L);
            }
            long jF = this.f5006c.a().f();
            this.f5006c.e(jF);
            if (z) {
                a(this.f5006c.a(), 0L, jF);
            }
            this.f5006c.skip(jF);
        }
        if (((bH >> 3) & 1) == 1) {
            long jA = this.f5006c.a((byte) 0);
            if (jA == -1) {
                throw new EOFException();
            }
            if (z) {
                a(this.f5006c.a(), 0L, jA + 1);
            }
            this.f5006c.skip(jA + 1);
        }
        if (((bH >> 4) & 1) == 1) {
            long jA2 = this.f5006c.a((byte) 0);
            if (jA2 == -1) {
                throw new EOFException();
            }
            if (z) {
                a(this.f5006c.a(), 0L, jA2 + 1);
            }
            this.f5006c.skip(jA2 + 1);
        }
        if (z) {
            a("FHCRC", this.f5006c.f(), (short) this.f5009f.getValue());
            this.f5009f.reset();
        }
    }

    private void j() throws IOException {
        a("CRC", this.f5006c.e(), (int) this.f5009f.getValue());
        a("ISIZE", this.f5006c.e(), (int) this.f5007d.getBytesWritten());
    }

    @Override // i.s
    public long a(c cVar, long j2) throws IOException {
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (j2 == 0) {
            return 0L;
        }
        if (this.f5005b == 0) {
            i();
            this.f5005b = 1;
        }
        if (this.f5005b == 1) {
            long j3 = cVar.f4994c;
            long jA = this.f5008e.a(cVar, j2);
            if (jA != -1) {
                a(cVar, j3, jA);
                return jA;
            }
            this.f5005b = 2;
        }
        if (this.f5005b == 2) {
            j();
            this.f5005b = 3;
            if (!this.f5006c.c()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // i.s
    public t b() {
        return this.f5006c.b();
    }

    @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5008e.close();
    }
}
