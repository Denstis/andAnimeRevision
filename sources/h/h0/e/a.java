package h.h0.e;

import h.a0;
import h.c0;
import h.d0;
import h.h0.e.c;
import h.h0.g.f;
import h.h0.g.h;
import h.s;
import h.u;
import h.y;
import i.e;
import i.l;
import i.r;
import i.s;
import i.t;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class a implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final d f4542a;

    /* JADX INFO: renamed from: h.h0.e.a$a, reason: collision with other inner class name */
    class C0186a implements s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f4543b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ e f4544c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ b f4545d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ i.d f4546e;

        C0186a(a aVar, e eVar, b bVar, i.d dVar) {
            this.f4544c = eVar;
            this.f4545d = bVar;
            this.f4546e = dVar;
        }

        @Override // i.s
        public long a(i.c cVar, long j2) throws IOException {
            try {
                long jA = this.f4544c.a(cVar, j2);
                if (jA != -1) {
                    cVar.a(this.f4546e.a(), cVar.s() - jA, jA);
                    this.f4546e.i();
                    return jA;
                }
                if (!this.f4543b) {
                    this.f4543b = true;
                    this.f4546e.close();
                }
                return -1L;
            } catch (IOException e2) {
                if (!this.f4543b) {
                    this.f4543b = true;
                    this.f4545d.a();
                }
                throw e2;
            }
        }

        @Override // i.s
        public t b() {
            return this.f4544c.b();
        }

        @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.f4543b && !h.h0.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                this.f4543b = true;
                this.f4545d.a();
            }
            this.f4544c.close();
        }
    }

    public a(d dVar) {
        this.f4542a = dVar;
    }

    private static c0 a(c0 c0Var) {
        if (c0Var == null || c0Var.j() == null) {
            return c0Var;
        }
        c0.a aVarQ = c0Var.q();
        aVarQ.a((d0) null);
        return aVarQ.a();
    }

    private c0 a(b bVar, c0 c0Var) {
        r rVarB;
        if (bVar == null || (rVarB = bVar.b()) == null) {
            return c0Var;
        }
        C0186a c0186a = new C0186a(this, c0Var.j().m(), bVar, l.a(rVarB));
        String strB = c0Var.b("Content-Type");
        long jK = c0Var.j().k();
        c0.a aVarQ = c0Var.q();
        aVarQ.a(new h(strB, jK, l.a(c0186a)));
        return aVarQ.a();
    }

    private static h.s a(h.s sVar, h.s sVar2) {
        s.a aVar = new s.a();
        int iB = sVar.b();
        for (int i2 = 0; i2 < iB; i2++) {
            String strA = sVar.a(i2);
            String strB = sVar.b(i2);
            if ((!"Warning".equalsIgnoreCase(strA) || !strB.startsWith("1")) && (a(strA) || !b(strA) || sVar2.a(strA) == null)) {
                h.h0.a.f4527a.a(aVar, strA, strB);
            }
        }
        int iB2 = sVar2.b();
        for (int i3 = 0; i3 < iB2; i3++) {
            String strA2 = sVar2.a(i3);
            if (!a(strA2) && b(strA2)) {
                h.h0.a.f4527a.a(aVar, strA2, sVar2.b(i3));
            }
        }
        return aVar.a();
    }

    static boolean a(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    static boolean b(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    @Override // h.u
    public c0 a(u.a aVar) {
        d dVar = this.f4542a;
        c0 c0VarB = dVar != null ? dVar.b(aVar.e()) : null;
        c cVarA = new c.a(System.currentTimeMillis(), aVar.e(), c0VarB).a();
        a0 a0Var = cVarA.f4547a;
        c0 c0Var = cVarA.f4548b;
        d dVar2 = this.f4542a;
        if (dVar2 != null) {
            dVar2.a(cVarA);
        }
        if (c0VarB != null && c0Var == null) {
            h.h0.c.a(c0VarB.j());
        }
        if (a0Var == null && c0Var == null) {
            c0.a aVar2 = new c0.a();
            aVar2.a(aVar.e());
            aVar2.a(y.HTTP_1_1);
            aVar2.a(504);
            aVar2.a("Unsatisfiable Request (only-if-cached)");
            aVar2.a(h.h0.c.f4531c);
            aVar2.b(-1L);
            aVar2.a(System.currentTimeMillis());
            return aVar2.a();
        }
        if (a0Var == null) {
            c0.a aVarQ = c0Var.q();
            aVarQ.a(a(c0Var));
            return aVarQ.a();
        }
        try {
            c0 c0VarA = aVar.a(a0Var);
            if (c0VarA == null && c0VarB != null) {
            }
            if (c0Var != null) {
                if (c0VarA.l() == 304) {
                    c0.a aVarQ2 = c0Var.q();
                    aVarQ2.a(a(c0Var.n(), c0VarA.n()));
                    aVarQ2.b(c0VarA.u());
                    aVarQ2.a(c0VarA.s());
                    aVarQ2.a(a(c0Var));
                    aVarQ2.b(a(c0VarA));
                    c0 c0VarA2 = aVarQ2.a();
                    c0VarA.j().close();
                    this.f4542a.a();
                    this.f4542a.a(c0Var, c0VarA2);
                    return c0VarA2;
                }
                h.h0.c.a(c0Var.j());
            }
            c0.a aVarQ3 = c0VarA.q();
            aVarQ3.a(a(c0Var));
            aVarQ3.b(a(c0VarA));
            c0 c0VarA3 = aVarQ3.a();
            if (this.f4542a != null) {
                if (h.h0.g.e.b(c0VarA3) && c.a(c0VarA3, a0Var)) {
                    return a(this.f4542a.a(c0VarA3), c0VarA3);
                }
                if (f.a(a0Var.e())) {
                    try {
                        this.f4542a.a(a0Var);
                    } catch (IOException unused) {
                    }
                }
            }
            return c0VarA3;
        } finally {
            if (c0VarB != null) {
                h.h0.c.a(c0VarB.j());
            }
        }
    }
}
