package e.a.y.e.b;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class p<T, R> extends e.a.y.e.b.a<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e.a.x.e<? super T, ? extends e.a.k<? extends R>> f4219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f4220d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f4221e;

    static final class a<T, R> extends AtomicReference<e.a.v.b> implements e.a.m<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final b<T, R> f4222b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final long f4223c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f4224d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        volatile e.a.y.c.h<R> f4225e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        volatile boolean f4226f;

        a(b<T, R> bVar, long j2, int i2) {
            this.f4222b = bVar;
            this.f4223c = j2;
            this.f4224d = i2;
        }

        public void a() {
            e.a.y.a.b.a(this);
        }

        @Override // e.a.m
        public void a(e.a.v.b bVar) {
            if (e.a.y.a.b.c(this, bVar)) {
                if (bVar instanceof e.a.y.c.d) {
                    e.a.y.c.d dVar = (e.a.y.c.d) bVar;
                    int iA = dVar.a(3);
                    if (iA == 1) {
                        this.f4225e = dVar;
                        this.f4226f = true;
                        this.f4222b.d();
                        return;
                    } else if (iA == 2) {
                        this.f4225e = dVar;
                        return;
                    }
                }
                this.f4225e = new e.a.y.f.a(this.f4224d);
            }
        }

        @Override // e.a.m
        public void a(R r) {
            if (this.f4223c == this.f4222b.f4236k) {
                if (r != null) {
                    this.f4225e.b(r);
                }
                this.f4222b.d();
            }
        }

        @Override // e.a.m
        public void a(Throwable th) {
            this.f4222b.a(this, th);
        }

        @Override // e.a.m
        public void onComplete() {
            if (this.f4223c == this.f4222b.f4236k) {
                this.f4226f = true;
                this.f4222b.d();
            }
        }
    }

    static final class b<T, R> extends AtomicInteger implements e.a.m<T>, e.a.v.b {
        static final a<Object, Object> l = new a<>(null, -1, 1);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final e.a.m<? super R> f4227b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final e.a.x.e<? super T, ? extends e.a.k<? extends R>> f4228c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f4229d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final boolean f4230e;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        volatile boolean f4232g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        volatile boolean f4233h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        e.a.v.b f4234i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        volatile long f4236k;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final AtomicReference<a<T, R>> f4235j = new AtomicReference<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final e.a.y.h.a f4231f = new e.a.y.h.a();

        static {
            l.a();
        }

        b(e.a.m<? super R> mVar, e.a.x.e<? super T, ? extends e.a.k<? extends R>> eVar, int i2, boolean z) {
            this.f4227b = mVar;
            this.f4228c = eVar;
            this.f4229d = i2;
            this.f4230e = z;
        }

        @Override // e.a.m
        public void a(e.a.v.b bVar) {
            if (e.a.y.a.b.a(this.f4234i, bVar)) {
                this.f4234i = bVar;
                this.f4227b.a((e.a.v.b) this);
            }
        }

        void a(a<T, R> aVar, Throwable th) {
            if (aVar.f4223c != this.f4236k || !this.f4231f.a(th)) {
                e.a.a0.a.b(th);
                return;
            }
            if (!this.f4230e) {
                this.f4234i.b();
            }
            aVar.f4226f = true;
            d();
        }

        @Override // e.a.m
        public void a(T t) {
            a<T, R> aVar;
            long j2 = this.f4236k + 1;
            this.f4236k = j2;
            a<T, R> aVar2 = this.f4235j.get();
            if (aVar2 != null) {
                aVar2.a();
            }
            try {
                e.a.k<? extends R> kVarApply = this.f4228c.apply(t);
                e.a.y.b.b.a(kVarApply, "The ObservableSource returned is null");
                e.a.k<? extends R> kVar = kVarApply;
                a<T, R> aVar3 = new a<>(this, j2, this.f4229d);
                do {
                    aVar = this.f4235j.get();
                    if (aVar == l) {
                        return;
                    }
                } while (!this.f4235j.compareAndSet(aVar, aVar3));
                kVar.a(aVar3);
            } catch (Throwable th) {
                e.a.w.b.b(th);
                this.f4234i.b();
                a(th);
            }
        }

        @Override // e.a.m
        public void a(Throwable th) {
            if (this.f4232g || !this.f4231f.a(th)) {
                e.a.a0.a.b(th);
                return;
            }
            if (!this.f4230e) {
                c();
            }
            this.f4232g = true;
            d();
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4233h;
        }

        @Override // e.a.v.b
        public void b() {
            if (this.f4233h) {
                return;
            }
            this.f4233h = true;
            this.f4234i.b();
            c();
        }

        void c() {
            a<T, R> andSet;
            a<T, R> aVar = this.f4235j.get();
            a<Object, Object> aVar2 = l;
            if (aVar == aVar2 || (andSet = this.f4235j.getAndSet((a<T, R>) aVar2)) == l || andSet == null) {
                return;
            }
            andSet.a();
        }

        /* JADX WARN: Removed duplicated region for block: B:93:0x00d4 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x00db A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:96:0x000f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:97:0x000f A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void d() {
            /*
                Method dump skipped, instruction units count: 220
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: e.a.y.e.b.p.b.d():void");
        }

        @Override // e.a.m
        public void onComplete() {
            if (this.f4232g) {
                return;
            }
            this.f4232g = true;
            d();
        }
    }

    public p(e.a.k<T> kVar, e.a.x.e<? super T, ? extends e.a.k<? extends R>> eVar, int i2, boolean z) {
        super(kVar);
        this.f4219c = eVar;
        this.f4220d = i2;
        this.f4221e = z;
    }

    @Override // e.a.h
    public void b(e.a.m<? super R> mVar) {
        if (l.a(this.f4161b, mVar, this.f4219c)) {
            return;
        }
        this.f4161b.a(new b(mVar, this.f4219c, this.f4220d, this.f4221e));
    }
}
