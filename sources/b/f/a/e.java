package b.f.a;

import b.f.a.i;
import b.f.a.j.e;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static int p = 1000;
    public static f q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f2322c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    b[] f2325f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2326g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean[] f2327h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f2328i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f2329j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f2330k;
    final c l;
    private i[] m;
    private int n;
    private final a o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f2320a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, i> f2321b = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2323d = 32;

    interface a {
        i a(e eVar, boolean[] zArr);

        void a(a aVar);

        void a(i iVar);

        void clear();

        i getKey();
    }

    public e() {
        int i2 = this.f2323d;
        this.f2324e = i2;
        this.f2325f = null;
        this.f2326g = false;
        this.f2327h = new boolean[i2];
        this.f2328i = 1;
        this.f2329j = 0;
        this.f2330k = i2;
        this.m = new i[p];
        this.n = 0;
        b[] bVarArr = new b[i2];
        this.f2325f = new b[i2];
        j();
        this.l = new c();
        this.f2322c = new d(this.l);
        this.o = new b(this.l);
    }

    private final int a(a aVar, boolean z) {
        f fVar = q;
        if (fVar != null) {
            fVar.f2338h++;
        }
        for (int i2 = 0; i2 < this.f2328i; i2++) {
            this.f2327h[i2] = false;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            f fVar2 = q;
            if (fVar2 != null) {
                fVar2.f2339i++;
            }
            i3++;
            if (i3 >= this.f2328i * 2) {
                return i3;
            }
            if (aVar.getKey() != null) {
                this.f2327h[aVar.getKey().f2346b] = true;
            }
            i iVarA = aVar.a(this, this.f2327h);
            if (iVarA != null) {
                boolean[] zArr = this.f2327h;
                int i4 = iVarA.f2346b;
                if (zArr[i4]) {
                    return i3;
                }
                zArr[i4] = true;
            }
            if (iVarA != null) {
                int i5 = -1;
                float f2 = Float.MAX_VALUE;
                for (int i6 = 0; i6 < this.f2329j; i6++) {
                    b bVar = this.f2325f[i6];
                    if (bVar.f2312a.f2351g != i.a.UNRESTRICTED && !bVar.f2316e && bVar.b(iVarA)) {
                        float fB = bVar.f2315d.b(iVarA);
                        if (fB < 0.0f) {
                            float f3 = (-bVar.f2313b) / fB;
                            if (f3 < f2) {
                                i5 = i6;
                                f2 = f3;
                            }
                        }
                    }
                }
                if (i5 > -1) {
                    b bVar2 = this.f2325f[i5];
                    bVar2.f2312a.f2347c = -1;
                    f fVar3 = q;
                    if (fVar3 != null) {
                        fVar3.f2340j++;
                    }
                    bVar2.d(iVarA);
                    i iVar = bVar2.f2312a;
                    iVar.f2347c = i5;
                    iVar.c(bVar2);
                }
            }
            z2 = true;
        }
        return i3;
    }

    public static b a(e eVar, i iVar, i iVar2, i iVar3, float f2, boolean z) {
        b bVarB = eVar.b();
        if (z) {
            eVar.b(bVarB);
        }
        bVarB.a(iVar, iVar2, iVar3, f2);
        return bVarB;
    }

    private i a(i.a aVar, String str) {
        i iVarA = this.l.f2318b.a();
        if (iVarA == null) {
            iVarA = new i(aVar, str);
        } else {
            iVarA.a();
        }
        iVarA.a(aVar, str);
        int i2 = this.n;
        int i3 = p;
        if (i2 >= i3) {
            p = i3 * 2;
            this.m = (i[]) Arrays.copyOf(this.m, p);
        }
        i[] iVarArr = this.m;
        int i4 = this.n;
        this.n = i4 + 1;
        iVarArr[i4] = iVarA;
        return iVarA;
    }

    private int b(a aVar) {
        float f2;
        boolean z;
        int i2 = 0;
        while (true) {
            f2 = 0.0f;
            if (i2 >= this.f2329j) {
                z = false;
                break;
            }
            b[] bVarArr = this.f2325f;
            if (bVarArr[i2].f2312a.f2351g != i.a.UNRESTRICTED && bVarArr[i2].f2313b < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (!z) {
            return 0;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            f fVar = q;
            if (fVar != null) {
                fVar.f2341k++;
            }
            i3++;
            int i4 = 0;
            int i5 = -1;
            int i6 = -1;
            float f3 = Float.MAX_VALUE;
            int i7 = 0;
            while (i4 < this.f2329j) {
                b bVar = this.f2325f[i4];
                if (bVar.f2312a.f2351g != i.a.UNRESTRICTED && !bVar.f2316e && bVar.f2313b < f2) {
                    int i8 = 1;
                    while (i8 < this.f2328i) {
                        i iVar = this.l.f2319c[i8];
                        float fB = bVar.f2315d.b(iVar);
                        if (fB > f2) {
                            int i9 = i7;
                            float f4 = f3;
                            int i10 = i6;
                            int i11 = i5;
                            for (int i12 = 0; i12 < 7; i12++) {
                                float f5 = iVar.f2350f[i12] / fB;
                                if ((f5 < f4 && i12 == i9) || i12 > i9) {
                                    i10 = i8;
                                    i11 = i4;
                                    f4 = f5;
                                    i9 = i12;
                                }
                            }
                            i5 = i11;
                            i6 = i10;
                            f3 = f4;
                            i7 = i9;
                        }
                        i8++;
                        f2 = 0.0f;
                    }
                }
                i4++;
                f2 = 0.0f;
            }
            if (i5 != -1) {
                b bVar2 = this.f2325f[i5];
                bVar2.f2312a.f2347c = -1;
                f fVar2 = q;
                if (fVar2 != null) {
                    fVar2.f2340j++;
                }
                bVar2.d(this.l.f2319c[i6]);
                i iVar2 = bVar2.f2312a;
                iVar2.f2347c = i5;
                iVar2.c(bVar2);
            } else {
                z2 = true;
            }
            if (i3 > this.f2328i / 2) {
                z2 = true;
            }
            f2 = 0.0f;
        }
        return i3;
    }

    private void b(b bVar) {
        bVar.a(this, 0);
    }

    private final void c(b bVar) {
        b[] bVarArr = this.f2325f;
        int i2 = this.f2329j;
        if (bVarArr[i2] != null) {
            this.l.f2317a.a(bVarArr[i2]);
        }
        b[] bVarArr2 = this.f2325f;
        int i3 = this.f2329j;
        bVarArr2[i3] = bVar;
        i iVar = bVar.f2312a;
        iVar.f2347c = i3;
        this.f2329j = i3 + 1;
        iVar.c(bVar);
    }

    private final void d(b bVar) {
        if (this.f2329j > 0) {
            bVar.f2315d.a(bVar, this.f2325f);
            if (bVar.f2315d.f2301a == 0) {
                bVar.f2316e = true;
            }
        }
    }

    private void g() {
        for (int i2 = 0; i2 < this.f2329j; i2++) {
            b bVar = this.f2325f[i2];
            bVar.f2312a.f2349e = bVar.f2313b;
        }
    }

    public static f h() {
        return q;
    }

    private void i() {
        this.f2323d *= 2;
        this.f2325f = (b[]) Arrays.copyOf(this.f2325f, this.f2323d);
        c cVar = this.l;
        cVar.f2319c = (i[]) Arrays.copyOf(cVar.f2319c, this.f2323d);
        int i2 = this.f2323d;
        this.f2327h = new boolean[i2];
        this.f2324e = i2;
        this.f2330k = i2;
        f fVar = q;
        if (fVar != null) {
            fVar.f2334d++;
            fVar.o = Math.max(fVar.o, i2);
            f fVar2 = q;
            fVar2.A = fVar2.o;
        }
    }

    private void j() {
        int i2 = 0;
        while (true) {
            b[] bVarArr = this.f2325f;
            if (i2 >= bVarArr.length) {
                return;
            }
            b bVar = bVarArr[i2];
            if (bVar != null) {
                this.l.f2317a.a(bVar);
            }
            this.f2325f[i2] = null;
            i2++;
        }
    }

    public b a(i iVar, i iVar2, int i2, int i3) {
        b bVarB = b();
        bVarB.a(iVar, iVar2, i2);
        if (i3 != 6) {
            bVarB.a(this, i3);
        }
        a(bVarB);
        return bVarB;
    }

    public i a() {
        f fVar = q;
        if (fVar != null) {
            fVar.n++;
        }
        if (this.f2328i + 1 >= this.f2324e) {
            i();
        }
        i iVarA = a(i.a.SLACK, (String) null);
        this.f2320a++;
        this.f2328i++;
        int i2 = this.f2320a;
        iVarA.f2346b = i2;
        this.l.f2319c[i2] = iVarA;
        return iVarA;
    }

    public i a(int i2, String str) {
        f fVar = q;
        if (fVar != null) {
            fVar.l++;
        }
        if (this.f2328i + 1 >= this.f2324e) {
            i();
        }
        i iVarA = a(i.a.ERROR, str);
        this.f2320a++;
        this.f2328i++;
        int i3 = this.f2320a;
        iVarA.f2346b = i3;
        iVarA.f2348d = i2;
        this.l.f2319c[i3] = iVarA;
        this.f2322c.a(iVarA);
        return iVarA;
    }

    public i a(Object obj) {
        i iVarE = null;
        if (obj == null) {
            return null;
        }
        if (this.f2328i + 1 >= this.f2324e) {
            i();
        }
        if (obj instanceof b.f.a.j.e) {
            b.f.a.j.e eVar = (b.f.a.j.e) obj;
            iVarE = eVar.e();
            if (iVarE == null) {
                eVar.a(this.l);
                iVarE = eVar.e();
            }
            int i2 = iVarE.f2346b;
            if (i2 == -1 || i2 > this.f2320a || this.l.f2319c[i2] == null) {
                if (iVarE.f2346b != -1) {
                    iVarE.a();
                }
                this.f2320a++;
                this.f2328i++;
                int i3 = this.f2320a;
                iVarE.f2346b = i3;
                iVarE.f2351g = i.a.UNRESTRICTED;
                this.l.f2319c[i3] = iVarE;
            }
        }
        return iVarE;
    }

    public void a(b bVar) {
        i iVarC;
        if (bVar == null) {
            return;
        }
        f fVar = q;
        if (fVar != null) {
            fVar.f2336f++;
            if (bVar.f2316e) {
                fVar.f2337g++;
            }
        }
        if (this.f2329j + 1 >= this.f2330k || this.f2328i + 1 >= this.f2324e) {
            i();
        }
        boolean z = false;
        if (!bVar.f2316e) {
            d(bVar);
            if (bVar.c()) {
                return;
            }
            bVar.a();
            if (bVar.a(this)) {
                i iVarA = a();
                bVar.f2312a = iVarA;
                c(bVar);
                this.o.a(bVar);
                a(this.o, true);
                if (iVarA.f2347c == -1) {
                    if (bVar.f2312a == iVarA && (iVarC = bVar.c(iVarA)) != null) {
                        f fVar2 = q;
                        if (fVar2 != null) {
                            fVar2.f2340j++;
                        }
                        bVar.d(iVarC);
                    }
                    if (!bVar.f2316e) {
                        bVar.f2312a.c(bVar);
                    }
                    this.f2329j--;
                }
                z = true;
            }
            if (!bVar.b()) {
                return;
            }
        }
        if (z) {
            return;
        }
        c(bVar);
    }

    void a(b bVar, int i2, int i3) {
        bVar.a(a(i3, (String) null), i2);
    }

    void a(a aVar) {
        f fVar = q;
        if (fVar != null) {
            fVar.s++;
            fVar.t = Math.max(fVar.t, this.f2328i);
            f fVar2 = q;
            fVar2.u = Math.max(fVar2.u, this.f2329j);
        }
        d((b) aVar);
        b(aVar);
        a(aVar, false);
        g();
    }

    public void a(i iVar, int i2) {
        b bVarB;
        int i3 = iVar.f2347c;
        if (i3 != -1) {
            b bVar = this.f2325f[i3];
            if (!bVar.f2316e) {
                if (bVar.f2315d.f2301a == 0) {
                    bVar.f2316e = true;
                } else {
                    bVarB = b();
                    bVarB.c(iVar, i2);
                }
            }
            bVar.f2313b = i2;
            return;
        }
        bVarB = b();
        bVarB.b(iVar, i2);
        a(bVarB);
    }

    public void a(i iVar, i iVar2, int i2, float f2, i iVar3, i iVar4, int i3, int i4) {
        b bVarB = b();
        bVarB.a(iVar, iVar2, i2, f2, iVar3, iVar4, i3);
        if (i4 != 6) {
            bVarB.a(this, i4);
        }
        a(bVarB);
    }

    public void a(i iVar, i iVar2, i iVar3, i iVar4, float f2, int i2) {
        b bVarB = b();
        bVarB.a(iVar, iVar2, iVar3, iVar4, f2);
        if (i2 != 6) {
            bVarB.a(this, i2);
        }
        a(bVarB);
    }

    public void a(i iVar, i iVar2, boolean z) {
        b bVarB = b();
        i iVarC = c();
        iVarC.f2348d = 0;
        bVarB.a(iVar, iVar2, iVarC, 0);
        if (z) {
            a(bVarB, (int) (bVarB.f2315d.b(iVarC) * (-1.0f)), 1);
        }
        a(bVarB);
    }

    public void a(b.f.a.j.f fVar, b.f.a.j.f fVar2, float f2, int i2) {
        i iVarA = a(fVar.a(e.d.LEFT));
        i iVarA2 = a(fVar.a(e.d.TOP));
        i iVarA3 = a(fVar.a(e.d.RIGHT));
        i iVarA4 = a(fVar.a(e.d.BOTTOM));
        i iVarA5 = a(fVar2.a(e.d.LEFT));
        i iVarA6 = a(fVar2.a(e.d.TOP));
        i iVarA7 = a(fVar2.a(e.d.RIGHT));
        i iVarA8 = a(fVar2.a(e.d.BOTTOM));
        b bVarB = b();
        double d2 = f2;
        double dSin = Math.sin(d2);
        double d3 = i2;
        Double.isNaN(d3);
        bVarB.b(iVarA2, iVarA4, iVarA6, iVarA8, (float) (dSin * d3));
        a(bVarB);
        b bVarB2 = b();
        double dCos = Math.cos(d2);
        Double.isNaN(d3);
        bVarB2.b(iVarA, iVarA3, iVarA5, iVarA7, (float) (dCos * d3));
        a(bVarB2);
    }

    public int b(Object obj) {
        i iVarE = ((b.f.a.j.e) obj).e();
        if (iVarE != null) {
            return (int) (iVarE.f2349e + 0.5f);
        }
        return 0;
    }

    public b b() {
        b bVarA = this.l.f2317a.a();
        if (bVarA == null) {
            bVarA = new b(this.l);
        } else {
            bVarA.d();
        }
        i.b();
        return bVarA;
    }

    public void b(i iVar, i iVar2, int i2, int i3) {
        b bVarB = b();
        i iVarC = c();
        iVarC.f2348d = 0;
        bVarB.a(iVar, iVar2, iVarC, i2);
        if (i3 != 6) {
            a(bVarB, (int) (bVarB.f2315d.b(iVarC) * (-1.0f)), i3);
        }
        a(bVarB);
    }

    public void b(i iVar, i iVar2, boolean z) {
        b bVarB = b();
        i iVarC = c();
        iVarC.f2348d = 0;
        bVarB.b(iVar, iVar2, iVarC, 0);
        if (z) {
            a(bVarB, (int) (bVarB.f2315d.b(iVarC) * (-1.0f)), 1);
        }
        a(bVarB);
    }

    public i c() {
        f fVar = q;
        if (fVar != null) {
            fVar.m++;
        }
        if (this.f2328i + 1 >= this.f2324e) {
            i();
        }
        i iVarA = a(i.a.SLACK, (String) null);
        this.f2320a++;
        this.f2328i++;
        int i2 = this.f2320a;
        iVarA.f2346b = i2;
        this.l.f2319c[i2] = iVarA;
        return iVarA;
    }

    public void c(i iVar, i iVar2, int i2, int i3) {
        b bVarB = b();
        i iVarC = c();
        iVarC.f2348d = 0;
        bVarB.b(iVar, iVar2, iVarC, i2);
        if (i3 != 6) {
            a(bVarB, (int) (bVarB.f2315d.b(iVarC) * (-1.0f)), i3);
        }
        a(bVarB);
    }

    public c d() {
        return this.l;
    }

    public void e() {
        f fVar = q;
        if (fVar != null) {
            fVar.f2335e++;
        }
        if (this.f2326g) {
            f fVar2 = q;
            if (fVar2 != null) {
                fVar2.q++;
            }
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= this.f2329j) {
                    z = true;
                    break;
                } else if (!this.f2325f[i2].f2316e) {
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                f fVar3 = q;
                if (fVar3 != null) {
                    fVar3.p++;
                }
                g();
                return;
            }
        }
        a(this.f2322c);
    }

    public void f() {
        c cVar;
        int i2 = 0;
        while (true) {
            cVar = this.l;
            i[] iVarArr = cVar.f2319c;
            if (i2 >= iVarArr.length) {
                break;
            }
            i iVar = iVarArr[i2];
            if (iVar != null) {
                iVar.a();
            }
            i2++;
        }
        cVar.f2318b.a(this.m, this.n);
        this.n = 0;
        Arrays.fill(this.l.f2319c, (Object) null);
        HashMap<String, i> map = this.f2321b;
        if (map != null) {
            map.clear();
        }
        this.f2320a = 0;
        this.f2322c.clear();
        this.f2328i = 1;
        for (int i3 = 0; i3 < this.f2329j; i3++) {
            this.f2325f[i3].f2314c = false;
        }
        j();
        this.f2329j = 0;
    }
}
