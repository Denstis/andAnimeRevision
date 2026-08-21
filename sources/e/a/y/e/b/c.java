package e.a.y.e.b;

/* JADX INFO: loaded from: classes.dex */
public final class c<T, K> extends e.a.y.e.b.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e.a.x.e<? super T, K> f4164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final e.a.x.c<? super K, ? super K> f4165d;

    static final class a<T, K> extends e.a.y.d.a<T, T> {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final e.a.x.e<? super T, K> f4166g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final e.a.x.c<? super K, ? super K> f4167h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        K f4168i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f4169j;

        a(e.a.m<? super T> mVar, e.a.x.e<? super T, K> eVar, e.a.x.c<? super K, ? super K> cVar) {
            super(mVar);
            this.f4166g = eVar;
            this.f4167h = cVar;
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
            if (this.f4148f == 0) {
                try {
                    K kApply = this.f4166g.apply(t);
                    if (this.f4169j) {
                        boolean zA = this.f4167h.a(this.f4168i, kApply);
                        this.f4168i = kApply;
                        if (zA) {
                            return;
                        }
                    } else {
                        this.f4169j = true;
                        this.f4168i = kApply;
                    }
                } catch (Throwable th) {
                    b(th);
                    return;
                }
            }
            this.f4144b.a((Object) t);
        }

        @Override // e.a.y.c.h
        public T c() {
            T tC;
            boolean zA;
            do {
                tC = this.f4146d.c();
                if (tC == null) {
                    return null;
                }
                K kApply = this.f4166g.apply(tC);
                if (!this.f4169j) {
                    this.f4169j = true;
                    this.f4168i = kApply;
                    return tC;
                }
                zA = this.f4167h.a(this.f4168i, kApply);
                this.f4168i = kApply;
            } while (zA);
            return tC;
        }
    }

    public c(e.a.k<T> kVar, e.a.x.e<? super T, K> eVar, e.a.x.c<? super K, ? super K> cVar) {
        super(kVar);
        this.f4164c = eVar;
        this.f4165d = cVar;
    }

    @Override // e.a.h
    protected void b(e.a.m<? super T> mVar) {
        this.f4161b.a(new a(mVar, this.f4164c, this.f4165d));
    }
}
