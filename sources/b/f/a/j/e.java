package b.f.a.j;

import b.f.a.i;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final f f2373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final d f2374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    e f2375d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f2379h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    b.f.a.i f2380i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f2372a = new m(this);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2376e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f2377f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f2378g = c.NONE;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2381a = new int[d.values().length];

        static {
            try {
                f2381a[d.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2381a[d.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2381a[d.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2381a[d.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2381a[d.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2381a[d.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2381a[d.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2381a[d.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2381a[d.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public enum b {
        RELAXED,
        STRICT
    }

    public enum c {
        NONE,
        STRONG,
        WEAK
    }

    public enum d {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public e(f fVar, d dVar) {
        b bVar = b.RELAXED;
        this.f2379h = 0;
        this.f2373b = fVar;
        this.f2374c = dVar;
    }

    public int a() {
        return this.f2379h;
    }

    public void a(b.f.a.c cVar) {
        b.f.a.i iVar = this.f2380i;
        if (iVar == null) {
            this.f2380i = new b.f.a.i(i.a.UNRESTRICTED, null);
        } else {
            iVar.a();
        }
    }

    public boolean a(e eVar) {
        if (eVar == null) {
            return false;
        }
        d dVarH = eVar.h();
        d dVar = this.f2374c;
        if (dVarH == dVar) {
            return dVar != d.BASELINE || (eVar.c().x() && c().x());
        }
        switch (a.f2381a[dVar.ordinal()]) {
            case 1:
                return (dVarH == d.BASELINE || dVarH == d.CENTER_X || dVarH == d.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z = dVarH == d.LEFT || dVarH == d.RIGHT;
                return eVar.c() instanceof i ? z || dVarH == d.CENTER_X : z;
            case 4:
            case 5:
                boolean z2 = dVarH == d.TOP || dVarH == d.BOTTOM;
                return eVar.c() instanceof i ? z2 || dVarH == d.CENTER_Y : z2;
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.f2374c.name());
        }
    }

    public boolean a(e eVar, int i2, int i3, c cVar, int i4, boolean z) {
        if (eVar == null) {
            this.f2375d = null;
            this.f2376e = 0;
            this.f2377f = -1;
            this.f2378g = c.NONE;
            this.f2379h = 2;
            return true;
        }
        if (!z && !a(eVar)) {
            return false;
        }
        this.f2375d = eVar;
        if (i2 > 0) {
            this.f2376e = i2;
        } else {
            this.f2376e = 0;
        }
        this.f2377f = i3;
        this.f2378g = cVar;
        this.f2379h = i4;
        return true;
    }

    public boolean a(e eVar, int i2, c cVar, int i3) {
        return a(eVar, i2, -1, cVar, i3, false);
    }

    public int b() {
        e eVar;
        if (this.f2373b.r() == 8) {
            return 0;
        }
        return (this.f2377f <= -1 || (eVar = this.f2375d) == null || eVar.f2373b.r() != 8) ? this.f2376e : this.f2377f;
    }

    public f c() {
        return this.f2373b;
    }

    public m d() {
        return this.f2372a;
    }

    public b.f.a.i e() {
        return this.f2380i;
    }

    public c f() {
        return this.f2378g;
    }

    public e g() {
        return this.f2375d;
    }

    public d h() {
        return this.f2374c;
    }

    public boolean i() {
        return this.f2375d != null;
    }

    public void j() {
        this.f2375d = null;
        this.f2376e = 0;
        this.f2377f = -1;
        this.f2378g = c.STRONG;
        this.f2379h = 0;
        b bVar = b.RELAXED;
        this.f2372a.d();
    }

    public String toString() {
        return this.f2373b.f() + ":" + this.f2374c.toString();
    }
}
