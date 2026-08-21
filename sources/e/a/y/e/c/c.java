package e.a.y.e.c;

import e.a.o;
import e.a.q;
import e.a.s;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class c<T, R> extends o<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final s<? extends T> f4244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e.a.x.e<? super T, ? extends s<? extends R>> f4245b;

    static final class a<T, R> extends AtomicReference<e.a.v.b> implements q<T>, e.a.v.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final q<? super R> f4246b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final e.a.x.e<? super T, ? extends s<? extends R>> f4247c;

        /* JADX INFO: renamed from: e.a.y.e.c.c$a$a, reason: collision with other inner class name */
        static final class C0181a<R> implements q<R> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final AtomicReference<e.a.v.b> f4248b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final q<? super R> f4249c;

            C0181a(AtomicReference<e.a.v.b> atomicReference, q<? super R> qVar) {
                this.f4248b = atomicReference;
                this.f4249c = qVar;
            }

            @Override // e.a.q
            public void a(e.a.v.b bVar) {
                e.a.y.a.b.a(this.f4248b, bVar);
            }

            @Override // e.a.q
            public void a(Throwable th) {
                this.f4249c.a(th);
            }

            @Override // e.a.q
            public void onSuccess(R r) {
                this.f4249c.onSuccess(r);
            }
        }

        a(q<? super R> qVar, e.a.x.e<? super T, ? extends s<? extends R>> eVar) {
            this.f4246b = qVar;
            this.f4247c = eVar;
        }

        @Override // e.a.q
        public void a(e.a.v.b bVar) {
            if (e.a.y.a.b.c(this, bVar)) {
                this.f4246b.a(this);
            }
        }

        @Override // e.a.q
        public void a(Throwable th) {
            this.f4246b.a(th);
        }

        @Override // e.a.v.b
        public boolean a() {
            return e.a.y.a.b.a(get());
        }

        @Override // e.a.v.b
        public void b() {
            e.a.y.a.b.a((AtomicReference<e.a.v.b>) this);
        }

        @Override // e.a.q
        public void onSuccess(T t) {
            try {
                s<? extends R> sVarApply = this.f4247c.apply(t);
                e.a.y.b.b.a(sVarApply, "The single returned by the mapper is null");
                s<? extends R> sVar = sVarApply;
                if (a()) {
                    return;
                }
                sVar.a(new C0181a(this, this.f4246b));
            } catch (Throwable th) {
                e.a.w.b.b(th);
                this.f4246b.a(th);
            }
        }
    }

    public c(s<? extends T> sVar, e.a.x.e<? super T, ? extends s<? extends R>> eVar) {
        this.f4245b = eVar;
        this.f4244a = sVar;
    }

    @Override // e.a.o
    protected void b(q<? super R> qVar) {
        this.f4244a.a(new a(qVar, this.f4245b));
    }
}
