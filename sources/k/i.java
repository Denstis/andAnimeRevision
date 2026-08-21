package k;

import h.c0;
import h.d0;
import h.v;
import i.s;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class i<T> implements k.b<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o<T, ?> f5062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f5063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f5064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h.e f5065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Throwable f5066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5067g;

    class a implements h.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f5068a;

        a(d dVar) {
            this.f5068a = dVar;
        }

        private void a(Throwable th) {
            try {
                this.f5068a.a(i.this, th);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }

        @Override // h.f
        public void a(h.e eVar, c0 c0Var) {
            try {
                try {
                    this.f5068a.a(i.this, i.this.a(c0Var));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                a(th2);
            }
        }

        @Override // h.f
        public void a(h.e eVar, IOException iOException) {
            a(iOException);
        }
    }

    static final class b extends d0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d0 f5070c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        IOException f5071d;

        class a extends i.h {
            a(s sVar) {
                super(sVar);
            }

            @Override // i.h, i.s
            public long a(i.c cVar, long j2) throws IOException {
                try {
                    return super.a(cVar, j2);
                } catch (IOException e2) {
                    b.this.f5071d = e2;
                    throw e2;
                }
            }
        }

        b(d0 d0Var) {
            this.f5070c = d0Var;
        }

        @Override // h.d0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f5070c.close();
        }

        @Override // h.d0
        public long k() {
            return this.f5070c.k();
        }

        @Override // h.d0
        public v l() {
            return this.f5070c.l();
        }

        @Override // h.d0
        public i.e m() {
            return i.l.a(new a(this.f5070c.m()));
        }

        void o() throws IOException {
            IOException iOException = this.f5071d;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    static final class c extends d0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final v f5073c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f5074d;

        c(v vVar, long j2) {
            this.f5073c = vVar;
            this.f5074d = j2;
        }

        @Override // h.d0
        public long k() {
            return this.f5074d;
        }

        @Override // h.d0
        public v l() {
            return this.f5073c;
        }

        @Override // h.d0
        public i.e m() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    i(o<T, ?> oVar, Object[] objArr) {
        this.f5062b = oVar;
        this.f5063c = objArr;
    }

    private h.e a() {
        h.e eVarA = this.f5062b.a(this.f5063c);
        if (eVarA != null) {
            return eVarA;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    m<T> a(c0 c0Var) throws IOException {
        d0 d0VarJ = c0Var.j();
        c0.a aVarQ = c0Var.q();
        aVarQ.a(new c(d0VarJ.l(), d0VarJ.k()));
        c0 c0VarA = aVarQ.a();
        int iL = c0VarA.l();
        if (iL < 200 || iL >= 300) {
            try {
                return m.a(p.a(d0VarJ), c0VarA);
            } finally {
                d0VarJ.close();
            }
        }
        if (iL == 204 || iL == 205) {
            d0VarJ.close();
            return m.a((Object) null, c0VarA);
        }
        b bVar = new b(d0VarJ);
        try {
            return m.a(this.f5062b.a(bVar), c0VarA);
        } catch (RuntimeException e2) {
            bVar.o();
            throw e2;
        }
    }

    @Override // k.b
    public void a(d<T> dVar) {
        h.e eVar;
        Throwable th;
        p.a(dVar, "callback == null");
        synchronized (this) {
            if (this.f5067g) {
                throw new IllegalStateException("Already executed.");
            }
            this.f5067g = true;
            eVar = this.f5065e;
            th = this.f5066f;
            if (eVar == null && th == null) {
                try {
                    h.e eVarA = a();
                    this.f5065e = eVarA;
                    eVar = eVarA;
                } catch (Throwable th2) {
                    th = th2;
                    p.a(th);
                    this.f5066f = th;
                }
            }
        }
        if (th != null) {
            dVar.a(this, th);
            return;
        }
        if (this.f5064d) {
            eVar.cancel();
        }
        eVar.a(new a(dVar));
    }

    @Override // k.b
    public void cancel() {
        h.e eVar;
        this.f5064d = true;
        synchronized (this) {
            eVar = this.f5065e;
        }
        if (eVar != null) {
            eVar.cancel();
        }
    }

    @Override // k.b
    public i<T> clone() {
        return new i<>(this.f5062b, this.f5063c);
    }

    @Override // k.b
    public boolean j() {
        boolean z = true;
        if (this.f5064d) {
            return true;
        }
        synchronized (this) {
            if (this.f5065e == null || !this.f5065e.j()) {
                z = false;
            }
        }
        return z;
    }

    @Override // k.b
    public m<T> k() {
        h.e eVarA;
        synchronized (this) {
            if (this.f5067g) {
                throw new IllegalStateException("Already executed.");
            }
            this.f5067g = true;
            if (this.f5066f != null) {
                if (this.f5066f instanceof IOException) {
                    throw ((IOException) this.f5066f);
                }
                if (this.f5066f instanceof RuntimeException) {
                    throw ((RuntimeException) this.f5066f);
                }
                throw ((Error) this.f5066f);
            }
            eVarA = this.f5065e;
            if (eVarA == null) {
                try {
                    eVarA = a();
                    this.f5065e = eVarA;
                } catch (IOException | Error | RuntimeException e2) {
                    p.a(e2);
                    this.f5066f = e2;
                    throw e2;
                }
            }
        }
        if (this.f5064d) {
            eVarA.cancel();
        }
        return a(eVarA.k());
    }
}
