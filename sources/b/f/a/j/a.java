package b.f.a.j;

import b.f.a.j.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static int a(f fVar) {
        if (fVar.j() == f.b.MATCH_CONSTRAINT) {
            int i2 = (int) (fVar.H == 0 ? fVar.i() * fVar.G : fVar.i() / fVar.G);
            fVar.o(i2);
            return i2;
        }
        if (fVar.q() != f.b.MATCH_CONSTRAINT) {
            return -1;
        }
        int iS = (int) (fVar.H == 1 ? fVar.s() * fVar.G : fVar.s() / fVar.G);
        fVar.g(iS);
        return iS;
    }

    private static int a(f fVar, int i2) {
        e eVar;
        int i3 = i2 * 2;
        e[] eVarArr = fVar.A;
        e eVar2 = eVarArr[i3];
        e eVar3 = eVarArr[i3 + 1];
        e eVar4 = eVar2.f2375d;
        if (eVar4 == null) {
            return 0;
        }
        f fVar2 = eVar4.f2373b;
        f fVar3 = fVar.D;
        if (fVar2 != fVar3 || (eVar = eVar3.f2375d) == null || eVar.f2373b != fVar3) {
            return 0;
        }
        return (int) ((((fVar3.d(i2) - eVar2.b()) - eVar3.b()) - fVar.d(i2)) * (i2 == 0 ? fVar.V : fVar.W));
    }

    private static int a(f fVar, int i2, boolean z, int i3) {
        int i4;
        int iC;
        int i5;
        int i6;
        int i7;
        int i8;
        int iS;
        int i9;
        int i10;
        int i11;
        int iMax = 0;
        if (!fVar.b0) {
            return 0;
        }
        boolean z2 = fVar.w.f2375d != null && i2 == 1;
        if (z) {
            i4 = fVar.c();
            iC = fVar.i() - fVar.c();
            i6 = i2 * 2;
            i5 = i6 + 1;
        } else {
            i4 = fVar.i() - fVar.c();
            iC = fVar.c();
            i5 = i2 * 2;
            i6 = i5 + 1;
        }
        e[] eVarArr = fVar.A;
        if (eVarArr[i5].f2375d == null || eVarArr[i6].f2375d != null) {
            i7 = i5;
            i8 = 1;
        } else {
            i7 = i6;
            i6 = i5;
            i8 = -1;
        }
        int i12 = z2 ? i3 - i4 : i3;
        int iB = (fVar.A[i6].b() * i8) + a(fVar, i2);
        int i13 = i12 + iB;
        int iS2 = (i2 == 0 ? fVar.s() : fVar.i()) * i8;
        Iterator<o> it = fVar.A[i6].d().f2440a.iterator();
        while (it.hasNext()) {
            iMax = Math.max(iMax, a(((m) it.next()).f2430c.f2373b, i2, z, i13));
        }
        int iMax2 = 0;
        for (Iterator<o> it2 = fVar.A[i7].d().f2440a.iterator(); it2.hasNext(); it2 = it2) {
            iMax2 = Math.max(iMax2, a(((m) it2.next()).f2430c.f2373b, i2, z, iS2 + i13));
        }
        if (z2) {
            iMax -= i4;
            iS = iMax2 + iC;
        } else {
            iS = iMax2 + ((i2 == 0 ? fVar.s() : fVar.i()) * i8);
        }
        int i14 = 1;
        if (i2 == 1) {
            Iterator<o> it3 = fVar.w.d().f2440a.iterator();
            int iMax3 = 0;
            while (it3.hasNext()) {
                Iterator<o> it4 = it3;
                m mVar = (m) it3.next();
                if (i8 == i14) {
                    iMax3 = Math.max(iMax3, a(mVar.f2430c.f2373b, i2, z, i4 + i13));
                    i11 = i7;
                } else {
                    i11 = i7;
                    iMax3 = Math.max(iMax3, a(mVar.f2430c.f2373b, i2, z, (iC * i8) + i13));
                }
                it3 = it4;
                i7 = i11;
                i14 = 1;
            }
            i9 = i7;
            int i15 = iMax3;
            i10 = (fVar.w.d().f2440a.size() <= 0 || z2) ? i15 : i8 == 1 ? i15 + i4 : i15 - iC;
        } else {
            i9 = i7;
            i10 = 0;
        }
        int iMax4 = iB + Math.max(iMax, Math.max(iS, i10));
        int i16 = i13 + iS2;
        if (i8 != -1) {
            i13 = i16;
            i16 = i13;
        }
        if (z) {
            k.a(fVar, i2, i16);
            fVar.a(i16, i13, i2);
        } else {
            fVar.p.a(fVar, i2);
            fVar.d(i16, i2);
        }
        if (fVar.c(i2) == f.b.MATCH_CONSTRAINT && fVar.G != 0.0f) {
            fVar.p.a(fVar, i2);
        }
        e[] eVarArr2 = fVar.A;
        if (eVarArr2[i6].f2375d != null && eVarArr2[i9].f2375d != null) {
            f fVarK = fVar.k();
            e[] eVarArr3 = fVar.A;
            if (eVarArr3[i6].f2375d.f2373b == fVarK && eVarArr3[i9].f2375d.f2373b == fVarK) {
                fVar.p.a(fVar, i2);
            }
        }
        return iMax4;
    }

    private static int a(h hVar, int i2) {
        int i3 = i2 * 2;
        List<f> listA = hVar.a(i2);
        int size = listA.size();
        int iMax = 0;
        for (int i4 = 0; i4 < size; i4++) {
            f fVar = listA.get(i4);
            e[] eVarArr = fVar.A;
            int i5 = i3 + 1;
            iMax = Math.max(iMax, a(fVar, i2, eVarArr[i5].f2375d == null || !(eVarArr[i3].f2375d == null || eVarArr[i5].f2375d == null), 0));
        }
        hVar.f2421e[i2] = iMax;
        return iMax;
    }

    private static void a(e eVar) {
        m mVarD = eVar.d();
        e eVar2 = eVar.f2375d;
        if (eVar2 == null || eVar2.f2375d == eVar) {
            return;
        }
        eVar2.d().a(mVarD);
    }

    private static void a(f fVar, int i2, int i3) {
        int i4 = i2 * 2;
        e[] eVarArr = fVar.A;
        e eVar = eVarArr[i4];
        e eVar2 = eVarArr[i4 + 1];
        if ((eVar.f2375d == null || eVar2.f2375d == null) ? false : true) {
            k.a(fVar, i2, a(fVar, i2) + eVar.b());
            return;
        }
        if (fVar.G == 0.0f || fVar.c(i2) != f.b.MATCH_CONSTRAINT) {
            int iE = i3 - fVar.e(i2);
            int iD = iE - fVar.d(i2);
            fVar.a(iD, iE, i2);
            k.a(fVar, i2, iD);
            return;
        }
        int iA = a(fVar);
        int i5 = (int) fVar.A[i4].d().f2434g;
        eVar2.d().f2433f = eVar.d();
        eVar2.d().f2434g = iA;
        eVar2.d().f2441b = 1;
        fVar.a(i5, i5 + iA, i2);
    }

    public static void a(g gVar) {
        if ((gVar.M() & 32) != 32) {
            b(gVar);
            return;
        }
        gVar.D0 = true;
        gVar.x0 = false;
        gVar.y0 = false;
        gVar.z0 = false;
        ArrayList<f> arrayList = gVar.k0;
        List<h> list = gVar.w0;
        boolean z = gVar.j() == f.b.WRAP_CONTENT;
        boolean z2 = gVar.q() == f.b.WRAP_CONTENT;
        boolean z3 = z || z2;
        list.clear();
        for (f fVar : arrayList) {
            fVar.p = null;
            fVar.d0 = false;
            fVar.F();
        }
        for (f fVar2 : arrayList) {
            if (fVar2.p == null && !a(fVar2, list, z3)) {
                b(gVar);
                gVar.D0 = false;
                return;
            }
        }
        int iMax = 0;
        int iMax2 = 0;
        for (h hVar : list) {
            iMax = Math.max(iMax, a(hVar, 0));
            iMax2 = Math.max(iMax2, a(hVar, 1));
        }
        if (z) {
            gVar.a(f.b.FIXED);
            gVar.o(iMax);
            gVar.x0 = true;
            gVar.y0 = true;
            gVar.A0 = iMax;
        }
        if (z2) {
            gVar.b(f.b.FIXED);
            gVar.g(iMax2);
            gVar.x0 = true;
            gVar.z0 = true;
            gVar.B0 = iMax2;
        }
        a(list, 0, gVar.s());
        a(list, 1, gVar.i());
    }

    private static void a(g gVar, f fVar, h hVar) {
        hVar.f2420d = false;
        gVar.D0 = false;
        fVar.b0 = false;
    }

    public static void a(List<h> list, int i2, int i3) {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            for (f fVar : list.get(i4).b(i2)) {
                if (fVar.b0) {
                    a(fVar, i2, i3);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean a(b.f.a.j.f r8, b.f.a.j.h r9, java.util.List<b.f.a.j.h> r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 560
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.j.a.a(b.f.a.j.f, b.f.a.j.h, java.util.List, boolean):boolean");
    }

    private static boolean a(f fVar, List<h> list, boolean z) {
        h hVar = new h(new ArrayList(), true);
        list.add(hVar);
        return a(fVar, hVar, list, z);
    }

    private static void b(g gVar) {
        gVar.w0.clear();
        gVar.w0.add(0, new h(gVar.k0));
    }
}
