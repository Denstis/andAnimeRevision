package e.a.y.d;

import e.a.q;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class c<T> extends AtomicReference<e.a.v.b> implements q<T>, e.a.v.b, e.a.z.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e.a.x.d<? super T> f4149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e.a.x.d<? super Throwable> f4150c;

    public c(e.a.x.d<? super T> dVar, e.a.x.d<? super Throwable> dVar2) {
        this.f4149b = dVar;
        this.f4150c = dVar2;
    }

    @Override // e.a.q
    public void a(e.a.v.b bVar) {
        e.a.y.a.b.c(this, bVar);
    }

    @Override // e.a.q
    public void a(Throwable th) {
        lazySet(e.a.y.a.b.DISPOSED);
        try {
            this.f4150c.a(th);
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

    @Override // e.a.q
    public void onSuccess(T t) {
        lazySet(e.a.y.a.b.DISPOSED);
        try {
            this.f4149b.a(t);
        } catch (Throwable th) {
            e.a.w.b.b(th);
            e.a.a0.a.b(th);
        }
    }
}
