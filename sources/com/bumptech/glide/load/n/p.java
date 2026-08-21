package com.bumptech.glide.load.n;

/* JADX INFO: loaded from: classes.dex */
class p<Z> implements v<Z> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f3641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f3642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v<Z> f3643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f3644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bumptech.glide.load.g f3645f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3646g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f3647h;

    interface a {
        void a(com.bumptech.glide.load.g gVar, p<?> pVar);
    }

    p(v<Z> vVar, boolean z, boolean z2) {
        c.a.a.t.j.a(vVar);
        this.f3643d = vVar;
        this.f3641b = z;
        this.f3642c = z2;
    }

    @Override // com.bumptech.glide.load.n.v
    public synchronized void a() {
        if (this.f3646g > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f3647h) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f3647h = true;
        if (this.f3642c) {
            this.f3643d.a();
        }
    }

    synchronized void a(com.bumptech.glide.load.g gVar, a aVar) {
        this.f3645f = gVar;
        this.f3644e = aVar;
    }

    @Override // com.bumptech.glide.load.n.v
    public int b() {
        return this.f3643d.b();
    }

    @Override // com.bumptech.glide.load.n.v
    public Class<Z> c() {
        return this.f3643d.c();
    }

    synchronized void d() {
        if (this.f3647h) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f3646g++;
    }

    v<Z> e() {
        return this.f3643d;
    }

    boolean f() {
        return this.f3641b;
    }

    void g() {
        synchronized (this.f3644e) {
            synchronized (this) {
                if (this.f3646g <= 0) {
                    throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
                }
                int i2 = this.f3646g - 1;
                this.f3646g = i2;
                if (i2 == 0) {
                    this.f3644e.a(this.f3645f, this);
                }
            }
        }
    }

    @Override // com.bumptech.glide.load.n.v
    public Z get() {
        return this.f3643d.get();
    }

    public synchronized String toString() {
        return "EngineResource{isCacheable=" + this.f3641b + ", listener=" + this.f3644e + ", key=" + this.f3645f + ", acquired=" + this.f3646g + ", isRecycled=" + this.f3647h + ", resource=" + this.f3643d + '}';
    }
}
