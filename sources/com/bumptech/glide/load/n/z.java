package com.bumptech.glide.load.n;

import android.util.Log;
import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.n.f;
import com.bumptech.glide.load.o.n;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class z implements f, d.a<Object>, f.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g<?> f3687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f.a f3688c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3689d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f3690e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f3691f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile n.a<?> f3692g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private d f3693h;

    z(g<?> gVar, f.a aVar) {
        this.f3687b = gVar;
        this.f3688c = aVar;
    }

    private void b(Object obj) {
        long jA = c.a.a.t.f.a();
        try {
            com.bumptech.glide.load.d<X> dVarA = this.f3687b.a(obj);
            e eVar = new e(dVarA, obj, this.f3687b.i());
            this.f3693h = new d(this.f3692g.f3737a, this.f3687b.l());
            this.f3687b.d().a(this.f3693h, eVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + this.f3693h + ", data: " + obj + ", encoder: " + dVarA + ", duration: " + c.a.a.t.f.a(jA));
            }
            this.f3692g.f3739c.b();
            this.f3690e = new c(Collections.singletonList(this.f3692g.f3737a), this.f3687b, this);
        } catch (Throwable th) {
            this.f3692g.f3739c.b();
            throw th;
        }
    }

    private boolean c() {
        return this.f3689d < this.f3687b.g().size();
    }

    @Override // com.bumptech.glide.load.n.f.a
    public void a(com.bumptech.glide.load.g gVar, Exception exc, com.bumptech.glide.load.m.d<?> dVar, com.bumptech.glide.load.a aVar) {
        this.f3688c.a(gVar, exc, dVar, this.f3692g.f3739c.c());
    }

    @Override // com.bumptech.glide.load.n.f.a
    public void a(com.bumptech.glide.load.g gVar, Object obj, com.bumptech.glide.load.m.d<?> dVar, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.g gVar2) {
        this.f3688c.a(gVar, obj, dVar, this.f3692g.f3739c.c(), gVar);
    }

    @Override // com.bumptech.glide.load.m.d.a
    public void a(Exception exc) {
        this.f3688c.a(this.f3693h, exc, this.f3692g.f3739c, this.f3692g.f3739c.c());
    }

    @Override // com.bumptech.glide.load.m.d.a
    public void a(Object obj) {
        j jVarE = this.f3687b.e();
        if (obj == null || !jVarE.a(this.f3692g.f3739c.c())) {
            this.f3688c.a(this.f3692g.f3737a, obj, this.f3692g.f3739c, this.f3692g.f3739c.c(), this.f3693h);
        } else {
            this.f3691f = obj;
            this.f3688c.b();
        }
    }

    @Override // com.bumptech.glide.load.n.f
    public boolean a() {
        Object obj = this.f3691f;
        if (obj != null) {
            this.f3691f = null;
            b(obj);
        }
        c cVar = this.f3690e;
        if (cVar != null && cVar.a()) {
            return true;
        }
        this.f3690e = null;
        this.f3692g = null;
        boolean z = false;
        while (!z && c()) {
            List<n.a<?>> listG = this.f3687b.g();
            int i2 = this.f3689d;
            this.f3689d = i2 + 1;
            this.f3692g = listG.get(i2);
            if (this.f3692g != null && (this.f3687b.e().a(this.f3692g.f3739c.c()) || this.f3687b.c(this.f3692g.f3739c.a()))) {
                this.f3692g.f3739c.a(this.f3687b.j(), this);
                z = true;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.n.f.a
    public void b() {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.n.f
    public void cancel() {
        n.a<?> aVar = this.f3692g;
        if (aVar != null) {
            aVar.f3739c.cancel();
        }
    }
}
