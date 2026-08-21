package c.a.a.r;

/* JADX INFO: loaded from: classes.dex */
public class i implements d, c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f3287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f3288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f3289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3290e;

    i() {
        this(null);
    }

    public i(d dVar) {
        this.f3287b = dVar;
    }

    private boolean g() {
        d dVar = this.f3287b;
        return dVar == null || dVar.f(this);
    }

    private boolean h() {
        d dVar = this.f3287b;
        return dVar == null || dVar.c(this);
    }

    private boolean i() {
        d dVar = this.f3287b;
        return dVar == null || dVar.d(this);
    }

    private boolean j() {
        d dVar = this.f3287b;
        return dVar != null && dVar.d();
    }

    @Override // c.a.a.r.c
    public void a() {
        this.f3288c.a();
        this.f3289d.a();
    }

    public void a(c cVar, c cVar2) {
        this.f3288c = cVar;
        this.f3289d = cVar2;
    }

    @Override // c.a.a.r.c
    public boolean a(c cVar) {
        if (!(cVar instanceof i)) {
            return false;
        }
        i iVar = (i) cVar;
        c cVar2 = this.f3288c;
        if (cVar2 == null) {
            if (iVar.f3288c != null) {
                return false;
            }
        } else if (!cVar2.a(iVar.f3288c)) {
            return false;
        }
        c cVar3 = this.f3289d;
        c cVar4 = iVar.f3289d;
        if (cVar3 == null) {
            if (cVar4 != null) {
                return false;
            }
        } else if (!cVar3.a(cVar4)) {
            return false;
        }
        return true;
    }

    @Override // c.a.a.r.d
    public void b(c cVar) {
        d dVar;
        if (cVar.equals(this.f3288c) && (dVar = this.f3287b) != null) {
            dVar.b(this);
        }
    }

    @Override // c.a.a.r.c
    public boolean b() {
        return this.f3288c.b() || this.f3289d.b();
    }

    @Override // c.a.a.r.c
    public void begin() {
        this.f3290e = true;
        if (!this.f3288c.f() && !this.f3289d.isRunning()) {
            this.f3289d.begin();
        }
        if (!this.f3290e || this.f3288c.isRunning()) {
            return;
        }
        this.f3288c.begin();
    }

    @Override // c.a.a.r.c
    public boolean c() {
        return this.f3288c.c();
    }

    @Override // c.a.a.r.d
    public boolean c(c cVar) {
        return h() && cVar.equals(this.f3288c) && !d();
    }

    @Override // c.a.a.r.c
    public void clear() {
        this.f3290e = false;
        this.f3289d.clear();
        this.f3288c.clear();
    }

    @Override // c.a.a.r.d
    public boolean d() {
        return j() || b();
    }

    @Override // c.a.a.r.d
    public boolean d(c cVar) {
        return i() && (cVar.equals(this.f3288c) || !this.f3288c.b());
    }

    @Override // c.a.a.r.d
    public void e(c cVar) {
        if (cVar.equals(this.f3289d)) {
            return;
        }
        d dVar = this.f3287b;
        if (dVar != null) {
            dVar.e(this);
        }
        if (this.f3289d.f()) {
            return;
        }
        this.f3289d.clear();
    }

    @Override // c.a.a.r.c
    public boolean e() {
        return this.f3288c.e();
    }

    @Override // c.a.a.r.c
    public boolean f() {
        return this.f3288c.f() || this.f3289d.f();
    }

    @Override // c.a.a.r.d
    public boolean f(c cVar) {
        return g() && cVar.equals(this.f3288c);
    }

    @Override // c.a.a.r.c
    public boolean isRunning() {
        return this.f3288c.isRunning();
    }
}
