package k.q.a;

import k.m;

/* JADX INFO: loaded from: classes.dex */
final class c<T> extends e.a.h<m<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k.b<T> f5171b;

    private static final class a implements e.a.v.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k.b<?> f5172b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile boolean f5173c;

        a(k.b<?> bVar) {
            this.f5172b = bVar;
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f5173c;
        }

        @Override // e.a.v.b
        public void b() {
            this.f5173c = true;
            this.f5172b.cancel();
        }
    }

    c(k.b<T> bVar) {
        this.f5171b = bVar;
    }

    @Override // e.a.h
    protected void b(e.a.m<? super m<T>> mVar) {
        boolean z;
        k.b<T> bVarClone = this.f5171b.clone();
        a aVar = new a(bVarClone);
        mVar.a((e.a.v.b) aVar);
        try {
            m<T> mVarK = bVarClone.k();
            if (!aVar.a()) {
                mVar.a(mVarK);
            }
            if (aVar.a()) {
                return;
            }
            try {
                mVar.onComplete();
            } catch (Throwable th) {
                th = th;
                z = true;
                e.a.w.b.b(th);
                if (z) {
                    e.a.a0.a.b(th);
                    return;
                }
                if (aVar.a()) {
                    return;
                }
                try {
                    mVar.a(th);
                } catch (Throwable th2) {
                    e.a.w.b.b(th2);
                    e.a.a0.a.b(new e.a.w.a(th, th2));
                }
            }
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
    }
}
