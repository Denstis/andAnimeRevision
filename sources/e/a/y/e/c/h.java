package e.a.y.e.c;

import e.a.m;
import e.a.q;
import e.a.s;

/* JADX INFO: loaded from: classes.dex */
public final class h<T> extends e.a.h<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final s<? extends T> f4266b;

    static final class a<T> extends e.a.y.d.d<T> implements q<T> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        e.a.v.b f4267d;

        a(m<? super T> mVar) {
            super(mVar);
        }

        @Override // e.a.q
        public void a(e.a.v.b bVar) {
            if (e.a.y.a.b.a(this.f4267d, bVar)) {
                this.f4267d = bVar;
                this.f4151b.a((e.a.v.b) this);
            }
        }

        @Override // e.a.q
        public void a(Throwable th) {
            b(th);
        }

        @Override // e.a.y.d.d, e.a.v.b
        public void b() {
            super.b();
            this.f4267d.b();
        }

        @Override // e.a.q
        public void onSuccess(T t) {
            c(t);
        }
    }

    public h(s<? extends T> sVar) {
        this.f4266b = sVar;
    }

    public static <T> q<T> c(m<? super T> mVar) {
        return new a(mVar);
    }

    @Override // e.a.h
    public void b(m<? super T> mVar) {
        this.f4266b.a(c(mVar));
    }
}
