package h.h0.g;

import h.a0;
import h.c0;
import h.p;
import h.u;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g implements u.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<u> f4606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h.h0.f.g f4607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f4608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h.h0.f.c f4609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a0 f4611f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final h.e f4612g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final p f4613h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f4614i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f4615j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f4616k;
    private int l;

    public g(List<u> list, h.h0.f.g gVar, c cVar, h.h0.f.c cVar2, int i2, a0 a0Var, h.e eVar, p pVar, int i3, int i4, int i5) {
        this.f4606a = list;
        this.f4609d = cVar2;
        this.f4607b = gVar;
        this.f4608c = cVar;
        this.f4610e = i2;
        this.f4611f = a0Var;
        this.f4612g = eVar;
        this.f4613h = pVar;
        this.f4614i = i3;
        this.f4615j = i4;
        this.f4616k = i5;
    }

    @Override // h.u.a
    public int a() {
        return this.f4615j;
    }

    @Override // h.u.a
    public c0 a(a0 a0Var) {
        return a(a0Var, this.f4607b, this.f4608c, this.f4609d);
    }

    public c0 a(a0 a0Var, h.h0.f.g gVar, c cVar, h.h0.f.c cVar2) {
        if (this.f4610e >= this.f4606a.size()) {
            throw new AssertionError();
        }
        this.l++;
        if (this.f4608c != null && !this.f4609d.a(a0Var.g())) {
            throw new IllegalStateException("network interceptor " + this.f4606a.get(this.f4610e - 1) + " must retain the same host and port");
        }
        if (this.f4608c != null && this.l > 1) {
            throw new IllegalStateException("network interceptor " + this.f4606a.get(this.f4610e - 1) + " must call proceed() exactly once");
        }
        g gVar2 = new g(this.f4606a, gVar, cVar, cVar2, this.f4610e + 1, a0Var, this.f4612g, this.f4613h, this.f4614i, this.f4615j, this.f4616k);
        u uVar = this.f4606a.get(this.f4610e);
        c0 c0VarA = uVar.a(gVar2);
        if (cVar != null && this.f4610e + 1 < this.f4606a.size() && gVar2.l != 1) {
            throw new IllegalStateException("network interceptor " + uVar + " must call proceed() exactly once");
        }
        if (c0VarA == null) {
            throw new NullPointerException("interceptor " + uVar + " returned null");
        }
        if (c0VarA.j() != null) {
            return c0VarA;
        }
        throw new IllegalStateException("interceptor " + uVar + " returned a response with no body");
    }

    @Override // h.u.a
    public int b() {
        return this.f4616k;
    }

    @Override // h.u.a
    public h.i c() {
        return this.f4609d;
    }

    @Override // h.u.a
    public int d() {
        return this.f4614i;
    }

    @Override // h.u.a
    public a0 e() {
        return this.f4611f;
    }

    public h.e f() {
        return this.f4612g;
    }

    public p g() {
        return this.f4613h;
    }

    public c h() {
        return this.f4608c;
    }

    public h.h0.f.g i() {
        return this.f4607b;
    }
}
