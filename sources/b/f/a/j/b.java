package b.f.a.j;

import b.f.a.j.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b extends j {
    private int m0 = 0;
    private ArrayList<m> n0 = new ArrayList<>(4);
    private boolean o0 = true;

    @Override // b.f.a.j.f
    public void F() {
        super.F();
        this.n0.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0051 A[PHI: r9
      0x0051: PHI (r9v4 float) = (r9v3 float), (r9v5 float) binds: [B:27:0x004f, B:24:0x0048] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0084  */
    @Override // b.f.a.j.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void G() {
        /*
            r11 = this;
            int r0 = r11.m0
            r1 = 2139095039(0x7f7fffff, float:3.4028235E38)
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r0 == 0) goto L20
            if (r0 == r4) goto L18
            if (r0 == r3) goto L15
            if (r0 == r2) goto L12
            return
        L12:
            b.f.a.j.e r0 = r11.v
            goto L1a
        L15:
            b.f.a.j.e r0 = r11.t
            goto L22
        L18:
            b.f.a.j.e r0 = r11.u
        L1a:
            b.f.a.j.m r0 = r0.d()
            r1 = 0
            goto L26
        L20:
            b.f.a.j.e r0 = r11.s
        L22:
            b.f.a.j.m r0 = r0.d()
        L26:
            java.util.ArrayList<b.f.a.j.m> r5 = r11.n0
            int r5 = r5.size()
            r6 = 0
            r7 = 0
        L2e:
            if (r7 >= r5) goto L58
            java.util.ArrayList<b.f.a.j.m> r8 = r11.n0
            java.lang.Object r8 = r8.get(r7)
            b.f.a.j.m r8 = (b.f.a.j.m) r8
            int r9 = r8.f2441b
            if (r9 == r4) goto L3d
            return
        L3d:
            int r9 = r11.m0
            if (r9 == 0) goto L4b
            if (r9 != r3) goto L44
            goto L4b
        L44:
            float r9 = r8.f2434g
            int r10 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r10 <= 0) goto L55
            goto L51
        L4b:
            float r9 = r8.f2434g
            int r10 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r10 >= 0) goto L55
        L51:
            b.f.a.j.m r1 = r8.f2433f
            r6 = r1
            r1 = r9
        L55:
            int r7 = r7 + 1
            goto L2e
        L58:
            b.f.a.f r5 = b.f.a.e.h()
            if (r5 == 0) goto L69
            b.f.a.f r5 = b.f.a.e.h()
            long r7 = r5.y
            r9 = 1
            long r7 = r7 + r9
            r5.y = r7
        L69:
            r0.f2433f = r6
            r0.f2434g = r1
            r0.a()
            int r0 = r11.m0
            if (r0 == 0) goto L84
            if (r0 == r4) goto L81
            if (r0 == r3) goto L7e
            if (r0 == r2) goto L7b
            return
        L7b:
            b.f.a.j.e r0 = r11.t
            goto L86
        L7e:
            b.f.a.j.e r0 = r11.v
            goto L86
        L81:
            b.f.a.j.e r0 = r11.s
            goto L86
        L84:
            b.f.a.j.e r0 = r11.u
        L86:
            b.f.a.j.m r0 = r0.d()
            r0.a(r6, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.j.b.G():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0094 A[SYNTHETIC] */
    @Override // b.f.a.j.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(int r8) {
        /*
            r7 = this;
            b.f.a.j.f r8 = r7.D
            if (r8 != 0) goto L5
            return
        L5:
            b.f.a.j.g r8 = (b.f.a.j.g) r8
            r0 = 2
            boolean r8 = r8.t(r0)
            if (r8 != 0) goto Lf
            return
        Lf:
            int r8 = r7.m0
            r1 = 3
            r2 = 1
            if (r8 == 0) goto L25
            if (r8 == r2) goto L22
            if (r8 == r0) goto L1f
            if (r8 == r1) goto L1c
            return
        L1c:
            b.f.a.j.e r8 = r7.v
            goto L27
        L1f:
            b.f.a.j.e r8 = r7.t
            goto L27
        L22:
            b.f.a.j.e r8 = r7.u
            goto L27
        L25:
            b.f.a.j.e r8 = r7.s
        L27:
            b.f.a.j.m r8 = r8.d()
            r3 = 5
            r8.b(r3)
            int r3 = r7.m0
            r4 = 0
            r5 = 0
            if (r3 == 0) goto L44
            if (r3 != r2) goto L38
            goto L44
        L38:
            b.f.a.j.e r3 = r7.s
            b.f.a.j.m r3 = r3.d()
            r3.a(r5, r4)
            b.f.a.j.e r3 = r7.u
            goto L4f
        L44:
            b.f.a.j.e r3 = r7.t
            b.f.a.j.m r3 = r3.d()
            r3.a(r5, r4)
            b.f.a.j.e r3 = r7.v
        L4f:
            b.f.a.j.m r3 = r3.d()
            r3.a(r5, r4)
            java.util.ArrayList<b.f.a.j.m> r3 = r7.n0
            r3.clear()
            r3 = 0
        L5c:
            int r4 = r7.l0
            if (r3 >= r4) goto L97
            b.f.a.j.f[] r4 = r7.k0
            r4 = r4[r3]
            boolean r6 = r7.o0
            if (r6 != 0) goto L6f
            boolean r6 = r4.a()
            if (r6 != 0) goto L6f
            goto L94
        L6f:
            int r6 = r7.m0
            if (r6 == 0) goto L84
            if (r6 == r2) goto L81
            if (r6 == r0) goto L7e
            if (r6 == r1) goto L7b
            r4 = r5
            goto L8a
        L7b:
            b.f.a.j.e r4 = r4.v
            goto L86
        L7e:
            b.f.a.j.e r4 = r4.t
            goto L86
        L81:
            b.f.a.j.e r4 = r4.u
            goto L86
        L84:
            b.f.a.j.e r4 = r4.s
        L86:
            b.f.a.j.m r4 = r4.d()
        L8a:
            if (r4 == 0) goto L94
            java.util.ArrayList<b.f.a.j.m> r6 = r7.n0
            r6.add(r4)
            r4.a(r8)
        L94:
            int r3 = r3 + 1
            goto L5c
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.j.b.a(int):void");
    }

    @Override // b.f.a.j.f
    public void a(b.f.a.e eVar) {
        e[] eVarArr;
        boolean z;
        b.f.a.i iVar;
        e eVar2;
        int i2;
        int i3;
        e[] eVarArr2 = this.A;
        eVarArr2[0] = this.s;
        eVarArr2[2] = this.t;
        eVarArr2[1] = this.u;
        eVarArr2[3] = this.v;
        int i4 = 0;
        while (true) {
            eVarArr = this.A;
            if (i4 >= eVarArr.length) {
                break;
            }
            eVarArr[i4].f2380i = eVar.a(eVarArr[i4]);
            i4++;
        }
        int i5 = this.m0;
        if (i5 < 0 || i5 >= 4) {
            return;
        }
        e eVar3 = eVarArr[i5];
        for (int i6 = 0; i6 < this.l0; i6++) {
            f fVar = this.k0[i6];
            if ((this.o0 || fVar.a()) && ((((i2 = this.m0) == 0 || i2 == 1) && fVar.j() == f.b.MATCH_CONSTRAINT) || (((i3 = this.m0) == 2 || i3 == 3) && fVar.q() == f.b.MATCH_CONSTRAINT))) {
                z = true;
                break;
            }
        }
        z = false;
        int i7 = this.m0;
        if (i7 == 0 || i7 == 1 ? k().j() == f.b.WRAP_CONTENT : k().q() == f.b.WRAP_CONTENT) {
            z = false;
        }
        for (int i8 = 0; i8 < this.l0; i8++) {
            f fVar2 = this.k0[i8];
            if (this.o0 || fVar2.a()) {
                b.f.a.i iVarA = eVar.a(fVar2.A[this.m0]);
                e[] eVarArr3 = fVar2.A;
                int i9 = this.m0;
                eVarArr3[i9].f2380i = iVarA;
                if (i9 == 0 || i9 == 2) {
                    eVar.b(eVar3.f2380i, iVarA, z);
                } else {
                    eVar.a(eVar3.f2380i, iVarA, z);
                }
            }
        }
        int i10 = this.m0;
        if (i10 == 0) {
            eVar.a(this.u.f2380i, this.s.f2380i, 0, 6);
            if (z) {
                return;
            }
            iVar = this.s.f2380i;
            eVar2 = this.D.u;
        } else if (i10 == 1) {
            eVar.a(this.s.f2380i, this.u.f2380i, 0, 6);
            if (z) {
                return;
            }
            iVar = this.s.f2380i;
            eVar2 = this.D.s;
        } else if (i10 == 2) {
            eVar.a(this.v.f2380i, this.t.f2380i, 0, 6);
            if (z) {
                return;
            }
            iVar = this.t.f2380i;
            eVar2 = this.D.v;
        } else {
            if (i10 != 3) {
                return;
            }
            eVar.a(this.t.f2380i, this.v.f2380i, 0, 6);
            if (z) {
                return;
            }
            iVar = this.t.f2380i;
            eVar2 = this.D.t;
        }
        eVar.a(iVar, eVar2.f2380i, 0, 5);
    }

    @Override // b.f.a.j.f
    public boolean a() {
        return true;
    }

    public void c(boolean z) {
        this.o0 = z;
    }

    public void t(int i2) {
        this.m0 = i2;
    }
}
