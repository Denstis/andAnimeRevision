package e.a.y.d;

import e.a.m;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class f<T> extends AtomicReference<e.a.v.b> implements m<T>, e.a.v.b, e.a.z.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e.a.x.d<? super T> f4157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e.a.x.d<? super Throwable> f4158c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final e.a.x.a f4159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final e.a.x.d<? super e.a.v.b> f4160e;

    public f(e.a.x.d<? super T> dVar, e.a.x.d<? super Throwable> dVar2, e.a.x.a aVar, e.a.x.d<? super e.a.v.b> dVar3) {
        this.f4157b = dVar;
        this.f4158c = dVar2;
        this.f4159d = aVar;
        this.f4160e = dVar3;
    }

    @Override // e.a.m
    public void a(e.a.v.b bVar) {
        if (e.a.y.a.b.c(this, bVar)) {
            try {
                this.f4160e.a(this);
            } catch (Throwable th) {
                e.a.w.b.b(th);
                bVar.b();
                a(th);
            }
        }
    }

    @Override // e.a.m
    public void a(T t) {
        if (a()) {
            return;
        }
        try {
            this.f4157b.a(t);
        } catch (Throwable th) {
            e.a.w.b.b(th);
            get().b();
            a(th);
        }
    }

    @Override // e.a.m
    public void a(Throwable th) {
        if (a()) {
            return;
        }
        lazySet(e.a.y.a.b.DISPOSED);
        try {
            this.f4158c.a(th);
        } catch (Throwable th2) {
            e.a.w.b.b(th2);
            e.a.a0.a.b(new e.a.w.a(th, th2));
        }
    }

    @Override // e.a.v.b
    public boolean a() {
        return get() == e.a.y.a.b.DISPOSED;
    }

    @Override // e.a.v.b
    public void b() {
        e.a.y.a.b.a((AtomicReference<e.a.v.b>) this);
    }

    @Override // e.a.m
    public void onComplete() {
        if (a()) {
            return;
        }
        lazySet(e.a.y.a.b.DISPOSED);
        try {
            this.f4159d.run();
        } catch (Throwable th) {
            e.a.w.b.b(th);
            e.a.a0.a.b(th);
        }
    }
}
