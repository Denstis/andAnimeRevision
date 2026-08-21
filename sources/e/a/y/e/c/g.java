package e.a.y.e.c;

import e.a.n;
import e.a.o;
import e.a.q;
import e.a.s;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class g<T> extends o<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final s<? extends T> f4261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final n f4262b;

    static final class a<T> extends AtomicReference<e.a.v.b> implements q<T>, e.a.v.b, Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final q<? super T> f4263b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final e.a.y.a.e f4264c = new e.a.y.a.e();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final s<? extends T> f4265d;

        a(q<? super T> qVar, s<? extends T> sVar) {
            this.f4263b = qVar;
            this.f4265d = sVar;
        }

        @Override // e.a.q
        public void a(e.a.v.b bVar) {
            e.a.y.a.b.c(this, bVar);
        }

        @Override // e.a.q
        public void a(Throwable th) {
            this.f4263b.a(th);
        }

        @Override // e.a.v.b
        public boolean a() {
            return e.a.y.a.b.a(get());
        }

        @Override // e.a.v.b
        public void b() {
            e.a.y.a.b.a((AtomicReference<e.a.v.b>) this);
            this.f4264c.b();
        }

        @Override // e.a.q
        public void onSuccess(T t) {
            this.f4263b.onSuccess(t);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4265d.a(this);
        }
    }

    public g(s<? extends T> sVar, n nVar) {
        this.f4261a = sVar;
        this.f4262b = nVar;
    }

    @Override // e.a.o
    protected void b(q<? super T> qVar) {
        a aVar = new a(qVar, this.f4261a);
        qVar.a(aVar);
        aVar.f4264c.a(this.f4262b.a(aVar));
    }
}
