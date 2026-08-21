package h.h0.g;

import h.a0;
import h.b0;
import h.c0;
import h.l;
import h.m;
import h.s;
import h.u;
import h.v;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f4600a;

    public a(m mVar) {
        this.f4600a = mVar;
    }

    private String a(List<l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                sb.append("; ");
            }
            l lVar = list.get(i2);
            sb.append(lVar.a());
            sb.append('=');
            sb.append(lVar.b());
        }
        return sb.toString();
    }

    @Override // h.u
    public c0 a(u.a aVar) {
        a0 a0VarE = aVar.e();
        a0.a aVarF = a0VarE.f();
        b0 b0VarA = a0VarE.a();
        if (b0VarA != null) {
            v vVarB = b0VarA.b();
            if (vVarB != null) {
                aVarF.b("Content-Type", vVarB.toString());
            }
            long jA = b0VarA.a();
            if (jA != -1) {
                aVarF.b("Content-Length", Long.toString(jA));
                aVarF.a("Transfer-Encoding");
            } else {
                aVarF.b("Transfer-Encoding", "chunked");
                aVarF.a("Content-Length");
            }
        }
        boolean z = false;
        if (a0VarE.a("Host") == null) {
            aVarF.b("Host", h.h0.c.a(a0VarE.g(), false));
        }
        if (a0VarE.a("Connection") == null) {
            aVarF.b("Connection", "Keep-Alive");
        }
        if (a0VarE.a("Accept-Encoding") == null && a0VarE.a("Range") == null) {
            z = true;
            aVarF.b("Accept-Encoding", "gzip");
        }
        List<l> listA = this.f4600a.a(a0VarE.g());
        if (!listA.isEmpty()) {
            aVarF.b("Cookie", a(listA));
        }
        if (a0VarE.a("User-Agent") == null) {
            aVarF.b("User-Agent", h.h0.d.a());
        }
        c0 c0VarA = aVar.a(aVarF.a());
        e.a(this.f4600a, a0VarE.g(), c0VarA.n());
        c0.a aVarQ = c0VarA.q();
        aVarQ.a(a0VarE);
        if (z && "gzip".equalsIgnoreCase(c0VarA.b("Content-Encoding")) && e.b(c0VarA)) {
            i.j jVar = new i.j(c0VarA.j().m());
            s.a aVarA = c0VarA.n().a();
            aVarA.b("Content-Encoding");
            aVarA.b("Content-Length");
            aVarQ.a(aVarA.a());
            aVarQ.a(new h(c0VarA.b("Content-Type"), -1L, i.l.a(jVar)));
        }
        return aVarQ.a();
    }
}
