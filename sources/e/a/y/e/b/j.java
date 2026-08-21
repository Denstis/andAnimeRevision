package e.a.y.e.b;

/* JADX INFO: loaded from: classes.dex */
public final class j<T, U> extends e.a.y.e.b.a<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e.a.x.e<? super T, ? extends U> f4188c;

    static final class a<T, U> extends e.a.y.d.a<T, U> {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final e.a.x.e<? super T, ? extends U> f4189g;

        a(e.a.m<? super U> mVar, e.a.x.e<? super T, ? extends U> eVar) {
            super(mVar);
            this.f4189g = eVar;
        }

        @Override // e.a.y.c.e
        public int a(int i2) {
            return b(i2);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // e.a.m
        public void a(T t) {
            if (this.f4147e) {
                return;
            }
            if (this.f4148f != 0) {
                this.f4144b.a((Object) null);
                return;
            }
            try {
                U uApply = this.f4189g.apply(t);
                e.a.y.b.b.a(uApply, "The mapper function returned a null value.");
                this.f4144b.a((Object) uApply);
            } catch (Throwable th) {
                b(th);
            }
        }

        @Override // e.a.y.c.h
        public U c() {
            T tC = this.f4146d.c();
            if (tC == null) {
                return null;
            }
            U uApply = this.f4189g.apply(tC);
            e.a.y.b.b.a(uApply, "The mapper function returned a null value.");
            return uApply;
        }
    }

    public j(e.a.k<T> kVar, e.a.x.e<? super T, ? extends U> eVar) {
        super(kVar);
        this.f4188c = eVar;
    }

    @Override // e.a.h
    public void b(e.a.m<? super U> mVar) {
        this.f4161b.a(new a(mVar, this.f4188c));
    }
}
