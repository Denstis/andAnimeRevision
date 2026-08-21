package com.bumptech.glide.load.n;

import android.util.Log;
import c.a.a.t.l.a;
import com.bumptech.glide.load.n.b0.a;
import com.bumptech.glide.load.n.b0.h;
import com.bumptech.glide.load.n.h;
import com.bumptech.glide.load.n.p;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class k implements m, h.a, p.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final boolean f3590i = Log.isLoggable("Engine", 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f3591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o f3592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.n.b0.h f3593c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f3594d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final y f3595e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f3596f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f3597g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a f3598h;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final h.e f3599a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final b.h.n.d<h<?>> f3600b = c.a.a.t.l.a.a(150, new C0143a());

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f3601c;

        /* JADX INFO: renamed from: com.bumptech.glide.load.n.k$a$a, reason: collision with other inner class name */
        class C0143a implements a.d<h<?>> {
            C0143a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // c.a.a.t.l.a.d
            public h<?> a() {
                a aVar = a.this;
                return new h<>(aVar.f3599a, aVar.f3600b);
            }
        }

        a(h.e eVar) {
            this.f3599a = eVar;
        }

        <R> h<R> a(c.a.a.e eVar, Object obj, n nVar, com.bumptech.glide.load.g gVar, int i2, int i3, Class<?> cls, Class<R> cls2, c.a.a.h hVar, j jVar, Map<Class<?>, com.bumptech.glide.load.l<?>> map, boolean z, boolean z2, boolean z3, com.bumptech.glide.load.i iVar, h.b<R> bVar) {
            h hVarA = this.f3600b.a();
            c.a.a.t.j.a(hVarA);
            h hVar2 = hVarA;
            int i4 = this.f3601c;
            this.f3601c = i4 + 1;
            hVar2.a(eVar, obj, nVar, gVar, i2, i3, cls, cls2, hVar, jVar, map, z, z2, z3, iVar, bVar, i4);
            return hVar2;
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final com.bumptech.glide.load.n.c0.a f3603a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final com.bumptech.glide.load.n.c0.a f3604b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final com.bumptech.glide.load.n.c0.a f3605c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final com.bumptech.glide.load.n.c0.a f3606d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final m f3607e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final b.h.n.d<l<?>> f3608f = c.a.a.t.l.a.a(150, new a());

        class a implements a.d<l<?>> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // c.a.a.t.l.a.d
            public l<?> a() {
                b bVar = b.this;
                return new l<>(bVar.f3603a, bVar.f3604b, bVar.f3605c, bVar.f3606d, bVar.f3607e, bVar.f3608f);
            }
        }

        b(com.bumptech.glide.load.n.c0.a aVar, com.bumptech.glide.load.n.c0.a aVar2, com.bumptech.glide.load.n.c0.a aVar3, com.bumptech.glide.load.n.c0.a aVar4, m mVar) {
            this.f3603a = aVar;
            this.f3604b = aVar2;
            this.f3605c = aVar3;
            this.f3606d = aVar4;
            this.f3607e = mVar;
        }

        <R> l<R> a(com.bumptech.glide.load.g gVar, boolean z, boolean z2, boolean z3, boolean z4) {
            l lVarA = this.f3608f.a();
            c.a.a.t.j.a(lVarA);
            l lVar = lVarA;
            lVar.a(gVar, z, z2, z3, z4);
            return lVar;
        }
    }

    private static class c implements h.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a.InterfaceC0137a f3610a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile com.bumptech.glide.load.n.b0.a f3611b;

        c(a.InterfaceC0137a interfaceC0137a) {
            this.f3610a = interfaceC0137a;
        }

        @Override // com.bumptech.glide.load.n.h.e
        public com.bumptech.glide.load.n.b0.a a() {
            if (this.f3611b == null) {
                synchronized (this) {
                    if (this.f3611b == null) {
                        this.f3611b = this.f3610a.a();
                    }
                    if (this.f3611b == null) {
                        this.f3611b = new com.bumptech.glide.load.n.b0.b();
                    }
                }
            }
            return this.f3611b;
        }
    }

    public class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final l<?> f3612a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c.a.a.r.g f3613b;

        d(c.a.a.r.g gVar, l<?> lVar) {
            this.f3613b = gVar;
            this.f3612a = lVar;
        }

        public void a() {
            synchronized (k.this) {
                this.f3612a.c(this.f3613b);
            }
        }
    }

    k(com.bumptech.glide.load.n.b0.h hVar, a.InterfaceC0137a interfaceC0137a, com.bumptech.glide.load.n.c0.a aVar, com.bumptech.glide.load.n.c0.a aVar2, com.bumptech.glide.load.n.c0.a aVar3, com.bumptech.glide.load.n.c0.a aVar4, s sVar, o oVar, com.bumptech.glide.load.n.a aVar5, b bVar, a aVar6, y yVar, boolean z) {
        this.f3593c = hVar;
        this.f3596f = new c(interfaceC0137a);
        com.bumptech.glide.load.n.a aVar7 = aVar5 == null ? new com.bumptech.glide.load.n.a(z) : aVar5;
        this.f3598h = aVar7;
        aVar7.a(this);
        this.f3592b = oVar == null ? new o() : oVar;
        this.f3591a = sVar == null ? new s() : sVar;
        this.f3594d = bVar == null ? new b(aVar, aVar2, aVar3, aVar4, this) : bVar;
        this.f3597g = aVar6 == null ? new a(this.f3596f) : aVar6;
        this.f3595e = yVar == null ? new y() : yVar;
        hVar.a(this);
    }

    public k(com.bumptech.glide.load.n.b0.h hVar, a.InterfaceC0137a interfaceC0137a, com.bumptech.glide.load.n.c0.a aVar, com.bumptech.glide.load.n.c0.a aVar2, com.bumptech.glide.load.n.c0.a aVar3, com.bumptech.glide.load.n.c0.a aVar4, boolean z) {
        this(hVar, interfaceC0137a, aVar, aVar2, aVar3, aVar4, null, null, null, null, null, null, z);
    }

    private p<?> a(com.bumptech.glide.load.g gVar) {
        v<?> vVarA = this.f3593c.a(gVar);
        if (vVarA == null) {
            return null;
        }
        return vVarA instanceof p ? (p) vVarA : new p<>(vVarA, true, true);
    }

    private p<?> a(com.bumptech.glide.load.g gVar, boolean z) {
        if (!z) {
            return null;
        }
        p<?> pVarB = this.f3598h.b(gVar);
        if (pVarB != null) {
            pVarB.d();
        }
        return pVarB;
    }

    private static void a(String str, long j2, com.bumptech.glide.load.g gVar) {
        Log.v("Engine", str + " in " + c.a.a.t.f.a(j2) + "ms, key: " + gVar);
    }

    private p<?> b(com.bumptech.glide.load.g gVar, boolean z) {
        if (!z) {
            return null;
        }
        p<?> pVarA = a(gVar);
        if (pVarA != null) {
            pVarA.d();
            this.f3598h.a(gVar, pVarA);
        }
        return pVarA;
    }

    public synchronized <R> d a(c.a.a.e eVar, Object obj, com.bumptech.glide.load.g gVar, int i2, int i3, Class<?> cls, Class<R> cls2, c.a.a.h hVar, j jVar, Map<Class<?>, com.bumptech.glide.load.l<?>> map, boolean z, boolean z2, com.bumptech.glide.load.i iVar, boolean z3, boolean z4, boolean z5, boolean z6, c.a.a.r.g gVar2, Executor executor) {
        long jA = f3590i ? c.a.a.t.f.a() : 0L;
        n nVarA = this.f3592b.a(obj, gVar, i2, i3, map, cls, cls2, iVar);
        p<?> pVarA = a(nVarA, z3);
        if (pVarA != null) {
            gVar2.a(pVarA, com.bumptech.glide.load.a.MEMORY_CACHE);
            if (f3590i) {
                a("Loaded resource from active resources", jA, nVarA);
            }
            return null;
        }
        p<?> pVarB = b(nVarA, z3);
        if (pVarB != null) {
            gVar2.a(pVarB, com.bumptech.glide.load.a.MEMORY_CACHE);
            if (f3590i) {
                a("Loaded resource from cache", jA, nVarA);
            }
            return null;
        }
        l<?> lVarA = this.f3591a.a(nVarA, z6);
        if (lVarA != null) {
            lVarA.a(gVar2, executor);
            if (f3590i) {
                a("Added to existing load", jA, nVarA);
            }
            return new d(gVar2, lVarA);
        }
        l<R> lVarA2 = this.f3594d.a(nVarA, z3, z4, z5, z6);
        h<R> hVarA = this.f3597g.a(eVar, obj, nVarA, gVar, i2, i3, cls, cls2, hVar, jVar, map, z, z2, z6, iVar, lVarA2);
        this.f3591a.a((com.bumptech.glide.load.g) nVarA, (l<?>) lVarA2);
        lVarA2.a(gVar2, executor);
        lVarA2.b(hVarA);
        if (f3590i) {
            a("Started new load", jA, nVarA);
        }
        return new d(gVar2, lVarA2);
    }

    @Override // com.bumptech.glide.load.n.p.a
    public synchronized void a(com.bumptech.glide.load.g gVar, p<?> pVar) {
        this.f3598h.a(gVar);
        if (pVar.f()) {
            this.f3593c.a(gVar, pVar);
        } else {
            this.f3595e.a(pVar);
        }
    }

    @Override // com.bumptech.glide.load.n.m
    public synchronized void a(l<?> lVar, com.bumptech.glide.load.g gVar) {
        this.f3591a.b(gVar, lVar);
    }

    @Override // com.bumptech.glide.load.n.m
    public synchronized void a(l<?> lVar, com.bumptech.glide.load.g gVar, p<?> pVar) {
        if (pVar != null) {
            pVar.a(gVar, this);
            if (pVar.f()) {
                this.f3598h.a(gVar, pVar);
            }
            this.f3591a.b(gVar, lVar);
        } else {
            this.f3591a.b(gVar, lVar);
        }
    }

    @Override // com.bumptech.glide.load.n.b0.h.a
    public void a(v<?> vVar) {
        this.f3595e.a(vVar);
    }

    public void b(v<?> vVar) {
        if (!(vVar instanceof p)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((p) vVar).g();
    }
}
