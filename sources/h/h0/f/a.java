package h.h0.f;

import h.a0;
import h.c0;
import h.u;
import h.x;

/* JADX INFO: loaded from: classes.dex */
public final class a implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f4560a;

    public a(x xVar) {
        this.f4560a = xVar;
    }

    @Override // h.u
    public c0 a(u.a aVar) {
        h.h0.g.g gVar = (h.h0.g.g) aVar;
        a0 a0VarE = gVar.e();
        g gVarI = gVar.i();
        return gVar.a(a0VarE, gVarI, gVarI.a(this.f4560a, aVar, !a0VarE.e().equals("GET")), gVarI.c());
    }
}
