package k.q.a;

import k.m;

/* JADX INFO: loaded from: classes.dex */
final class a<T> extends e.a.h<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e.a.h<m<T>> f5163b;

    /* JADX INFO: renamed from: k.q.a.a$a, reason: collision with other inner class name */
    private static class C0199a<R> implements e.a.m<m<R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e.a.m<? super R> f5164b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f5165c;

        C0199a(e.a.m<? super R> mVar) {
            this.f5164b = mVar;
        }

        @Override // e.a.m
        public void a(e.a.v.b bVar) {
            this.f5164b.a(bVar);
        }

        @Override // e.a.m
        public void a(Throwable th) {
            if (!this.f5165c) {
                this.f5164b.a(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th);
            e.a.a0.a.b(assertionError);
        }

        @Override // e.a.m
        public void a(m<R> mVar) {
            if (mVar.d()) {
                this.f5164b.a(mVar.a());
                return;
            }
            this.f5165c = true;
            d dVar = new d(mVar);
            try {
                this.f5164b.a((Throwable) dVar);
            } catch (Throwable th) {
                e.a.w.b.b(th);
                e.a.a0.a.b(new e.a.w.a(dVar, th));
            }
        }

        @Override // e.a.m
        public void onComplete() {
            if (this.f5165c) {
                return;
            }
            this.f5164b.onComplete();
        }
    }

    a(e.a.h<m<T>> hVar) {
        this.f5163b = hVar;
    }

    @Override // e.a.h
    protected void b(e.a.m<? super T> mVar) {
        this.f5163b.a(new C0199a(mVar));
    }
}
