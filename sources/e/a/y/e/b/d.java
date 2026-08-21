package e.a.y.e.b;

/* JADX INFO: loaded from: classes.dex */
public final class d<T> extends e.a.y.e.b.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e.a.x.d<? super T> f4170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final e.a.x.d<? super Throwable> f4171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final e.a.x.a f4172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final e.a.x.a f4173f;

    static final class a<T> implements e.a.m<T>, e.a.v.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final e.a.m<? super T> f4174b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final e.a.x.d<? super T> f4175c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final e.a.x.d<? super Throwable> f4176d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final e.a.x.a f4177e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final e.a.x.a f4178f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        e.a.v.b f4179g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f4180h;

        a(e.a.m<? super T> mVar, e.a.x.d<? super T> dVar, e.a.x.d<? super Throwable> dVar2, e.a.x.a aVar, e.a.x.a aVar2) {
            this.f4174b = mVar;
            this.f4175c = dVar;
            this.f4176d = dVar2;
            this.f4177e = aVar;
            this.f4178f = aVar2;
        }

        @Override // e.a.m
        public void a(e.a.v.b bVar) {
            if (e.a.y.a.b.a(this.f4179g, bVar)) {
                this.f4179g = bVar;
                this.f4174b.a((e.a.v.b) this);
            }
        }

        @Override // e.a.m
        public void a(T t) {
            if (this.f4180h) {
                return;
            }
            try {
                this.f4175c.a(t);
                this.f4174b.a(t);
            } catch (Throwable th) {
                e.a.w.b.b(th);
                this.f4179g.b();
                a(th);
            }
        }

        @Override // e.a.m
        public void a(Throwable th) {
            if (this.f4180h) {
                e.a.a0.a.b(th);
                return;
            }
            this.f4180h = true;
            try {
                this.f4176d.a(th);
            } catch (Throwable th2) {
                e.a.w.b.b(th2);
                th = new e.a.w.a(th, th2);
            }
            this.f4174b.a(th);
            try {
                this.f4178f.run();
            } catch (Throwable th3) {
                e.a.w.b.b(th3);
                e.a.a0.a.b(th3);
            }
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4179g.a();
        }

        @Override // e.a.v.b
        public void b() {
            this.f4179g.b();
        }

        @Override // e.a.m
        public void onComplete() {
            if (this.f4180h) {
                return;
            }
            try {
                this.f4177e.run();
                this.f4180h = true;
                this.f4174b.onComplete();
                try {
                    this.f4178f.run();
                } catch (Throwable th) {
                    e.a.w.b.b(th);
                    e.a.a0.a.b(th);
                }
            } catch (Throwable th2) {
                e.a.w.b.b(th2);
                a(th2);
            }
        }
    }

    public d(e.a.k<T> kVar, e.a.x.d<? super T> dVar, e.a.x.d<? super Throwable> dVar2, e.a.x.a aVar, e.a.x.a aVar2) {
        super(kVar);
        this.f4170c = dVar;
        this.f4171d = dVar2;
        this.f4172e = aVar;
        this.f4173f = aVar2;
    }

    @Override // e.a.h
    public void b(e.a.m<? super T> mVar) {
        this.f4161b.a(new a(mVar, this.f4170c, this.f4171d, this.f4172e, this.f4173f));
    }
}
