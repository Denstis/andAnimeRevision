package e.a.y.e.c;

import e.a.o;
import e.a.p;
import e.a.q;
import e.a.r;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class a<T> extends o<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final r<T> f4237a;

    /* JADX INFO: renamed from: e.a.y.e.c.a$a, reason: collision with other inner class name */
    static final class C0180a<T> extends AtomicReference<e.a.v.b> implements p<T>, e.a.v.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final q<? super T> f4238b;

        C0180a(q<? super T> qVar) {
            this.f4238b = qVar;
        }

        public void a(Throwable th) {
            if (b(th)) {
                return;
            }
            e.a.a0.a.b(th);
        }

        @Override // e.a.v.b
        public boolean a() {
            return e.a.y.a.b.a(get());
        }

        @Override // e.a.v.b
        public void b() {
            e.a.y.a.b.a((AtomicReference<e.a.v.b>) this);
        }

        public boolean b(Throwable th) {
            e.a.v.b andSet;
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            e.a.v.b bVar = get();
            e.a.y.a.b bVar2 = e.a.y.a.b.DISPOSED;
            if (bVar == bVar2 || (andSet = getAndSet(bVar2)) == e.a.y.a.b.DISPOSED) {
                return false;
            }
            try {
                this.f4238b.a(th);
            } finally {
                if (andSet != null) {
                    andSet.b();
                }
            }
        }

        @Override // e.a.p
        public void onSuccess(T t) {
            e.a.v.b andSet;
            e.a.v.b bVar = get();
            e.a.y.a.b bVar2 = e.a.y.a.b.DISPOSED;
            if (bVar == bVar2 || (andSet = getAndSet(bVar2)) == e.a.y.a.b.DISPOSED) {
                return;
            }
            try {
                if (t == null) {
                    this.f4238b.a(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.f4238b.onSuccess(t);
                }
                if (andSet != null) {
                    andSet.b();
                }
            } catch (Throwable th) {
                if (andSet != null) {
                    andSet.b();
                }
                throw th;
            }
        }
    }

    public a(r<T> rVar) {
        this.f4237a = rVar;
    }

    @Override // e.a.o
    protected void b(q<? super T> qVar) {
        C0180a c0180a = new C0180a(qVar);
        qVar.a(c0180a);
        try {
            this.f4237a.a(c0180a);
        } catch (Throwable th) {
            e.a.w.b.b(th);
            c0180a.a(th);
        }
    }
}
