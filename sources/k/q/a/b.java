package k.q.a;

import k.m;

/* JADX INFO: loaded from: classes.dex */
final class b<T> extends e.a.h<m<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k.b<T> f5166b;

    private static final class a<T> implements e.a.v.b, k.d<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k.b<?> f5167b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final e.a.m<? super m<T>> f5168c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private volatile boolean f5169d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f5170e = false;

        a(k.b<?> bVar, e.a.m<? super m<T>> mVar) {
            this.f5167b = bVar;
            this.f5168c = mVar;
        }

        @Override // k.d
        public void a(k.b<T> bVar, Throwable th) {
            if (bVar.j()) {
                return;
            }
            try {
                this.f5168c.a(th);
            } catch (Throwable th2) {
                e.a.w.b.b(th2);
                e.a.a0.a.b(new e.a.w.a(th, th2));
            }
        }

        @Override // k.d
        public void a(k.b<T> bVar, m<T> mVar) {
            if (this.f5169d) {
                return;
            }
            try {
                this.f5168c.a(mVar);
                if (this.f5169d) {
                    return;
                }
                this.f5170e = true;
                this.f5168c.onComplete();
            } catch (Throwable th) {
                if (this.f5170e) {
                    e.a.a0.a.b(th);
                    return;
                }
                if (this.f5169d) {
                    return;
                }
                try {
                    this.f5168c.a(th);
                } catch (Throwable th2) {
                    e.a.w.b.b(th2);
                    e.a.a0.a.b(new e.a.w.a(th, th2));
                }
            }
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f5169d;
        }

        @Override // e.a.v.b
        public void b() {
            this.f5169d = true;
            this.f5167b.cancel();
        }
    }

    b(k.b<T> bVar) {
        this.f5166b = bVar;
    }

    @Override // e.a.h
    protected void b(e.a.m<? super m<T>> mVar) {
        k.b<T> bVarClone = this.f5166b.clone();
        a aVar = new a(bVarClone, mVar);
        mVar.a((e.a.v.b) aVar);
        bVarClone.a(aVar);
    }
}
