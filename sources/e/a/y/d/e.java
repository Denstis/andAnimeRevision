package e.a.y.d;

import e.a.m;

/* JADX INFO: loaded from: classes.dex */
public final class e<T> implements m<T>, e.a.v.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final m<? super T> f4153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e.a.x.d<? super e.a.v.b> f4154c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final e.a.x.a f4155d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    e.a.v.b f4156e;

    public e(m<? super T> mVar, e.a.x.d<? super e.a.v.b> dVar, e.a.x.a aVar) {
        this.f4153b = mVar;
        this.f4154c = dVar;
        this.f4155d = aVar;
    }

    @Override // e.a.m
    public void a(e.a.v.b bVar) {
        try {
            this.f4154c.a(bVar);
            if (e.a.y.a.b.a(this.f4156e, bVar)) {
                this.f4156e = bVar;
                this.f4153b.a((e.a.v.b) this);
            }
        } catch (Throwable th) {
            e.a.w.b.b(th);
            bVar.b();
            this.f4156e = e.a.y.a.b.DISPOSED;
            e.a.y.a.c.a(th, this.f4153b);
        }
    }

    @Override // e.a.m
    public void a(T t) {
        this.f4153b.a(t);
    }

    @Override // e.a.m
    public void a(Throwable th) {
        if (this.f4156e != e.a.y.a.b.DISPOSED) {
            this.f4153b.a(th);
        } else {
            e.a.a0.a.b(th);
        }
    }

    @Override // e.a.v.b
    public boolean a() {
        return this.f4156e.a();
    }

    @Override // e.a.v.b
    public void b() {
        try {
            this.f4155d.run();
        } catch (Throwable th) {
            e.a.w.b.b(th);
            e.a.a0.a.b(th);
        }
        this.f4156e.b();
    }

    @Override // e.a.m
    public void onComplete() {
        if (this.f4156e != e.a.y.a.b.DISPOSED) {
            this.f4153b.onComplete();
        }
    }
}
