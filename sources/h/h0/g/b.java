package h.h0.g;

import h.a0;
import h.c0;
import h.d0;
import h.u;
import i.l;
import i.r;
import java.net.ProtocolException;

/* JADX INFO: loaded from: classes.dex */
public final class b implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f4601a;

    static final class a extends i.g {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f4602c;

        a(r rVar) {
            super(rVar);
        }

        @Override // i.g, i.r
        public void b(i.c cVar, long j2) {
            super.b(cVar, j2);
            this.f4602c += j2;
        }
    }

    public b(boolean z) {
        this.f4601a = z;
    }

    @Override // h.u
    public c0 a(u.a aVar) throws ProtocolException {
        c0.a aVarQ;
        d0 d0VarA;
        g gVar = (g) aVar;
        c cVarH = gVar.h();
        h.h0.f.g gVarI = gVar.i();
        h.h0.f.c cVar = (h.h0.f.c) gVar.c();
        a0 a0VarE = gVar.e();
        long jCurrentTimeMillis = System.currentTimeMillis();
        gVar.g().d(gVar.f());
        cVarH.a(a0VarE);
        gVar.g().a(gVar.f(), a0VarE);
        c0.a aVarA = null;
        if (f.b(a0VarE.e()) && a0VarE.a() != null) {
            if ("100-continue".equalsIgnoreCase(a0VarE.a("Expect"))) {
                cVarH.b();
                gVar.g().f(gVar.f());
                aVarA = cVarH.a(true);
            }
            if (aVarA == null) {
                gVar.g().c(gVar.f());
                a aVar2 = new a(cVarH.a(a0VarE, a0VarE.a().a()));
                i.d dVarA = l.a(aVar2);
                a0VarE.a().a(dVarA);
                dVarA.close();
                gVar.g().a(gVar.f(), aVar2.f4602c);
            } else if (!cVar.d()) {
                gVarI.e();
            }
        }
        cVarH.a();
        if (aVarA == null) {
            gVar.g().f(gVar.f());
            aVarA = cVarH.a(false);
        }
        aVarA.a(a0VarE);
        aVarA.a(gVarI.c().c());
        aVarA.b(jCurrentTimeMillis);
        aVarA.a(System.currentTimeMillis());
        c0 c0VarA = aVarA.a();
        int iL = c0VarA.l();
        if (iL == 100) {
            c0.a aVarA2 = cVarH.a(false);
            aVarA2.a(a0VarE);
            aVarA2.a(gVarI.c().c());
            aVarA2.b(jCurrentTimeMillis);
            aVarA2.a(System.currentTimeMillis());
            c0VarA = aVarA2.a();
            iL = c0VarA.l();
        }
        gVar.g().a(gVar.f(), c0VarA);
        if (this.f4601a && iL == 101) {
            aVarQ = c0VarA.q();
            d0VarA = h.h0.c.f4531c;
        } else {
            aVarQ = c0VarA.q();
            d0VarA = cVarH.a(c0VarA);
        }
        aVarQ.a(d0VarA);
        c0 c0VarA2 = aVarQ.a();
        if ("close".equalsIgnoreCase(c0VarA2.t().a("Connection")) || "close".equalsIgnoreCase(c0VarA2.b("Connection"))) {
            gVarI.e();
        }
        if ((iL != 204 && iL != 205) || c0VarA2.j().k() <= 0) {
            return c0VarA2;
        }
        throw new ProtocolException("HTTP " + iL + " had non-zero Content-Length: " + c0VarA2.j().k());
    }
}
