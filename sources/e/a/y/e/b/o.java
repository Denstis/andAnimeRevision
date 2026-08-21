package e.a.y.e.b;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class o<T> extends e.a.y.e.b.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e.a.n f4214c;

    static final class a<T> extends AtomicReference<e.a.v.b> implements e.a.m<T>, e.a.v.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final e.a.m<? super T> f4215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final AtomicReference<e.a.v.b> f4216c = new AtomicReference<>();

        a(e.a.m<? super T> mVar) {
            this.f4215b = mVar;
        }

        @Override // e.a.m
        public void a(e.a.v.b bVar) {
            e.a.y.a.b.c(this.f4216c, bVar);
        }

        @Override // e.a.m
        public void a(T t) {
            this.f4215b.a(t);
        }

        @Override // e.a.m
        public void a(Throwable th) {
            this.f4215b.a(th);
        }

        @Override // e.a.v.b
        public boolean a() {
            return e.a.y.a.b.a(get());
        }

        @Override // e.a.v.b
        public void b() {
            e.a.y.a.b.a(this.f4216c);
            e.a.y.a.b.a((AtomicReference<e.a.v.b>) this);
        }

        void b(e.a.v.b bVar) {
            e.a.y.a.b.c(this, bVar);
        }

        @Override // e.a.m
        public void onComplete() {
            this.f4215b.onComplete();
        }
    }

    final class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a<T> f4217b;

        b(a<T> aVar) {
            this.f4217b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.f4161b.a(this.f4217b);
        }
    }

    public o(e.a.k<T> kVar, e.a.n nVar) {
        super(kVar);
        this.f4214c = nVar;
    }

    @Override // e.a.h
    public void b(e.a.m<? super T> mVar) {
        a aVar = new a(mVar);
        mVar.a((e.a.v.b) aVar);
        aVar.b(this.f4214c.a(new b(aVar)));
    }
}
