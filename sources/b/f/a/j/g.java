package b.f.a.j;

import b.f.a.j.e;
import b.f.a.j.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g extends q {
    private p n0;
    int o0;
    int p0;
    int q0;
    int r0;
    private boolean l0 = false;
    protected b.f.a.e m0 = new b.f.a.e();
    int s0 = 0;
    int t0 = 0;
    d[] u0 = new d[4];
    d[] v0 = new d[4];
    public List<h> w0 = new ArrayList();
    public boolean x0 = false;
    public boolean y0 = false;
    public boolean z0 = false;
    public int A0 = 0;
    public int B0 = 0;
    private int C0 = 7;
    public boolean D0 = false;
    private boolean E0 = false;
    private boolean F0 = false;

    private void V() {
        this.s0 = 0;
        this.t0 = 0;
    }

    private void d(f fVar) {
        int i2 = this.s0 + 1;
        d[] dVarArr = this.v0;
        if (i2 >= dVarArr.length) {
            this.v0 = (d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
        }
        this.v0[this.s0] = new d(fVar, 0, P());
        this.s0++;
    }

    private void e(f fVar) {
        int i2 = this.t0 + 1;
        d[] dVarArr = this.u0;
        if (i2 >= dVarArr.length) {
            this.u0 = (d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
        }
        this.u0[this.t0] = new d(fVar, 1, P());
        this.t0++;
    }

    @Override // b.f.a.j.q, b.f.a.j.f
    public void D() {
        this.m0.f();
        this.o0 = 0;
        this.q0 = 0;
        this.p0 = 0;
        this.r0 = 0;
        this.w0.clear();
        this.D0 = false;
        super.D();
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02ca A[PHI: r0 r9
      0x02ca: PHI (r0v34 boolean) = (r0v33 boolean), (r0v36 boolean), (r0v36 boolean), (r0v36 boolean) binds: [B:117:0x028b, B:125:0x02b2, B:126:0x02b4, B:128:0x02ba] A[DONT_GENERATE, DONT_INLINE]
      0x02ca: PHI (r9v14 boolean) = (r9v13 boolean), (r9v16 boolean), (r9v16 boolean), (r9v16 boolean) binds: [B:117:0x028b, B:125:0x02b2, B:126:0x02b4, B:128:0x02ba] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x018b  */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v22 */
    @Override // b.f.a.j.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void K() {
        /*
            Method dump skipped, instruction units count: 833
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.j.g.K():void");
    }

    public int M() {
        return this.C0;
    }

    public boolean N() {
        return false;
    }

    public boolean O() {
        return this.F0;
    }

    public boolean P() {
        return this.l0;
    }

    public boolean Q() {
        return this.E0;
    }

    public void R() {
        if (!t(8)) {
            a(this.C0);
        }
        U();
    }

    public void S() {
        int size = this.k0.size();
        F();
        for (int i2 = 0; i2 < size; i2++) {
            this.k0.get(i2).F();
        }
    }

    public void T() {
        S();
        a(this.C0);
    }

    public void U() {
        m mVarD = a(e.d.LEFT).d();
        m mVarD2 = a(e.d.TOP).d();
        mVarD.a((m) null, 0.0f);
        mVarD2.a((m) null, 0.0f);
    }

    @Override // b.f.a.j.f
    public void a(int i2) {
        super.a(i2);
        int size = this.k0.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.k0.get(i3).a(i2);
        }
    }

    public void a(b.f.a.e eVar, boolean[] zArr) {
        zArr[2] = false;
        c(eVar);
        int size = this.k0.size();
        for (int i2 = 0; i2 < size; i2++) {
            f fVar = this.k0.get(i2);
            fVar.c(eVar);
            if (fVar.C[0] == f.b.MATCH_CONSTRAINT && fVar.s() < fVar.u()) {
                zArr[2] = true;
            }
            if (fVar.C[1] == f.b.MATCH_CONSTRAINT && fVar.i() < fVar.t()) {
                zArr[2] = true;
            }
        }
    }

    void a(f fVar, int i2) {
        if (i2 == 0) {
            d(fVar);
        } else if (i2 == 1) {
            e(fVar);
        }
    }

    public void c(boolean z) {
        this.l0 = z;
    }

    public boolean d(b.f.a.e eVar) {
        a(eVar);
        int size = this.k0.size();
        for (int i2 = 0; i2 < size; i2++) {
            f fVar = this.k0.get(i2);
            if (fVar instanceof g) {
                f.b[] bVarArr = fVar.C;
                f.b bVar = bVarArr[0];
                f.b bVar2 = bVarArr[1];
                if (bVar == f.b.WRAP_CONTENT) {
                    fVar.a(f.b.FIXED);
                }
                if (bVar2 == f.b.WRAP_CONTENT) {
                    fVar.b(f.b.FIXED);
                }
                fVar.a(eVar);
                if (bVar == f.b.WRAP_CONTENT) {
                    fVar.a(bVar);
                }
                if (bVar2 == f.b.WRAP_CONTENT) {
                    fVar.b(bVar2);
                }
            } else {
                k.a(this, eVar, fVar);
                fVar.a(eVar);
            }
        }
        if (this.s0 > 0) {
            c.a(this, eVar, 0);
        }
        if (this.t0 > 0) {
            c.a(this, eVar, 1);
        }
        return true;
    }

    public void f(int i2, int i3) {
        n nVar;
        n nVar2;
        if (this.C[0] != f.b.WRAP_CONTENT && (nVar2 = this.f2401c) != null) {
            nVar2.a(i2);
        }
        if (this.C[1] == f.b.WRAP_CONTENT || (nVar = this.f2402d) == null) {
            return;
        }
        nVar.a(i3);
    }

    public boolean t(int i2) {
        return (this.C0 & i2) == i2;
    }

    public void u(int i2) {
        this.C0 = i2;
    }
}
