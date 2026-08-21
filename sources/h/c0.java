package h;

import h.s;
import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
public final class c0 implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a0 f4450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final y f4451c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f4452d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final String f4453e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final r f4454f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final s f4455g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final d0 f4456h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final c0 f4457i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final c0 f4458j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final c0 f4459k;
    final long l;
    final long m;
    private volatile d n;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        a0 f4460a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        y f4461b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f4462c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f4463d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        r f4464e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        s.a f4465f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        d0 f4466g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        c0 f4467h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        c0 f4468i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        c0 f4469j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        long f4470k;
        long l;

        public a() {
            this.f4462c = -1;
            this.f4465f = new s.a();
        }

        a(c0 c0Var) {
            this.f4462c = -1;
            this.f4460a = c0Var.f4450b;
            this.f4461b = c0Var.f4451c;
            this.f4462c = c0Var.f4452d;
            this.f4463d = c0Var.f4453e;
            this.f4464e = c0Var.f4454f;
            this.f4465f = c0Var.f4455g.a();
            this.f4466g = c0Var.f4456h;
            this.f4467h = c0Var.f4457i;
            this.f4468i = c0Var.f4458j;
            this.f4469j = c0Var.f4459k;
            this.f4470k = c0Var.l;
            this.l = c0Var.m;
        }

        private void a(String str, c0 c0Var) {
            if (c0Var.f4456h != null) {
                throw new IllegalArgumentException(str + ".body != null");
            }
            if (c0Var.f4457i != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            if (c0Var.f4458j != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            }
            if (c0Var.f4459k == null) {
                return;
            }
            throw new IllegalArgumentException(str + ".priorResponse != null");
        }

        private void d(c0 c0Var) {
            if (c0Var.f4456h != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public a a(int i2) {
            this.f4462c = i2;
            return this;
        }

        public a a(long j2) {
            this.l = j2;
            return this;
        }

        public a a(a0 a0Var) {
            this.f4460a = a0Var;
            return this;
        }

        public a a(c0 c0Var) {
            if (c0Var != null) {
                a("cacheResponse", c0Var);
            }
            this.f4468i = c0Var;
            return this;
        }

        public a a(d0 d0Var) {
            this.f4466g = d0Var;
            return this;
        }

        public a a(r rVar) {
            this.f4464e = rVar;
            return this;
        }

        public a a(s sVar) {
            this.f4465f = sVar.a();
            return this;
        }

        public a a(y yVar) {
            this.f4461b = yVar;
            return this;
        }

        public a a(String str) {
            this.f4463d = str;
            return this;
        }

        public a a(String str, String str2) {
            this.f4465f.a(str, str2);
            return this;
        }

        public c0 a() {
            if (this.f4460a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f4461b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f4462c >= 0) {
                if (this.f4463d != null) {
                    return new c0(this);
                }
                throw new IllegalStateException("message == null");
            }
            throw new IllegalStateException("code < 0: " + this.f4462c);
        }

        public a b(long j2) {
            this.f4470k = j2;
            return this;
        }

        public a b(c0 c0Var) {
            if (c0Var != null) {
                a("networkResponse", c0Var);
            }
            this.f4467h = c0Var;
            return this;
        }

        public a c(c0 c0Var) {
            if (c0Var != null) {
                d(c0Var);
            }
            this.f4469j = c0Var;
            return this;
        }
    }

    c0(a aVar) {
        this.f4450b = aVar.f4460a;
        this.f4451c = aVar.f4461b;
        this.f4452d = aVar.f4462c;
        this.f4453e = aVar.f4463d;
        this.f4454f = aVar.f4464e;
        this.f4455g = aVar.f4465f.a();
        this.f4456h = aVar.f4466g;
        this.f4457i = aVar.f4467h;
        this.f4458j = aVar.f4468i;
        this.f4459k = aVar.f4469j;
        this.l = aVar.f4470k;
        this.m = aVar.l;
    }

    public String a(String str, String str2) {
        String strA = this.f4455g.a(str);
        return strA != null ? strA : str2;
    }

    public String b(String str) {
        return a(str, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        d0 d0Var = this.f4456h;
        if (d0Var == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        d0Var.close();
    }

    public d0 j() {
        return this.f4456h;
    }

    public d k() {
        d dVar = this.n;
        if (dVar != null) {
            return dVar;
        }
        d dVarA = d.a(this.f4455g);
        this.n = dVarA;
        return dVarA;
    }

    public int l() {
        return this.f4452d;
    }

    public r m() {
        return this.f4454f;
    }

    public s n() {
        return this.f4455g;
    }

    public boolean o() {
        int i2 = this.f4452d;
        return i2 >= 200 && i2 < 300;
    }

    public String p() {
        return this.f4453e;
    }

    public a q() {
        return new a(this);
    }

    public c0 r() {
        return this.f4459k;
    }

    public long s() {
        return this.m;
    }

    public a0 t() {
        return this.f4450b;
    }

    public String toString() {
        return "Response{protocol=" + this.f4451c + ", code=" + this.f4452d + ", message=" + this.f4453e + ", url=" + this.f4450b.g() + '}';
    }

    public long u() {
        return this.l;
    }
}
