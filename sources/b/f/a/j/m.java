package b.f.a.j;

import b.f.a.j.e;

/* JADX INFO: loaded from: classes.dex */
public class m extends o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    e f2430c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    m f2431d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f2432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    m f2433f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f2434g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private m f2436i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f2435h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private n f2437j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f2438k = 1;
    private n l = null;
    private int m = 1;

    public m(e eVar) {
        this.f2430c = eVar;
    }

    String a(int i2) {
        return i2 == 1 ? "DIRECT" : i2 == 2 ? "CENTER" : i2 == 3 ? "MATCH" : i2 == 4 ? "CHAIN" : i2 == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public void a(int i2, m mVar, int i3) {
        this.f2435h = i2;
        this.f2431d = mVar;
        this.f2432e = i3;
        this.f2431d.a(this);
    }

    void a(b.f.a.e eVar) {
        b.f.a.i iVarE = this.f2430c.e();
        m mVar = this.f2433f;
        if (mVar == null) {
            eVar.a(iVarE, (int) (this.f2434g + 0.5f));
        } else {
            eVar.a(iVarE, eVar.a(mVar.f2430c), (int) (this.f2434g + 0.5f), 6);
        }
    }

    public void a(m mVar, float f2) {
        if (this.f2441b == 0 || !(this.f2433f == mVar || this.f2434g == f2)) {
            this.f2433f = mVar;
            this.f2434g = f2;
            if (this.f2441b == 1) {
                b();
            }
            a();
        }
    }

    public void a(m mVar, int i2) {
        this.f2431d = mVar;
        this.f2432e = i2;
        this.f2431d.a(this);
    }

    public void a(m mVar, int i2, n nVar) {
        this.f2431d = mVar;
        this.f2431d.a(this);
        this.f2437j = nVar;
        this.f2438k = i2;
        this.f2437j.a(this);
    }

    public void b(int i2) {
        this.f2435h = i2;
    }

    public void b(m mVar, float f2) {
        this.f2436i = mVar;
    }

    public void b(m mVar, int i2, n nVar) {
        this.f2436i = mVar;
        this.l = nVar;
        this.m = i2;
    }

    @Override // b.f.a.j.o
    public void d() {
        super.d();
        this.f2431d = null;
        this.f2432e = 0.0f;
        this.f2437j = null;
        this.f2438k = 1;
        this.l = null;
        this.m = 1;
        this.f2433f = null;
        this.f2434g = 0.0f;
        this.f2436i = null;
        this.f2435h = 0;
    }

    @Override // b.f.a.j.o
    public void e() {
        m mVar;
        m mVar2;
        m mVar3;
        m mVar4;
        m mVar5;
        m mVar6;
        float f2;
        m mVar7;
        float fS;
        float f3;
        m mVar8;
        float f4;
        boolean z = true;
        if (this.f2441b == 1 || this.f2435h == 4) {
            return;
        }
        n nVar = this.f2437j;
        if (nVar != null) {
            if (nVar.f2441b != 1) {
                return;
            } else {
                this.f2432e = this.f2438k * nVar.f2439c;
            }
        }
        n nVar2 = this.l;
        if (nVar2 != null) {
            if (nVar2.f2441b != 1) {
                return;
            } else {
                float f5 = nVar2.f2439c;
            }
        }
        if (this.f2435h == 1 && ((mVar8 = this.f2431d) == null || mVar8.f2441b == 1)) {
            m mVar9 = this.f2431d;
            if (mVar9 == null) {
                this.f2433f = this;
                f4 = this.f2432e;
            } else {
                this.f2433f = mVar9.f2433f;
                f4 = mVar9.f2434g + this.f2432e;
            }
            this.f2434g = f4;
            a();
            return;
        }
        if (this.f2435h == 2 && (mVar4 = this.f2431d) != null && mVar4.f2441b == 1 && (mVar5 = this.f2436i) != null && (mVar6 = mVar5.f2431d) != null && mVar6.f2441b == 1) {
            if (b.f.a.e.h() != null) {
                b.f.a.e.h().v++;
            }
            this.f2433f = this.f2431d.f2433f;
            m mVar10 = this.f2436i;
            mVar10.f2433f = mVar10.f2431d.f2433f;
            e.d dVar = this.f2430c.f2374c;
            int i2 = 0;
            if (dVar != e.d.RIGHT && dVar != e.d.BOTTOM) {
                z = false;
            }
            if (z) {
                f2 = this.f2431d.f2434g;
                mVar7 = this.f2436i.f2431d;
            } else {
                f2 = this.f2436i.f2431d.f2434g;
                mVar7 = this.f2431d;
            }
            float f6 = f2 - mVar7.f2434g;
            e.d dVar2 = this.f2430c.f2374c;
            if (dVar2 == e.d.LEFT || dVar2 == e.d.RIGHT) {
                fS = f6 - this.f2430c.f2373b.s();
                f3 = this.f2430c.f2373b.V;
            } else {
                fS = f6 - r2.f2373b.i();
                f3 = this.f2430c.f2373b.W;
            }
            int iB = this.f2430c.b();
            int iB2 = this.f2436i.f2430c.b();
            if (this.f2430c.g() == this.f2436i.f2430c.g()) {
                f3 = 0.5f;
                iB2 = 0;
            } else {
                i2 = iB;
            }
            float f7 = i2;
            float f8 = iB2;
            float f9 = (fS - f7) - f8;
            if (z) {
                m mVar11 = this.f2436i;
                mVar11.f2434g = mVar11.f2431d.f2434g + f8 + (f9 * f3);
                this.f2434g = (this.f2431d.f2434g - f7) - (f9 * (1.0f - f3));
            } else {
                this.f2434g = this.f2431d.f2434g + f7 + (f9 * f3);
                m mVar12 = this.f2436i;
                mVar12.f2434g = (mVar12.f2431d.f2434g - f8) - (f9 * (1.0f - f3));
            }
        } else {
            if (this.f2435h != 3 || (mVar = this.f2431d) == null || mVar.f2441b != 1 || (mVar2 = this.f2436i) == null || (mVar3 = mVar2.f2431d) == null || mVar3.f2441b != 1) {
                if (this.f2435h == 5) {
                    this.f2430c.f2373b.G();
                    return;
                }
                return;
            }
            if (b.f.a.e.h() != null) {
                b.f.a.e.h().w++;
            }
            m mVar13 = this.f2431d;
            this.f2433f = mVar13.f2433f;
            m mVar14 = this.f2436i;
            m mVar15 = mVar14.f2431d;
            mVar14.f2433f = mVar15.f2433f;
            this.f2434g = mVar13.f2434g + this.f2432e;
            mVar14.f2434g = mVar15.f2434g + mVar14.f2432e;
        }
        a();
        this.f2436i.a();
    }

    public float f() {
        return this.f2434g;
    }

    public void g() {
        e eVarG = this.f2430c.g();
        if (eVarG == null) {
            return;
        }
        if (eVarG.g() == this.f2430c) {
            this.f2435h = 4;
            eVarG.d().f2435h = 4;
        }
        int iB = this.f2430c.b();
        e.d dVar = this.f2430c.f2374c;
        if (dVar == e.d.RIGHT || dVar == e.d.BOTTOM) {
            iB = -iB;
        }
        a(eVarG.d(), iB);
    }

    public String toString() {
        StringBuilder sb;
        String str;
        if (this.f2441b != 1) {
            sb = new StringBuilder();
            sb.append("{ ");
            sb.append(this.f2430c);
            str = " UNRESOLVED} type: ";
        } else if (this.f2433f == this) {
            sb = new StringBuilder();
            sb.append("[");
            sb.append(this.f2430c);
            sb.append(", RESOLVED: ");
            sb.append(this.f2434g);
            str = "]  type: ";
        } else {
            sb = new StringBuilder();
            sb.append("[");
            sb.append(this.f2430c);
            sb.append(", RESOLVED: ");
            sb.append(this.f2433f);
            sb.append(":");
            sb.append(this.f2434g);
            str = "] type: ";
        }
        sb.append(str);
        sb.append(a(this.f2435h));
        return sb.toString();
    }
}
