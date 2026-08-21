package e.a.y.d;

import e.a.m;

/* JADX INFO: loaded from: classes.dex */
public class d<T> extends b<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final m<? super T> f4151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected T f4152c;

    public d(m<? super T> mVar) {
        this.f4151b = mVar;
    }

    @Override // e.a.y.c.e
    public final int a(int i2) {
        if ((i2 & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    @Override // e.a.v.b
    public final boolean a() {
        return get() == 4;
    }

    @Override // e.a.v.b
    public void b() {
        set(4);
        this.f4152c = null;
    }

    public final void b(Throwable th) {
        if ((get() & 54) != 0) {
            e.a.a0.a.b(th);
        } else {
            lazySet(2);
            this.f4151b.a(th);
        }
    }

    @Override // e.a.y.c.h
    public final T c() {
        if (get() != 16) {
            return null;
        }
        T t = this.f4152c;
        this.f4152c = null;
        lazySet(32);
        return t;
    }

    public final void c(T t) {
        int i2 = get();
        if ((i2 & 54) != 0) {
            return;
        }
        m<? super T> mVar = this.f4151b;
        if (i2 == 8) {
            this.f4152c = t;
            lazySet(16);
            t = null;
        } else {
            lazySet(2);
        }
        mVar.a(t);
        if (get() != 4) {
            mVar.onComplete();
        }
    }

    @Override // e.a.y.c.h
    public final void clear() {
        lazySet(32);
        this.f4152c = null;
    }

    @Override // e.a.y.c.h
    public final boolean isEmpty() {
        return get() != 16;
    }
}
