package b.f.a.j;

import b.f.a.j.e;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public static float j0 = 0.5f;
    protected b[] C;
    f D;
    int E;
    int F;
    protected float G;
    protected int H;
    protected int I;
    protected int J;
    int K;
    int L;
    private int M;
    private int N;
    protected int O;
    protected int P;
    int Q;
    protected int R;
    protected int S;
    private int T;
    private int U;
    float V;
    float W;
    private Object X;
    private int Y;
    private String Z;
    private String a0;
    boolean b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    n f2401c;
    boolean c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    n f2402d;
    boolean d0;
    int e0;
    int f0;
    float[] g0;
    protected f[] h0;
    protected f[] i0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2399a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2400b = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f2403e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f2404f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int[] f2405g = new int[2];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f2406h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f2407i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f2408j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f2409k = 0;
    int l = 0;
    float m = 1.0f;
    int n = -1;
    float o = 1.0f;
    h p = null;
    private int[] q = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private float r = 0.0f;
    e s = new e(this, e.d.LEFT);
    e t = new e(this, e.d.TOP);
    e u = new e(this, e.d.RIGHT);
    e v = new e(this, e.d.BOTTOM);
    e w = new e(this, e.d.BASELINE);
    e x = new e(this, e.d.CENTER_X);
    e y = new e(this, e.d.CENTER_Y);
    e z = new e(this, e.d.CENTER);
    protected e[] A = {this.s, this.u, this.t, this.v, this.w, this.z};
    protected ArrayList<e> B = new ArrayList<>();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2410a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f2411b = new int[b.values().length];

        static {
            try {
                f2411b[b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2411b[b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2411b[b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2411b[b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f2410a = new int[e.d.values().length];
            try {
                f2410a[e.d.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2410a[e.d.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2410a[e.d.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2410a[e.d.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2410a[e.d.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2410a[e.d.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2410a[e.d.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2410a[e.d.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2410a[e.d.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public enum b {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public f() {
        b bVar = b.FIXED;
        this.C = new b[]{bVar, bVar};
        this.D = null;
        this.E = 0;
        this.F = 0;
        this.G = 0.0f;
        this.H = -1;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        float f2 = j0;
        this.V = f2;
        this.W = f2;
        this.Y = 0;
        this.Z = null;
        this.a0 = null;
        this.b0 = false;
        this.c0 = false;
        this.d0 = false;
        this.e0 = 0;
        this.f0 = 0;
        this.g0 = new float[]{-1.0f, -1.0f};
        this.h0 = new f[]{null, null};
        this.i0 = new f[]{null, null};
        J();
    }

    private void J() {
        this.B.add(this.s);
        this.B.add(this.t);
        this.B.add(this.u);
        this.B.add(this.v);
        this.B.add(this.x);
        this.B.add(this.y);
        this.B.add(this.z);
        this.B.add(this.w);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02eb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x02f6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x02f8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01cd A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(b.f.a.e r26, boolean r27, b.f.a.i r28, b.f.a.i r29, b.f.a.j.f.b r30, boolean r31, b.f.a.j.e r32, b.f.a.j.e r33, int r34, int r35, int r36, int r37, float r38, boolean r39, boolean r40, int r41, int r42, int r43, float r44, boolean r45) {
        /*
            Method dump skipped, instruction units count: 812
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.j.f.a(b.f.a.e, boolean, b.f.a.i, b.f.a.i, b.f.a.j.f$b, boolean, b.f.a.j.e, b.f.a.j.e, int, int, int, int, float, boolean, boolean, int, int, int, float, boolean):void");
    }

    private boolean t(int i2) {
        int i3 = i2 * 2;
        e[] eVarArr = this.A;
        if (eVarArr[i3].f2375d != null && eVarArr[i3].f2375d.f2375d != eVarArr[i3]) {
            int i4 = i3 + 1;
            if (eVarArr[i4].f2375d != null && eVarArr[i4].f2375d.f2375d == eVarArr[i4]) {
                return true;
            }
        }
        return false;
    }

    public boolean A() {
        e eVar = this.t;
        e eVar2 = eVar.f2375d;
        if (eVar2 != null && eVar2.f2375d == eVar) {
            return true;
        }
        e eVar3 = this.v;
        e eVar4 = eVar3.f2375d;
        return eVar4 != null && eVar4.f2375d == eVar3;
    }

    public boolean B() {
        return this.f2404f == 0 && this.G == 0.0f && this.f2409k == 0 && this.l == 0 && this.C[1] == b.MATCH_CONSTRAINT;
    }

    public boolean C() {
        return this.f2403e == 0 && this.G == 0.0f && this.f2406h == 0 && this.f2407i == 0 && this.C[0] == b.MATCH_CONSTRAINT;
    }

    public void D() {
        this.s.j();
        this.t.j();
        this.u.j();
        this.v.j();
        this.w.j();
        this.x.j();
        this.y.j();
        this.z.j();
        this.D = null;
        this.r = 0.0f;
        this.E = 0;
        this.F = 0;
        this.G = 0.0f;
        this.H = -1;
        this.I = 0;
        this.J = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = 0;
        float f2 = j0;
        this.V = f2;
        this.W = f2;
        b[] bVarArr = this.C;
        b bVar = b.FIXED;
        bVarArr[0] = bVar;
        bVarArr[1] = bVar;
        this.X = null;
        this.Y = 0;
        this.a0 = null;
        this.e0 = 0;
        this.f0 = 0;
        float[] fArr = this.g0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f2399a = -1;
        this.f2400b = -1;
        int[] iArr = this.q;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f2403e = 0;
        this.f2404f = 0;
        this.f2408j = 1.0f;
        this.m = 1.0f;
        this.f2407i = Integer.MAX_VALUE;
        this.l = Integer.MAX_VALUE;
        this.f2406h = 0;
        this.f2409k = 0;
        this.n = -1;
        this.o = 1.0f;
        n nVar = this.f2401c;
        if (nVar != null) {
            nVar.d();
        }
        n nVar2 = this.f2402d;
        if (nVar2 != null) {
            nVar2.d();
        }
        this.p = null;
        this.b0 = false;
        this.c0 = false;
        this.d0 = false;
    }

    public void E() {
        f fVarK = k();
        if (fVarK != null && (fVarK instanceof g) && ((g) k()).N()) {
            return;
        }
        int size = this.B.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.B.get(i2).j();
        }
    }

    public void F() {
        for (int i2 = 0; i2 < 6; i2++) {
            this.A[i2].d().d();
        }
    }

    public void G() {
    }

    public void H() {
        int i2 = this.I;
        int i3 = this.J;
        this.M = i2;
        this.N = i3;
    }

    public void I() {
        for (int i2 = 0; i2 < 6; i2++) {
            this.A[i2].d().g();
        }
    }

    public e a(e.d dVar) {
        switch (a.f2410a[dVar.ordinal()]) {
            case 1:
                return this.s;
            case 2:
                return this.t;
            case 3:
                return this.u;
            case 4:
                return this.v;
            case 5:
                return this.w;
            case 6:
                return this.z;
            case 7:
                return this.x;
            case 8:
                return this.y;
            case 9:
                return null;
            default:
                throw new AssertionError(dVar.name());
        }
    }

    public void a(float f2) {
        this.V = f2;
    }

    public void a(int i2) {
        k.a(i2, this);
    }

    public void a(int i2, int i3) {
        this.I = i2;
        this.E = i3 - i2;
        int i4 = this.E;
        int i5 = this.R;
        if (i4 < i5) {
            this.E = i5;
        }
    }

    public void a(int i2, int i3, int i4) {
        if (i4 == 0) {
            a(i2, i3);
        } else if (i4 == 1) {
            e(i2, i3);
        }
        this.c0 = true;
    }

    public void a(int i2, int i3, int i4, float f2) {
        this.f2403e = i2;
        this.f2406h = i3;
        this.f2407i = i4;
        this.f2408j = f2;
        if (f2 >= 1.0f || this.f2403e != 0) {
            return;
        }
        this.f2403e = 2;
    }

    public void a(int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8 = i4 - i2;
        int i9 = i5 - i3;
        this.I = i2;
        this.J = i3;
        if (this.Y == 8) {
            this.E = 0;
            this.F = 0;
            return;
        }
        if (this.C[0] != b.FIXED || i8 >= (i6 = this.E)) {
            i6 = i8;
        }
        if (this.C[1] != b.FIXED || i9 >= (i7 = this.F)) {
            i7 = i9;
        }
        this.E = i6;
        this.F = i7;
        int i10 = this.F;
        int i11 = this.S;
        if (i10 < i11) {
            this.F = i11;
        }
        int i12 = this.E;
        int i13 = this.R;
        if (i12 < i13) {
            this.E = i13;
        }
        this.c0 = true;
    }

    public void a(b.f.a.c cVar) {
        this.s.a(cVar);
        this.t.a(cVar);
        this.u.a(cVar);
        this.v.a(cVar);
        this.w.a(cVar);
        this.z.a(cVar);
        this.x.a(cVar);
        this.y.a(cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ab A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0248 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:173:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(b.f.a.e r39) {
        /*
            Method dump skipped, instruction units count: 839
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.j.f.a(b.f.a.e):void");
    }

    public void a(e.d dVar, f fVar, e.d dVar2, int i2, int i3) {
        a(dVar).a(fVar.a(dVar2), i2, i3, e.c.STRONG, 0, true);
    }

    public void a(b bVar) {
        this.C[0] = bVar;
        if (bVar == b.WRAP_CONTENT) {
            o(this.T);
        }
    }

    public void a(f fVar) {
        this.D = fVar;
    }

    public void a(f fVar, float f2, int i2) {
        e.d dVar = e.d.CENTER;
        a(dVar, fVar, dVar, i2, 0);
        this.r = f2;
    }

    public void a(Object obj) {
        this.X = obj;
    }

    public void a(String str) {
        this.Z = str;
    }

    public void a(boolean z) {
    }

    public void a(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.n == -1) {
            if (z3 && !z4) {
                this.n = 0;
            } else if (!z3 && z4) {
                this.n = 1;
                if (this.H == -1) {
                    this.o = 1.0f / this.o;
                }
            }
        }
        if (this.n == 0 && (!this.t.i() || !this.v.i())) {
            this.n = 1;
        } else if (this.n == 1 && (!this.s.i() || !this.u.i())) {
            this.n = 0;
        }
        if (this.n == -1 && (!this.t.i() || !this.v.i() || !this.s.i() || !this.u.i())) {
            if (this.t.i() && this.v.i()) {
                this.n = 0;
            } else if (this.s.i() && this.u.i()) {
                this.o = 1.0f / this.o;
                this.n = 1;
            }
        }
        if (this.n == -1) {
            if (z && !z2) {
                this.n = 0;
            } else if (!z && z2) {
                this.o = 1.0f / this.o;
                this.n = 1;
            }
        }
        if (this.n == -1) {
            if (this.f2406h > 0 && this.f2409k == 0) {
                this.n = 0;
            } else if (this.f2406h == 0 && this.f2409k > 0) {
                this.o = 1.0f / this.o;
                this.n = 1;
            }
        }
        if (this.n == -1 && z && z2) {
            this.o = 1.0f / this.o;
            this.n = 1;
        }
    }

    public boolean a() {
        return this.Y != 8;
    }

    public float b(int i2) {
        if (i2 == 0) {
            return this.V;
        }
        if (i2 == 1) {
            return this.W;
        }
        return -1.0f;
    }

    public ArrayList<e> b() {
        return this.B;
    }

    public void b(float f2) {
        this.g0[0] = f2;
    }

    public void b(int i2, int i3) {
        this.O = i2;
        this.P = i3;
    }

    public void b(int i2, int i3, int i4, float f2) {
        this.f2404f = i2;
        this.f2409k = i3;
        this.l = i4;
        this.m = f2;
        if (f2 >= 1.0f || this.f2404f != 0) {
            return;
        }
        this.f2404f = 2;
    }

    public void b(b.f.a.e eVar) {
        eVar.a(this.s);
        eVar.a(this.t);
        eVar.a(this.u);
        eVar.a(this.v);
        if (this.Q > 0) {
            eVar.a(this.w);
        }
    }

    public void b(b bVar) {
        this.C[1] = bVar;
        if (bVar == b.WRAP_CONTENT) {
            g(this.U);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0084 A[PHI: r0
      0x0084: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:45:0x0084, B:35:0x007d, B:23:0x004f, B:25:0x0055, B:27:0x0061, B:29:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(java.lang.String r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L8e
            int r1 = r9.length()
            if (r1 != 0) goto Lb
            goto L8e
        Lb:
            r1 = -1
            int r2 = r9.length()
            r3 = 44
            int r3 = r9.indexOf(r3)
            r4 = 0
            r5 = 1
            if (r3 <= 0) goto L37
            int r6 = r2 + (-1)
            if (r3 >= r6) goto L37
            java.lang.String r6 = r9.substring(r4, r3)
            java.lang.String r7 = "W"
            boolean r7 = r6.equalsIgnoreCase(r7)
            if (r7 == 0) goto L2c
            r1 = 0
            goto L35
        L2c:
            java.lang.String r4 = "H"
            boolean r4 = r6.equalsIgnoreCase(r4)
            if (r4 == 0) goto L35
            r1 = 1
        L35:
            int r4 = r3 + 1
        L37:
            r3 = 58
            int r3 = r9.indexOf(r3)
            if (r3 < 0) goto L75
            int r2 = r2 - r5
            if (r3 >= r2) goto L75
            java.lang.String r2 = r9.substring(r4, r3)
            int r3 = r3 + r5
            java.lang.String r9 = r9.substring(r3)
            int r3 = r2.length()
            if (r3 <= 0) goto L84
            int r3 = r9.length()
            if (r3 <= 0) goto L84
            float r2 = java.lang.Float.parseFloat(r2)     // Catch: java.lang.NumberFormatException -> L84
            float r9 = java.lang.Float.parseFloat(r9)     // Catch: java.lang.NumberFormatException -> L84
            int r3 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r3 <= 0) goto L84
            int r3 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r3 <= 0) goto L84
            if (r1 != r5) goto L6f
            float r9 = r9 / r2
            float r9 = java.lang.Math.abs(r9)     // Catch: java.lang.NumberFormatException -> L84
            goto L85
        L6f:
            float r2 = r2 / r9
            float r9 = java.lang.Math.abs(r2)     // Catch: java.lang.NumberFormatException -> L84
            goto L85
        L75:
            java.lang.String r9 = r9.substring(r4)
            int r2 = r9.length()
            if (r2 <= 0) goto L84
            float r9 = java.lang.Float.parseFloat(r9)     // Catch: java.lang.NumberFormatException -> L84
            goto L85
        L84:
            r9 = 0
        L85:
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 <= 0) goto L8d
            r8.G = r9
            r8.H = r1
        L8d:
            return
        L8e:
            r8.G = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.j.f.b(java.lang.String):void");
    }

    public void b(boolean z) {
    }

    public int c() {
        return this.Q;
    }

    public b c(int i2) {
        if (i2 == 0) {
            return j();
        }
        if (i2 == 1) {
            return q();
        }
        return null;
    }

    public void c(float f2) {
        this.W = f2;
    }

    public void c(int i2, int i3) {
        this.I = i2;
        this.J = i3;
    }

    public void c(b.f.a.e eVar) {
        int iB = eVar.b(this.s);
        int iB2 = eVar.b(this.t);
        int iB3 = eVar.b(this.u);
        int iB4 = eVar.b(this.v);
        int i2 = iB4 - iB2;
        if (iB3 - iB < 0 || i2 < 0 || iB == Integer.MIN_VALUE || iB == Integer.MAX_VALUE || iB2 == Integer.MIN_VALUE || iB2 == Integer.MAX_VALUE || iB3 == Integer.MIN_VALUE || iB3 == Integer.MAX_VALUE || iB4 == Integer.MIN_VALUE || iB4 == Integer.MAX_VALUE) {
            iB4 = 0;
            iB = 0;
            iB2 = 0;
            iB3 = 0;
        }
        a(iB, iB2, iB3, iB4);
    }

    public int d() {
        return w() + this.F;
    }

    public int d(int i2) {
        if (i2 == 0) {
            return s();
        }
        if (i2 == 1) {
            return i();
        }
        return 0;
    }

    public void d(float f2) {
        this.g0[1] = f2;
    }

    void d(int i2, int i3) {
        if (i3 == 0) {
            this.K = i2;
        } else if (i3 == 1) {
            this.L = i2;
        }
    }

    int e(int i2) {
        if (i2 == 0) {
            return this.K;
        }
        if (i2 == 1) {
            return this.L;
        }
        return 0;
    }

    public Object e() {
        return this.X;
    }

    public void e(int i2, int i3) {
        this.J = i2;
        this.F = i3 - i2;
        int i4 = this.F;
        int i5 = this.S;
        if (i4 < i5) {
            this.F = i5;
        }
    }

    public String f() {
        return this.Z;
    }

    public void f(int i2) {
        this.Q = i2;
    }

    public int g() {
        return this.M + this.O;
    }

    public void g(int i2) {
        this.F = i2;
        int i3 = this.F;
        int i4 = this.S;
        if (i3 < i4) {
            this.F = i4;
        }
    }

    public int h() {
        return this.N + this.P;
    }

    public void h(int i2) {
        this.e0 = i2;
    }

    public int i() {
        if (this.Y == 8) {
            return 0;
        }
        return this.F;
    }

    public void i(int i2) {
        this.q[1] = i2;
    }

    public b j() {
        return this.C[0];
    }

    public void j(int i2) {
        this.q[0] = i2;
    }

    public f k() {
        return this.D;
    }

    public void k(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        this.S = i2;
    }

    public n l() {
        if (this.f2402d == null) {
            this.f2402d = new n();
        }
        return this.f2402d;
    }

    public void l(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        this.R = i2;
    }

    public n m() {
        if (this.f2401c == null) {
            this.f2401c = new n();
        }
        return this.f2401c;
    }

    public void m(int i2) {
        this.f0 = i2;
    }

    public int n() {
        return v() + this.E;
    }

    public void n(int i2) {
        this.Y = i2;
    }

    protected int o() {
        return this.I + this.O;
    }

    public void o(int i2) {
        this.E = i2;
        int i3 = this.E;
        int i4 = this.R;
        if (i3 < i4) {
            this.E = i4;
        }
    }

    protected int p() {
        return this.J + this.P;
    }

    public void p(int i2) {
        this.U = i2;
    }

    public b q() {
        return this.C[1];
    }

    public void q(int i2) {
        this.T = i2;
    }

    public int r() {
        return this.Y;
    }

    public void r(int i2) {
        this.I = i2;
    }

    public int s() {
        if (this.Y == 8) {
            return 0;
        }
        return this.E;
    }

    public void s(int i2) {
        this.J = i2;
    }

    public int t() {
        return this.U;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.a0 != null) {
            str = "type: " + this.a0 + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.Z != null) {
            str2 = "id: " + this.Z + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.I);
        sb.append(", ");
        sb.append(this.J);
        sb.append(") - (");
        sb.append(this.E);
        sb.append(" x ");
        sb.append(this.F);
        sb.append(") wrap: (");
        sb.append(this.T);
        sb.append(" x ");
        sb.append(this.U);
        sb.append(")");
        return sb.toString();
    }

    public int u() {
        return this.T;
    }

    public int v() {
        return this.I;
    }

    public int w() {
        return this.J;
    }

    public boolean x() {
        return this.Q > 0;
    }

    public boolean y() {
        return this.s.d().f2441b == 1 && this.u.d().f2441b == 1 && this.t.d().f2441b == 1 && this.v.d().f2441b == 1;
    }

    public boolean z() {
        e eVar = this.s;
        e eVar2 = eVar.f2375d;
        if (eVar2 != null && eVar2.f2375d == eVar) {
            return true;
        }
        e eVar3 = this.u;
        e eVar4 = eVar3.f2375d;
        return eVar4 != null && eVar4.f2375d == eVar3;
    }
}
