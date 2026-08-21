package com.bumptech.glide.load.n;

import c.a.a.t.l.a;

/* JADX INFO: loaded from: classes.dex */
final class u<Z> implements v<Z>, a.f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final b.h.n.d<u<?>> f3661f = c.a.a.t.l.a.a(20, new a());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.a.a.t.l.c f3662b = c.a.a.t.l.c.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private v<Z> f3663c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3665e;

    class a implements a.d<u<?>> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // c.a.a.t.l.a.d
        public u<?> a() {
            return new u<>();
        }
    }

    u() {
    }

    private void a(v<Z> vVar) {
        this.f3665e = false;
        this.f3664d = true;
        this.f3663c = vVar;
    }

    static <Z> u<Z> b(v<Z> vVar) {
        u uVarA = f3661f.a();
        c.a.a.t.j.a(uVarA);
        u uVar = uVarA;
        uVar.a(vVar);
        return uVar;
    }

    private void f() {
        this.f3663c = null;
        f3661f.a(this);
    }

    @Override // com.bumptech.glide.load.n.v
    public synchronized void a() {
        this.f3662b.a();
        this.f3665e = true;
        if (!this.f3664d) {
            this.f3663c.a();
            f();
        }
    }

    @Override // com.bumptech.glide.load.n.v
    public int b() {
        return this.f3663c.b();
    }

    @Override // com.bumptech.glide.load.n.v
    public Class<Z> c() {
        return this.f3663c.c();
    }

    @Override // c.a.a.t.l.a.f
    public c.a.a.t.l.c d() {
        return this.f3662b;
    }

    synchronized void e() {
        this.f3662b.a();
        if (!this.f3664d) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f3664d = false;
        if (this.f3665e) {
            a();
        }
    }

    @Override // com.bumptech.glide.load.n.v
    public Z get() {
        return this.f3663c.get();
    }
}
