package com.bumptech.glide.load.n;

import c.a.a.t.l.a;
import com.bumptech.glide.load.n.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
class l<R> implements h.b<R>, a.f {
    private static final c y = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e f3615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.a.a.t.l.c f3616c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b.h.n.d<l<?>> f3617d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f3618e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final m f3619f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.bumptech.glide.load.n.c0.a f3620g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.bumptech.glide.load.n.c0.a f3621h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.bumptech.glide.load.n.c0.a f3622i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.bumptech.glide.load.n.c0.a f3623j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final AtomicInteger f3624k;
    private com.bumptech.glide.load.g l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private v<?> q;
    com.bumptech.glide.load.a r;
    private boolean s;
    q t;
    private boolean u;
    p<?> v;
    private h<R> w;
    private volatile boolean x;

    private class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c.a.a.r.g f3625b;

        a(c.a.a.r.g gVar) {
            this.f3625b = gVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (l.this) {
                if (l.this.f3615b.a(this.f3625b)) {
                    l.this.a(this.f3625b);
                }
                l.this.b();
            }
        }
    }

    private class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c.a.a.r.g f3627b;

        b(c.a.a.r.g gVar) {
            this.f3627b = gVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (l.this) {
                if (l.this.f3615b.a(this.f3627b)) {
                    l.this.v.d();
                    l.this.b(this.f3627b);
                    l.this.c(this.f3627b);
                }
                l.this.b();
            }
        }
    }

    static class c {
        c() {
        }

        public <R> p<R> a(v<R> vVar, boolean z) {
            return new p<>(vVar, z, true);
        }
    }

    static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final c.a.a.r.g f3629a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Executor f3630b;

        d(c.a.a.r.g gVar, Executor executor) {
            this.f3629a = gVar;
            this.f3630b = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f3629a.equals(((d) obj).f3629a);
            }
            return false;
        }

        public int hashCode() {
            return this.f3629a.hashCode();
        }
    }

    static final class e implements Iterable<d> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<d> f3631b;

        e() {
            this(new ArrayList(2));
        }

        e(List<d> list) {
            this.f3631b = list;
        }

        private static d c(c.a.a.r.g gVar) {
            return new d(gVar, c.a.a.t.e.a());
        }

        e a() {
            return new e(new ArrayList(this.f3631b));
        }

        void a(c.a.a.r.g gVar, Executor executor) {
            this.f3631b.add(new d(gVar, executor));
        }

        boolean a(c.a.a.r.g gVar) {
            return this.f3631b.contains(c(gVar));
        }

        void b(c.a.a.r.g gVar) {
            this.f3631b.remove(c(gVar));
        }

        void clear() {
            this.f3631b.clear();
        }

        boolean isEmpty() {
            return this.f3631b.isEmpty();
        }

        @Override // java.lang.Iterable
        public Iterator<d> iterator() {
            return this.f3631b.iterator();
        }

        int size() {
            return this.f3631b.size();
        }
    }

    l(com.bumptech.glide.load.n.c0.a aVar, com.bumptech.glide.load.n.c0.a aVar2, com.bumptech.glide.load.n.c0.a aVar3, com.bumptech.glide.load.n.c0.a aVar4, m mVar, b.h.n.d<l<?>> dVar) {
        this(aVar, aVar2, aVar3, aVar4, mVar, dVar, y);
    }

    l(com.bumptech.glide.load.n.c0.a aVar, com.bumptech.glide.load.n.c0.a aVar2, com.bumptech.glide.load.n.c0.a aVar3, com.bumptech.glide.load.n.c0.a aVar4, m mVar, b.h.n.d<l<?>> dVar, c cVar) {
        this.f3615b = new e();
        this.f3616c = c.a.a.t.l.c.b();
        this.f3624k = new AtomicInteger();
        this.f3620g = aVar;
        this.f3621h = aVar2;
        this.f3622i = aVar3;
        this.f3623j = aVar4;
        this.f3619f = mVar;
        this.f3617d = dVar;
        this.f3618e = cVar;
    }

    private com.bumptech.glide.load.n.c0.a g() {
        return this.n ? this.f3622i : this.o ? this.f3623j : this.f3621h;
    }

    private boolean h() {
        return this.u || this.s || this.x;
    }

    private synchronized void i() {
        if (this.l == null) {
            throw new IllegalArgumentException();
        }
        this.f3615b.clear();
        this.l = null;
        this.v = null;
        this.q = null;
        this.u = false;
        this.x = false;
        this.s = false;
        this.w.a(false);
        this.w = null;
        this.t = null;
        this.r = null;
        this.f3617d.a(this);
    }

    synchronized l<R> a(com.bumptech.glide.load.g gVar, boolean z, boolean z2, boolean z3, boolean z4) {
        this.l = gVar;
        this.m = z;
        this.n = z2;
        this.o = z3;
        this.p = z4;
        return this;
    }

    void a() {
        if (h()) {
            return;
        }
        this.x = true;
        this.w.a();
        this.f3619f.a(this, this.l);
    }

    synchronized void a(int i2) {
        c.a.a.t.j.a(h(), "Not yet complete!");
        if (this.f3624k.getAndAdd(i2) == 0 && this.v != null) {
            this.v.d();
        }
    }

    synchronized void a(c.a.a.r.g gVar) {
        try {
            gVar.a(this.t);
        } catch (Throwable th) {
            throw new com.bumptech.glide.load.n.b(th);
        }
    }

    synchronized void a(c.a.a.r.g gVar, Executor executor) {
        Runnable aVar;
        this.f3616c.a();
        this.f3615b.a(gVar, executor);
        boolean z = true;
        if (this.s) {
            a(1);
            aVar = new b(gVar);
        } else if (this.u) {
            a(1);
            aVar = new a(gVar);
        } else {
            if (this.x) {
                z = false;
            }
            c.a.a.t.j.a(z, "Cannot add callbacks to a cancelled EngineJob");
        }
        executor.execute(aVar);
    }

    @Override // com.bumptech.glide.load.n.h.b
    public void a(h<?> hVar) {
        g().execute(hVar);
    }

    @Override // com.bumptech.glide.load.n.h.b
    public void a(q qVar) {
        synchronized (this) {
            this.t = qVar;
        }
        c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.n.h.b
    public void a(v<R> vVar, com.bumptech.glide.load.a aVar) {
        synchronized (this) {
            this.q = vVar;
            this.r = aVar;
        }
        e();
    }

    synchronized void b() {
        this.f3616c.a();
        c.a.a.t.j.a(h(), "Not yet complete!");
        int iDecrementAndGet = this.f3624k.decrementAndGet();
        c.a.a.t.j.a(iDecrementAndGet >= 0, "Can't decrement below 0");
        if (iDecrementAndGet == 0) {
            if (this.v != null) {
                this.v.g();
            }
            i();
        }
    }

    synchronized void b(c.a.a.r.g gVar) {
        try {
            gVar.a(this.v, this.r);
        } catch (Throwable th) {
            throw new com.bumptech.glide.load.n.b(th);
        }
    }

    public synchronized void b(h<R> hVar) {
        this.w = hVar;
        (hVar.c() ? this.f3620g : g()).execute(hVar);
    }

    void c() {
        synchronized (this) {
            this.f3616c.a();
            if (this.x) {
                i();
                return;
            }
            if (this.f3615b.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
            if (this.u) {
                throw new IllegalStateException("Already failed once");
            }
            this.u = true;
            com.bumptech.glide.load.g gVar = this.l;
            e eVarA = this.f3615b.a();
            a(eVarA.size() + 1);
            this.f3619f.a(this, gVar, null);
            for (d dVar : eVarA) {
                dVar.f3630b.execute(new a(dVar.f3629a));
            }
            b();
        }
    }

    synchronized void c(c.a.a.r.g gVar) {
        this.f3616c.a();
        this.f3615b.b(gVar);
        if (this.f3615b.isEmpty()) {
            a();
            if ((this.s || this.u) && this.f3624k.get() == 0) {
                i();
            }
        }
    }

    @Override // c.a.a.t.l.a.f
    public c.a.a.t.l.c d() {
        return this.f3616c;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void e() {
        synchronized (this) {
            this.f3616c.a();
            if (this.x) {
                this.q.a();
                i();
                return;
            }
            if (this.f3615b.isEmpty()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            }
            if (this.s) {
                throw new IllegalStateException("Already have resource");
            }
            this.v = this.f3618e.a(this.q, this.m);
            this.s = true;
            e eVarA = this.f3615b.a();
            a(eVarA.size() + 1);
            this.f3619f.a(this, this.l, this.v);
            for (d dVar : eVarA) {
                dVar.f3630b.execute(new b(dVar.f3629a));
            }
            b();
        }
    }

    boolean f() {
        return this.p;
    }
}
