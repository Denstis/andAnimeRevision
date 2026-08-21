package c.a.a.r;

/* JADX INFO: loaded from: classes.dex */
public final class b implements d, c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f3267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f3268c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f3269d;

    public b(d dVar) {
        this.f3267b = dVar;
    }

    private boolean g() {
        d dVar = this.f3267b;
        return dVar == null || dVar.f(this);
    }

    private boolean g(c cVar) {
        return cVar.equals(this.f3268c) || (this.f3268c.c() && cVar.equals(this.f3269d));
    }

    private boolean h() {
        d dVar = this.f3267b;
        return dVar == null || dVar.c(this);
    }

    private boolean i() {
        d dVar = this.f3267b;
        return dVar == null || dVar.d(this);
    }

    private boolean j() {
        d dVar = this.f3267b;
        return dVar != null && dVar.d();
    }

    @Override // c.a.a.r.c
    public void a() {
        this.f3268c.a();
        this.f3269d.a();
    }

    public void a(c cVar, c cVar2) {
        this.f3268c = cVar;
        this.f3269d = cVar2;
    }

    @Override // c.a.a.r.c
    public boolean a(c cVar) {
        if (!(cVar instanceof b)) {
            return false;
        }
        b bVar = (b) cVar;
        return this.f3268c.a(bVar.f3268c) && this.f3269d.a(bVar.f3269d);
    }

    @Override // c.a.a.r.d
    public void b(c cVar) {
        if (!cVar.equals(this.f3269d)) {
            if (this.f3269d.isRunning()) {
                return;
            }
            this.f3269d.begin();
        } else {
            d dVar = this.f3267b;
            if (dVar != null) {
                dVar.b(this);
            }
        }
    }

    @Override // c.a.a.r.c
    public boolean b() {
        return (this.f3268c.c() ? this.f3269d : this.f3268c).b();
    }

    @Override // c.a.a.r.c
    public void begin() {
        if (this.f3268c.isRunning()) {
            return;
        }
        this.f3268c.begin();
    }

    @Override // c.a.a.r.c
    public boolean c() {
        return this.f3268c.c() && this.f3269d.c();
    }

    @Override // c.a.a.r.d
    public boolean c(c cVar) {
        return h() && g(cVar);
    }

    @Override // c.a.a.r.c
    public void clear() {
        this.f3268c.clear();
        if (this.f3269d.isRunning()) {
            this.f3269d.clear();
        }
    }

    @Override // c.a.a.r.d
    public boolean d() {
        return j() || b();
    }

    @Override // c.a.a.r.d
    public boolean d(c cVar) {
        return i() && g(cVar);
    }

    @Override // c.a.a.r.d
    public void e(c cVar) {
        d dVar = this.f3267b;
        if (dVar != null) {
            dVar.e(this);
        }
    }

    @Override // c.a.a.r.c
    public boolean e() {
        return (this.f3268c.c() ? this.f3269d : this.f3268c).e();
    }

    @Override // c.a.a.r.c
    public boolean f() {
        return (this.f3268c.c() ? this.f3269d : this.f3268c).f();
    }

    @Override // c.a.a.r.d
    public boolean f(c cVar) {
        return g() && g(cVar);
    }

    @Override // c.a.a.r.c
    public boolean isRunning() {
        return (this.f3268c.c() ? this.f3269d : this.f3268c).isRunning();
    }
}
