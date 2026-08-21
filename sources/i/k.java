package i;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public final class k implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f5010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Inflater f5011c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5012d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5013e;

    k(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f5010b = eVar;
        this.f5011c = inflater;
    }

    private void j() {
        int i2 = this.f5012d;
        if (i2 == 0) {
            return;
        }
        int remaining = i2 - this.f5011c.getRemaining();
        this.f5012d -= remaining;
        this.f5010b.skip(remaining);
    }

    @Override // i.s
    public long a(c cVar, long j2) throws IOException {
        boolean zI;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (this.f5013e) {
            throw new IllegalStateException("closed");
        }
        if (j2 == 0) {
            return 0L;
        }
        do {
            zI = i();
            try {
                o oVarB = cVar.b(1);
                int iInflate = this.f5011c.inflate(oVarB.f5027a, oVarB.f5029c, (int) Math.min(j2, 8192 - oVarB.f5029c));
                if (iInflate > 0) {
                    oVarB.f5029c += iInflate;
                    long j3 = iInflate;
                    cVar.f4994c += j3;
                    return j3;
                }
                if (!this.f5011c.finished() && !this.f5011c.needsDictionary()) {
                }
                j();
                if (oVarB.f5028b != oVarB.f5029c) {
                    return -1L;
                }
                cVar.f4993b = oVarB.b();
                p.a(oVarB);
                return -1L;
            } catch (DataFormatException e2) {
                throw new IOException(e2);
            }
        } while (!zI);
        throw new EOFException("source exhausted prematurely");
    }

    @Override // i.s
    public t b() {
        return this.f5010b.b();
    }

    @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f5013e) {
            return;
        }
        this.f5011c.end();
        this.f5013e = true;
        this.f5010b.close();
    }

    public boolean i() {
        if (!this.f5011c.needsInput()) {
            return false;
        }
        j();
        if (this.f5011c.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f5010b.c()) {
            return true;
        }
        o oVar = this.f5010b.a().f4993b;
        int i2 = oVar.f5029c;
        int i3 = oVar.f5028b;
        this.f5012d = i2 - i3;
        this.f5011c.setInput(oVar.f5027a, i3, this.f5012d);
        return false;
    }
}
