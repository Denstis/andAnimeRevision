package e.a.y.e.b;

/* JADX INFO: loaded from: classes.dex */
public final class h<T> extends e.a.y.e.b.a<T, T> {

    static final class a<T> implements e.a.m<T>, e.a.v.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final e.a.m<? super T> f4185b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        e.a.v.b f4186c;

        a(e.a.m<? super T> mVar) {
            this.f4185b = mVar;
        }

        @Override // e.a.m
        public void a(e.a.v.b bVar) {
            this.f4186c = bVar;
            this.f4185b.a((e.a.v.b) this);
        }

        @Override // e.a.m
        public void a(T t) {
        }

        @Override // e.a.m
        public void a(Throwable th) {
            this.f4185b.a(th);
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4186c.a();
        }

        @Override // e.a.v.b
        public void b() {
            this.f4186c.b();
        }

        @Override // e.a.m
        public void onComplete() {
            this.f4185b.onComplete();
        }
    }

    public h(e.a.k<T> kVar) {
        super(kVar);
    }

    @Override // e.a.h
    public void b(e.a.m<? super T> mVar) {
        this.f4161b.a(new a(mVar));
    }
}
