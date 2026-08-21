package h.h0.i;

import i.r;
import i.s;
import i.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f4770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final g f4772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<h.h0.i.c> f4773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4774f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f4775g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final a f4776h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f4769a = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final c f4777i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final c f4778j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    h.h0.i.b f4779k = null;

    final class a implements r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final i.c f4780b = new i.c();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f4781c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f4782d;

        a() {
        }

        private void a(boolean z) throws IOException {
            long jMin;
            synchronized (i.this) {
                i.this.f4778j.g();
                while (i.this.f4770b <= 0 && !this.f4782d && !this.f4781c && i.this.f4779k == null) {
                    try {
                        i.this.k();
                    } finally {
                    }
                }
                i.this.f4778j.k();
                i.this.b();
                jMin = Math.min(i.this.f4770b, this.f4780b.s());
                i.this.f4770b -= jMin;
            }
            i.this.f4778j.g();
            try {
                i.this.f4772d.a(i.this.f4771c, z && jMin == this.f4780b.s(), this.f4780b, jMin);
            } finally {
            }
        }

        @Override // i.r
        public t b() {
            return i.this.f4778j;
        }

        @Override // i.r
        public void b(i.c cVar, long j2) throws IOException {
            this.f4780b.b(cVar, j2);
            while (this.f4780b.s() >= 16384) {
                a(false);
            }
        }

        @Override // i.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (i.this) {
                if (this.f4781c) {
                    return;
                }
                if (!i.this.f4776h.f4782d) {
                    if (this.f4780b.s() > 0) {
                        while (this.f4780b.s() > 0) {
                            a(true);
                        }
                    } else {
                        i iVar = i.this;
                        iVar.f4772d.a(iVar.f4771c, true, (i.c) null, 0L);
                    }
                }
                synchronized (i.this) {
                    this.f4781c = true;
                }
                i.this.f4772d.flush();
                i.this.a();
            }
        }

        @Override // i.r, java.io.Flushable
        public void flush() throws IOException {
            synchronized (i.this) {
                i.this.b();
            }
            while (this.f4780b.s() > 0) {
                a(false);
                i.this.f4772d.flush();
            }
        }
    }

    private final class b implements s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final i.c f4784b = new i.c();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final i.c f4785c = new i.c();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f4786d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f4787e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f4788f;

        b(long j2) {
            this.f4786d = j2;
        }

        private void i() throws IOException {
            if (this.f4787e) {
                throw new IOException("stream closed");
            }
            h.h0.i.b bVar = i.this.f4779k;
            if (bVar != null) {
                throw new n(bVar);
            }
        }

        private void j() throws IOException {
            i.this.f4777i.g();
            while (this.f4785c.s() == 0 && !this.f4788f && !this.f4787e && i.this.f4779k == null) {
                try {
                    i.this.k();
                } finally {
                    i.this.f4777i.k();
                }
            }
        }

        @Override // i.s
        public long a(i.c cVar, long j2) {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j2);
            }
            synchronized (i.this) {
                j();
                i();
                if (this.f4785c.s() == 0) {
                    return -1L;
                }
                long jA = this.f4785c.a(cVar, Math.min(j2, this.f4785c.s()));
                i.this.f4769a += jA;
                if (i.this.f4769a >= i.this.f4772d.o.c() / 2) {
                    i.this.f4772d.a(i.this.f4771c, i.this.f4769a);
                    i.this.f4769a = 0L;
                }
                synchronized (i.this.f4772d) {
                    i.this.f4772d.m += jA;
                    if (i.this.f4772d.m >= i.this.f4772d.o.c() / 2) {
                        i.this.f4772d.a(0, i.this.f4772d.m);
                        i.this.f4772d.m = 0L;
                    }
                }
                return jA;
            }
        }

        void a(i.e eVar, long j2) throws EOFException {
            boolean z;
            boolean z2;
            boolean z3;
            while (j2 > 0) {
                synchronized (i.this) {
                    z = this.f4788f;
                    z2 = true;
                    z3 = this.f4785c.s() + j2 > this.f4786d;
                }
                if (z3) {
                    eVar.skip(j2);
                    i.this.b(h.h0.i.b.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    eVar.skip(j2);
                    return;
                }
                long jA = eVar.a(this.f4784b, j2);
                if (jA == -1) {
                    throw new EOFException();
                }
                j2 -= jA;
                synchronized (i.this) {
                    if (this.f4785c.s() != 0) {
                        z2 = false;
                    }
                    this.f4785c.a((s) this.f4784b);
                    if (z2) {
                        i.this.notifyAll();
                    }
                }
            }
        }

        @Override // i.s
        public t b() {
            return i.this.f4777i;
        }

        @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (i.this) {
                this.f4787e = true;
                this.f4785c.l();
                i.this.notifyAll();
            }
            i.this.a();
        }
    }

    class c extends i.a {
        c() {
        }

        @Override // i.a
        protected IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // i.a
        protected void i() {
            i.this.b(h.h0.i.b.CANCEL);
        }

        public void k() throws IOException {
            if (h()) {
                throw b((IOException) null);
            }
        }
    }

    i(int i2, g gVar, boolean z, boolean z2, List<h.h0.i.c> list) {
        if (gVar == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.f4771c = i2;
        this.f4772d = gVar;
        this.f4770b = gVar.p.c();
        this.f4775g = new b(gVar.o.c());
        this.f4776h = new a();
        this.f4775g.f4788f = z2;
        this.f4776h.f4782d = z;
    }

    private boolean d(h.h0.i.b bVar) {
        synchronized (this) {
            if (this.f4779k != null) {
                return false;
            }
            if (this.f4775g.f4788f && this.f4776h.f4782d) {
                return false;
            }
            this.f4779k = bVar;
            notifyAll();
            this.f4772d.c(this.f4771c);
            return true;
        }
    }

    void a() {
        boolean z;
        boolean zG;
        synchronized (this) {
            z = !this.f4775g.f4788f && this.f4775g.f4787e && (this.f4776h.f4782d || this.f4776h.f4781c);
            zG = g();
        }
        if (z) {
            a(h.h0.i.b.CANCEL);
        } else {
            if (zG) {
                return;
            }
            this.f4772d.c(this.f4771c);
        }
    }

    void a(long j2) {
        this.f4770b += j2;
        if (j2 > 0) {
            notifyAll();
        }
    }

    public void a(h.h0.i.b bVar) {
        if (d(bVar)) {
            this.f4772d.b(this.f4771c, bVar);
        }
    }

    void a(i.e eVar, int i2) throws EOFException {
        this.f4775g.a(eVar, i2);
    }

    void a(List<h.h0.i.c> list) {
        boolean zG;
        synchronized (this) {
            zG = true;
            this.f4774f = true;
            if (this.f4773e == null) {
                this.f4773e = list;
                zG = g();
                notifyAll();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.f4773e);
                arrayList.add(null);
                arrayList.addAll(list);
                this.f4773e = arrayList;
            }
        }
        if (zG) {
            return;
        }
        this.f4772d.c(this.f4771c);
    }

    void b() throws IOException {
        a aVar = this.f4776h;
        if (aVar.f4781c) {
            throw new IOException("stream closed");
        }
        if (aVar.f4782d) {
            throw new IOException("stream finished");
        }
        h.h0.i.b bVar = this.f4779k;
        if (bVar != null) {
            throw new n(bVar);
        }
    }

    public void b(h.h0.i.b bVar) {
        if (d(bVar)) {
            this.f4772d.c(this.f4771c, bVar);
        }
    }

    public int c() {
        return this.f4771c;
    }

    synchronized void c(h.h0.i.b bVar) {
        if (this.f4779k == null) {
            this.f4779k = bVar;
            notifyAll();
        }
    }

    public r d() {
        synchronized (this) {
            if (!this.f4774f && !f()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f4776h;
    }

    public s e() {
        return this.f4775g;
    }

    public boolean f() {
        return this.f4772d.f4707b == ((this.f4771c & 1) == 1);
    }

    public synchronized boolean g() {
        if (this.f4779k != null) {
            return false;
        }
        if ((this.f4775g.f4788f || this.f4775g.f4787e) && (this.f4776h.f4782d || this.f4776h.f4781c)) {
            if (this.f4774f) {
                return false;
            }
        }
        return true;
    }

    public t h() {
        return this.f4777i;
    }

    void i() {
        boolean zG;
        synchronized (this) {
            this.f4775g.f4788f = true;
            zG = g();
            notifyAll();
        }
        if (zG) {
            return;
        }
        this.f4772d.c(this.f4771c);
    }

    public synchronized List<h.h0.i.c> j() {
        List<h.h0.i.c> list;
        if (!f()) {
            throw new IllegalStateException("servers cannot read response headers");
        }
        this.f4777i.g();
        while (this.f4773e == null && this.f4779k == null) {
            try {
                k();
            } catch (Throwable th) {
                this.f4777i.k();
                throw th;
            }
        }
        this.f4777i.k();
        list = this.f4773e;
        if (list == null) {
            throw new n(this.f4779k);
        }
        this.f4773e = null;
        return list;
    }

    void k() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    public t l() {
        return this.f4778j;
    }
}
