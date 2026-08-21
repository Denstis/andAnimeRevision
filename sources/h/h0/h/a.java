package h.h0.h;

import h.a0;
import h.c0;
import h.d0;
import h.h0.g.h;
import h.h0.g.k;
import h.s;
import h.x;
import i.i;
import i.l;
import i.r;
import i.s;
import i.t;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class a implements h.h0.g.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final x f4628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final h.h0.f.g f4629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final i.e f4630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final i.d f4631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f4632e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f4633f = 262144;

    private abstract class b implements s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected final i f4634b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected boolean f4635c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected long f4636d;

        private b() {
            this.f4634b = new i(a.this.f4630c.b());
            this.f4636d = 0L;
        }

        @Override // i.s
        public long a(i.c cVar, long j2) throws IOException {
            try {
                long jA = a.this.f4630c.a(cVar, j2);
                if (jA > 0) {
                    this.f4636d += jA;
                }
                return jA;
            } catch (IOException e2) {
                a(false, e2);
                throw e2;
            }
        }

        protected final void a(boolean z, IOException iOException) {
            a aVar = a.this;
            int i2 = aVar.f4632e;
            if (i2 == 6) {
                return;
            }
            if (i2 != 5) {
                throw new IllegalStateException("state: " + a.this.f4632e);
            }
            aVar.a(this.f4634b);
            a aVar2 = a.this;
            aVar2.f4632e = 6;
            h.h0.f.g gVar = aVar2.f4629b;
            if (gVar != null) {
                gVar.a(!z, aVar2, this.f4636d, iOException);
            }
        }

        @Override // i.s
        public t b() {
            return this.f4634b;
        }
    }

    private final class c implements r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final i f4638b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f4639c;

        c() {
            this.f4638b = new i(a.this.f4631d.b());
        }

        @Override // i.r
        public t b() {
            return this.f4638b;
        }

        @Override // i.r
        public void b(i.c cVar, long j2) {
            if (this.f4639c) {
                throw new IllegalStateException("closed");
            }
            if (j2 == 0) {
                return;
            }
            a.this.f4631d.f(j2);
            a.this.f4631d.a("\r\n");
            a.this.f4631d.b(cVar, j2);
            a.this.f4631d.a("\r\n");
        }

        @Override // i.r, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.f4639c) {
                return;
            }
            this.f4639c = true;
            a.this.f4631d.a("0\r\n\r\n");
            a.this.a(this.f4638b);
            a.this.f4632e = 3;
        }

        @Override // i.r, java.io.Flushable
        public synchronized void flush() {
            if (this.f4639c) {
                return;
            }
            a.this.f4631d.flush();
        }
    }

    private class d extends b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final h.t f4641f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f4642g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f4643h;

        d(h.t tVar) {
            super();
            this.f4642g = -1L;
            this.f4643h = true;
            this.f4641f = tVar;
        }

        private void i() throws ProtocolException {
            if (this.f4642g != -1) {
                a.this.f4630c.d();
            }
            try {
                this.f4642g = a.this.f4630c.g();
                String strTrim = a.this.f4630c.d().trim();
                if (this.f4642g < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f4642g + strTrim + "\"");
                }
                if (this.f4642g == 0) {
                    this.f4643h = false;
                    h.h0.g.e.a(a.this.f4628a.f(), this.f4641f, a.this.e());
                    a(true, (IOException) null);
                }
            } catch (NumberFormatException e2) {
                throw new ProtocolException(e2.getMessage());
            }
        }

        @Override // h.h0.h.a.b, i.s
        public long a(i.c cVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j2);
            }
            if (this.f4635c) {
                throw new IllegalStateException("closed");
            }
            if (!this.f4643h) {
                return -1L;
            }
            long j3 = this.f4642g;
            if (j3 == 0 || j3 == -1) {
                i();
                if (!this.f4643h) {
                    return -1L;
                }
            }
            long jA = super.a(cVar, Math.min(j2, this.f4642g));
            if (jA != -1) {
                this.f4642g -= jA;
                return jA;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            a(false, (IOException) protocolException);
            throw protocolException;
        }

        @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f4635c) {
                return;
            }
            if (this.f4643h && !h.h0.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, (IOException) null);
            }
            this.f4635c = true;
        }
    }

    private final class e implements r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final i f4645b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f4646c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f4647d;

        e(long j2) {
            this.f4645b = new i(a.this.f4631d.b());
            this.f4647d = j2;
        }

        @Override // i.r
        public t b() {
            return this.f4645b;
        }

        @Override // i.r
        public void b(i.c cVar, long j2) throws ProtocolException {
            if (this.f4646c) {
                throw new IllegalStateException("closed");
            }
            h.h0.c.a(cVar.s(), 0L, j2);
            if (j2 <= this.f4647d) {
                a.this.f4631d.b(cVar, j2);
                this.f4647d -= j2;
                return;
            }
            throw new ProtocolException("expected " + this.f4647d + " bytes but received " + j2);
        }

        @Override // i.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws ProtocolException {
            if (this.f4646c) {
                return;
            }
            this.f4646c = true;
            if (this.f4647d > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            a.this.a(this.f4645b);
            a.this.f4632e = 3;
        }

        @Override // i.r, java.io.Flushable
        public void flush() {
            if (this.f4646c) {
                return;
            }
            a.this.f4631d.flush();
        }
    }

    private class f extends b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f4649f;

        f(a aVar, long j2) {
            super();
            this.f4649f = j2;
            if (this.f4649f == 0) {
                a(true, (IOException) null);
            }
        }

        @Override // h.h0.h.a.b, i.s
        public long a(i.c cVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j2);
            }
            if (this.f4635c) {
                throw new IllegalStateException("closed");
            }
            long j3 = this.f4649f;
            if (j3 == 0) {
                return -1L;
            }
            long jA = super.a(cVar, Math.min(j3, j2));
            if (jA == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                a(false, (IOException) protocolException);
                throw protocolException;
            }
            this.f4649f -= jA;
            if (this.f4649f == 0) {
                a(true, (IOException) null);
            }
            return jA;
        }

        @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f4635c) {
                return;
            }
            if (this.f4649f != 0 && !h.h0.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, (IOException) null);
            }
            this.f4635c = true;
        }
    }

    private class g extends b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f4650f;

        g(a aVar) {
            super();
        }

        @Override // h.h0.h.a.b, i.s
        public long a(i.c cVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j2);
            }
            if (this.f4635c) {
                throw new IllegalStateException("closed");
            }
            if (this.f4650f) {
                return -1L;
            }
            long jA = super.a(cVar, j2);
            if (jA != -1) {
                return jA;
            }
            this.f4650f = true;
            a(true, (IOException) null);
            return -1L;
        }

        @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f4635c) {
                return;
            }
            if (!this.f4650f) {
                a(false, (IOException) null);
            }
            this.f4635c = true;
        }
    }

    public a(x xVar, h.h0.f.g gVar, i.e eVar, i.d dVar) {
        this.f4628a = xVar;
        this.f4629b = gVar;
        this.f4630c = eVar;
        this.f4631d = dVar;
    }

    private String f() {
        String strC = this.f4630c.c(this.f4633f);
        this.f4633f -= (long) strC.length();
        return strC;
    }

    @Override // h.h0.g.c
    public c0.a a(boolean z) {
        int i2 = this.f4632e;
        if (i2 != 1 && i2 != 3) {
            throw new IllegalStateException("state: " + this.f4632e);
        }
        try {
            k kVarA = k.a(f());
            c0.a aVar = new c0.a();
            aVar.a(kVarA.f4625a);
            aVar.a(kVarA.f4626b);
            aVar.a(kVarA.f4627c);
            aVar.a(e());
            if (z && kVarA.f4626b == 100) {
                return null;
            }
            if (kVarA.f4626b == 100) {
                this.f4632e = 3;
                return aVar;
            }
            this.f4632e = 4;
            return aVar;
        } catch (EOFException e2) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f4629b);
            iOException.initCause(e2);
            throw iOException;
        }
    }

    @Override // h.h0.g.c
    public d0 a(c0 c0Var) {
        h.h0.f.g gVar = this.f4629b;
        gVar.f4593f.e(gVar.f4592e);
        String strB = c0Var.b("Content-Type");
        if (!h.h0.g.e.b(c0Var)) {
            return new h(strB, 0L, l.a(b(0L)));
        }
        if ("chunked".equalsIgnoreCase(c0Var.b("Transfer-Encoding"))) {
            return new h(strB, -1L, l.a(a(c0Var.t().g())));
        }
        long jA = h.h0.g.e.a(c0Var);
        return jA != -1 ? new h(strB, jA, l.a(b(jA))) : new h(strB, -1L, l.a(d()));
    }

    public r a(long j2) {
        if (this.f4632e == 1) {
            this.f4632e = 2;
            return new e(j2);
        }
        throw new IllegalStateException("state: " + this.f4632e);
    }

    @Override // h.h0.g.c
    public r a(a0 a0Var, long j2) {
        if ("chunked".equalsIgnoreCase(a0Var.a("Transfer-Encoding"))) {
            return c();
        }
        if (j2 != -1) {
            return a(j2);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public s a(h.t tVar) {
        if (this.f4632e == 4) {
            this.f4632e = 5;
            return new d(tVar);
        }
        throw new IllegalStateException("state: " + this.f4632e);
    }

    @Override // h.h0.g.c
    public void a() {
        this.f4631d.flush();
    }

    @Override // h.h0.g.c
    public void a(a0 a0Var) {
        a(a0Var.c(), h.h0.g.i.a(a0Var, this.f4629b.c().e().b().type()));
    }

    public void a(h.s sVar, String str) {
        if (this.f4632e != 0) {
            throw new IllegalStateException("state: " + this.f4632e);
        }
        this.f4631d.a(str).a("\r\n");
        int iB = sVar.b();
        for (int i2 = 0; i2 < iB; i2++) {
            this.f4631d.a(sVar.a(i2)).a(": ").a(sVar.b(i2)).a("\r\n");
        }
        this.f4631d.a("\r\n");
        this.f4632e = 1;
    }

    void a(i iVar) {
        t tVarG = iVar.g();
        iVar.a(t.f5038d);
        tVarG.a();
        tVarG.b();
    }

    public s b(long j2) {
        if (this.f4632e == 4) {
            this.f4632e = 5;
            return new f(this, j2);
        }
        throw new IllegalStateException("state: " + this.f4632e);
    }

    @Override // h.h0.g.c
    public void b() {
        this.f4631d.flush();
    }

    public r c() {
        if (this.f4632e == 1) {
            this.f4632e = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.f4632e);
    }

    @Override // h.h0.g.c
    public void cancel() {
        h.h0.f.c cVarC = this.f4629b.c();
        if (cVarC != null) {
            cVarC.b();
        }
    }

    public s d() {
        if (this.f4632e != 4) {
            throw new IllegalStateException("state: " + this.f4632e);
        }
        h.h0.f.g gVar = this.f4629b;
        if (gVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f4632e = 5;
        gVar.e();
        return new g(this);
    }

    public h.s e() {
        s.a aVar = new s.a();
        while (true) {
            String strF = f();
            if (strF.length() == 0) {
                return aVar.a();
            }
            h.h0.a.f4527a.a(aVar, strF);
        }
    }
}
