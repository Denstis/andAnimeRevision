package e.a.y.e.b;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class b<T> extends e.a.h<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e.a.j<T> f4162b;

    static final class a<T> extends AtomicReference<e.a.v.b> implements e.a.i<T>, e.a.v.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final e.a.m<? super T> f4163b;

        a(e.a.m<? super T> mVar) {
            this.f4163b = mVar;
        }

        @Override // e.a.i
        public void a(e.a.v.b bVar) {
            e.a.y.a.b.b(this, bVar);
        }

        @Override // e.a.d
        public void a(T t) {
            if (t == null) {
                a((Throwable) new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                if (a()) {
                    return;
                }
                this.f4163b.a(t);
            }
        }

        @Override // e.a.d
        public void a(Throwable th) {
            if (b(th)) {
                return;
            }
            e.a.a0.a.b(th);
        }

        @Override // e.a.i, e.a.v.b
        public boolean a() {
            return e.a.y.a.b.a(get());
        }

        @Override // e.a.v.b
        public void b() {
            e.a.y.a.b.a((AtomicReference<e.a.v.b>) this);
        }

        public boolean b(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (a()) {
                return false;
            }
            try {
                this.f4163b.a(th);
                b();
                return true;
            } catch (Throwable th2) {
                b();
                throw th2;
            }
        }

        @Override // e.a.d
        public void onComplete() {
            if (a()) {
                return;
            }
            try {
                this.f4163b.onComplete();
            } finally {
                b();
            }
        }
    }

    public b(e.a.j<T> jVar) {
        this.f4162b = jVar;
    }

    @Override // e.a.h
    protected void b(e.a.m<? super T> mVar) {
        a aVar = new a(mVar);
        mVar.a((e.a.v.b) aVar);
        try {
            this.f4162b.a(aVar);
        } catch (Throwable th) {
            e.a.w.b.b(th);
            aVar.a(th);
        }
    }
}
