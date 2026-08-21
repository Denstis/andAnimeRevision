package e.a.y.e.c;

import e.a.o;
import e.a.q;
import e.a.s;

/* JADX INFO: loaded from: classes.dex */
public final class e<T, R> extends o<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final s<? extends T> f4251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e.a.x.e<? super T, ? extends R> f4252b;

    static final class a<T, R> implements q<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final q<? super R> f4253b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final e.a.x.e<? super T, ? extends R> f4254c;

        a(q<? super R> qVar, e.a.x.e<? super T, ? extends R> eVar) {
            this.f4253b = qVar;
            this.f4254c = eVar;
        }

        @Override // e.a.q
        public void a(e.a.v.b bVar) {
            this.f4253b.a(bVar);
        }

        @Override // e.a.q
        public void a(Throwable th) {
            this.f4253b.a(th);
        }

        @Override // e.a.q
        public void onSuccess(T t) {
            try {
                R rApply = this.f4254c.apply(t);
                e.a.y.b.b.a(rApply, "The mapper function returned a null value.");
                this.f4253b.onSuccess(rApply);
            } catch (Throwable th) {
                e.a.w.b.b(th);
                a(th);
            }
        }
    }

    public e(s<? extends T> sVar, e.a.x.e<? super T, ? extends R> eVar) {
        this.f4251a = sVar;
        this.f4252b = eVar;
    }

    @Override // e.a.o
    protected void b(q<? super R> qVar) {
        this.f4251a.a(new a(qVar, this.f4252b));
    }
}
