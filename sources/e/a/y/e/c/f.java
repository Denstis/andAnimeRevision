package e.a.y.e.c;

import e.a.n;
import e.a.o;
import e.a.q;
import e.a.s;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class f<T> extends o<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final s<T> f4255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final n f4256b;

    static final class a<T> extends AtomicReference<e.a.v.b> implements q<T>, e.a.v.b, Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final q<? super T> f4257b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final n f4258c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        T f4259d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Throwable f4260e;

        a(q<? super T> qVar, n nVar) {
            this.f4257b = qVar;
            this.f4258c = nVar;
        }

        @Override // e.a.q
        public void a(e.a.v.b bVar) {
            if (e.a.y.a.b.c(this, bVar)) {
                this.f4257b.a(this);
            }
        }

        @Override // e.a.q
        public void a(Throwable th) {
            this.f4260e = th;
            e.a.y.a.b.a((AtomicReference<e.a.v.b>) this, this.f4258c.a(this));
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
            this.f4259d = t;
            e.a.y.a.b.a((AtomicReference<e.a.v.b>) this, this.f4258c.a(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f4260e;
            if (th != null) {
                this.f4257b.a(th);
            } else {
                this.f4257b.onSuccess(this.f4259d);
            }
        }
    }

    public f(s<T> sVar, n nVar) {
        this.f4255a = sVar;
        this.f4256b = nVar;
    }

    @Override // e.a.o
    protected void b(q<? super T> qVar) {
        this.f4255a.a(new a(qVar, this.f4256b));
    }
}
