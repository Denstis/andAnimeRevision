package h;

import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class z implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final x f4973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final h.h0.g.j f4974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private p f4975d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final a0 f4976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f4977f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4978g;

    final class a extends h.h0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final f f4979c;

        a(f fVar) {
            super("OkHttp %s", z.this.b());
            this.f4979c = fVar;
        }

        @Override // h.h0.b
        protected void b() {
            IOException e2;
            c0 c0VarA;
            boolean z = true;
            try {
                try {
                    c0VarA = z.this.a();
                } catch (IOException e3) {
                    e2 = e3;
                    z = false;
                }
                try {
                    if (z.this.f4974c.b()) {
                        this.f4979c.a(z.this, new IOException("Canceled"));
                    } else {
                        this.f4979c.a(z.this, c0VarA);
                    }
                } catch (IOException e4) {
                    e2 = e4;
                    if (z) {
                        h.h0.j.f.c().a(4, "Callback failure for " + z.this.c(), e2);
                    } else {
                        z.this.f4975d.a(z.this, e2);
                        this.f4979c.a(z.this, e2);
                    }
                }
            } finally {
                z.this.f4973b.g().b(this);
            }
        }

        z c() {
            return z.this;
        }

        String d() {
            return z.this.f4976e.g().g();
        }
    }

    private z(x xVar, a0 a0Var, boolean z) {
        this.f4973b = xVar;
        this.f4976e = a0Var;
        this.f4977f = z;
        this.f4974c = new h.h0.g.j(xVar, z);
    }

    static z a(x xVar, a0 a0Var, boolean z) {
        z zVar = new z(xVar, a0Var, z);
        zVar.f4975d = xVar.i().a(zVar);
        return zVar;
    }

    private void d() {
        this.f4974c.a(h.h0.j.f.c().a("response.body().close()"));
    }

    c0 a() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f4973b.o());
        arrayList.add(this.f4974c);
        arrayList.add(new h.h0.g.a(this.f4973b.f()));
        arrayList.add(new h.h0.e.a(this.f4973b.p()));
        arrayList.add(new h.h0.f.a(this.f4973b));
        if (!this.f4977f) {
            arrayList.addAll(this.f4973b.q());
        }
        arrayList.add(new h.h0.g.b(this.f4977f));
        return new h.h0.g.g(arrayList, null, null, null, 0, this.f4976e, this, this.f4975d, this.f4973b.c(), this.f4973b.w(), this.f4973b.A()).a(this.f4976e);
    }

    @Override // h.e
    public void a(f fVar) {
        synchronized (this) {
            if (this.f4978g) {
                throw new IllegalStateException("Already Executed");
            }
            this.f4978g = true;
        }
        d();
        this.f4975d.b(this);
        this.f4973b.g().a(new a(fVar));
    }

    String b() {
        return this.f4976e.g().m();
    }

    String c() {
        StringBuilder sb = new StringBuilder();
        sb.append(j() ? "canceled " : "");
        sb.append(this.f4977f ? "web socket" : "call");
        sb.append(" to ");
        sb.append(b());
        return sb.toString();
    }

    @Override // h.e
    public void cancel() {
        this.f4974c.a();
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public z m7clone() {
        return a(this.f4973b, this.f4976e, this.f4977f);
    }

    @Override // h.e
    public boolean j() {
        return this.f4974c.b();
    }

    @Override // h.e
    public c0 k() {
        synchronized (this) {
            if (this.f4978g) {
                throw new IllegalStateException("Already Executed");
            }
            this.f4978g = true;
        }
        d();
        this.f4975d.b(this);
        try {
            try {
                this.f4973b.g().a(this);
                c0 c0VarA = a();
                if (c0VarA != null) {
                    return c0VarA;
                }
                throw new IOException("Canceled");
            } catch (IOException e2) {
                this.f4975d.a(this, e2);
                throw e2;
            }
        } finally {
            this.f4973b.g().b(this);
        }
    }
}
