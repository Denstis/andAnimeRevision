package k.q.a;

import k.m;

/* JADX INFO: loaded from: classes.dex */
final class f<T> extends e.a.h<e<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e.a.h<m<T>> f5174b;

    private static class a<R> implements e.a.m<m<R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e.a.m<? super e<R>> f5175b;

        a(e.a.m<? super e<R>> mVar) {
            this.f5175b = mVar;
        }

        @Override // e.a.m
        public void a(e.a.v.b bVar) {
            this.f5175b.a(bVar);
        }

        @Override // e.a.m
        public void a(Throwable th) {
            try {
                this.f5175b.a(e.a(th));
                this.f5175b.onComplete();
            } catch (Throwable th2) {
                try {
                    this.f5175b.a(th2);
                } catch (Throwable th3) {
                    e.a.w.b.b(th3);
                    e.a.a0.a.b(new e.a.w.a(th2, th3));
                }
            }
        }

        @Override // e.a.m
        public void a(m<R> mVar) {
            this.f5175b.a(e.a(mVar));
        }

        @Override // e.a.m
        public void onComplete() {
            this.f5175b.onComplete();
        }
    }

    f(e.a.h<m<T>> hVar) {
        this.f5174b = hVar;
    }

    @Override // e.a.h
    protected void b(e.a.m<? super e<T>> mVar) {
        this.f5174b.a(new a(mVar));
    }
}
