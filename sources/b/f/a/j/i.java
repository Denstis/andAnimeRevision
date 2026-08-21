package b.f.a.j;

import b.f.a.j.e;
import b.f.a.j.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class i extends f {
    protected float k0 = -1.0f;
    protected int l0 = -1;
    protected int m0 = -1;
    private e n0 = this.t;
    private int o0 = 0;
    private boolean p0 = false;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2428a = new int[e.d.values().length];

        static {
            try {
                f2428a[e.d.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2428a[e.d.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2428a[e.d.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2428a[e.d.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2428a[e.d.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2428a[e.d.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2428a[e.d.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2428a[e.d.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2428a[e.d.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public i() {
        new l();
        this.B.clear();
        this.B.add(this.n0);
        int length = this.A.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.A[i2] = this.n0;
        }
    }

    public int J() {
        return this.o0;
    }

    @Override // b.f.a.j.f
    public e a(e.d dVar) {
        switch (a.f2428a[dVar.ordinal()]) {
            case 1:
            case 2:
                if (this.o0 == 1) {
                    return this.n0;
                }
                break;
            case 3:
            case 4:
                if (this.o0 == 0) {
                    return this.n0;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
        }
        throw new AssertionError(dVar.name());
    }

    @Override // b.f.a.j.f
    public void a(int i2) {
        int i3;
        m mVarD;
        e eVar;
        m mVarD2;
        e eVar2;
        e eVar3;
        m mVarD3;
        int i4;
        f fVarK = k();
        if (fVarK == null) {
            return;
        }
        if (J() == 1) {
            this.t.d().a(1, fVarK.t.d(), 0);
            this.v.d().a(1, fVarK.t.d(), 0);
            if (this.l0 != -1) {
                this.s.d().a(1, fVarK.s.d(), this.l0);
                mVarD2 = this.u.d();
                eVar3 = fVarK.s;
                mVarD3 = eVar3.d();
                i4 = this.l0;
            } else {
                if (this.m0 == -1) {
                    if (this.k0 == -1.0f || fVarK.j() != f.b.FIXED) {
                        return;
                    }
                    i3 = (int) (fVarK.E * this.k0);
                    this.s.d().a(1, fVarK.s.d(), i3);
                    mVarD = this.u.d();
                    eVar = fVarK.s;
                    mVarD.a(1, eVar.d(), i3);
                    return;
                }
                this.s.d().a(1, fVarK.u.d(), -this.m0);
                mVarD2 = this.u.d();
                eVar2 = fVarK.u;
                mVarD3 = eVar2.d();
                i4 = -this.m0;
            }
        } else {
            this.s.d().a(1, fVarK.s.d(), 0);
            this.u.d().a(1, fVarK.s.d(), 0);
            if (this.l0 != -1) {
                this.t.d().a(1, fVarK.t.d(), this.l0);
                mVarD2 = this.v.d();
                eVar3 = fVarK.t;
                mVarD3 = eVar3.d();
                i4 = this.l0;
            } else {
                if (this.m0 == -1) {
                    if (this.k0 == -1.0f || fVarK.q() != f.b.FIXED) {
                        return;
                    }
                    i3 = (int) (fVarK.F * this.k0);
                    this.t.d().a(1, fVarK.t.d(), i3);
                    mVarD = this.v.d();
                    eVar = fVarK.t;
                    mVarD.a(1, eVar.d(), i3);
                    return;
                }
                this.t.d().a(1, fVarK.v.d(), -this.m0);
                mVarD2 = this.v.d();
                eVar2 = fVarK.v;
                mVarD3 = eVar2.d();
                i4 = -this.m0;
            }
        }
        mVarD2.a(1, mVarD3, i4);
    }

    @Override // b.f.a.j.f
    public void a(b.f.a.e eVar) {
        g gVar = (g) k();
        if (gVar == null) {
            return;
        }
        e eVarA = gVar.a(e.d.LEFT);
        e eVarA2 = gVar.a(e.d.RIGHT);
        f fVar = this.D;
        boolean z = fVar != null && fVar.C[0] == f.b.WRAP_CONTENT;
        if (this.o0 == 0) {
            eVarA = gVar.a(e.d.TOP);
            eVarA2 = gVar.a(e.d.BOTTOM);
            f fVar2 = this.D;
            z = fVar2 != null && fVar2.C[1] == f.b.WRAP_CONTENT;
        }
        if (this.l0 != -1) {
            b.f.a.i iVarA = eVar.a(this.n0);
            eVar.a(iVarA, eVar.a(eVarA), this.l0, 6);
            if (z) {
                eVar.b(eVar.a(eVarA2), iVarA, 0, 5);
                return;
            }
            return;
        }
        if (this.m0 == -1) {
            if (this.k0 != -1.0f) {
                eVar.a(b.f.a.e.a(eVar, eVar.a(this.n0), eVar.a(eVarA), eVar.a(eVarA2), this.k0, this.p0));
                return;
            }
            return;
        }
        b.f.a.i iVarA2 = eVar.a(this.n0);
        b.f.a.i iVarA3 = eVar.a(eVarA2);
        eVar.a(iVarA2, iVarA3, -this.m0, 6);
        if (z) {
            eVar.b(iVarA2, eVar.a(eVarA), 0, 5);
            eVar.b(iVarA3, iVarA2, 0, 5);
        }
    }

    @Override // b.f.a.j.f
    public boolean a() {
        return true;
    }

    @Override // b.f.a.j.f
    public ArrayList<e> b() {
        return this.B;
    }

    @Override // b.f.a.j.f
    public void c(b.f.a.e eVar) {
        if (k() == null) {
            return;
        }
        int iB = eVar.b(this.n0);
        if (this.o0 == 1) {
            r(iB);
            s(0);
            g(k().i());
            o(0);
            return;
        }
        r(0);
        s(iB);
        o(k().s());
        g(0);
    }

    public void e(float f2) {
        if (f2 > -1.0f) {
            this.k0 = f2;
            this.l0 = -1;
            this.m0 = -1;
        }
    }

    public void t(int i2) {
        if (i2 > -1) {
            this.k0 = -1.0f;
            this.l0 = i2;
            this.m0 = -1;
        }
    }

    public void u(int i2) {
        if (i2 > -1) {
            this.k0 = -1.0f;
            this.l0 = -1;
            this.m0 = i2;
        }
    }

    public void v(int i2) {
        if (this.o0 == i2) {
            return;
        }
        this.o0 = i2;
        this.B.clear();
        this.n0 = this.o0 == 1 ? this.s : this.t;
        this.B.add(this.n0);
        int length = this.A.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.A[i3] = this.n0;
        }
    }
}
