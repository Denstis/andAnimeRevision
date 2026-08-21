package e.a.y.e.c;

import e.a.o;
import e.a.q;
import e.a.s;

/* JADX INFO: loaded from: classes.dex */
public final class b<T> extends o<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final s<T> f4239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e.a.x.d<? super e.a.v.b> f4240b;

    static final class a<T> implements q<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final q<? super T> f4241b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final e.a.x.d<? super e.a.v.b> f4242c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f4243d;

        a(q<? super T> qVar, e.a.x.d<? super e.a.v.b> dVar) {
            this.f4241b = qVar;
            this.f4242c = dVar;
        }

        @Override // e.a.q
        public void a(e.a.v.b bVar) {
            try {
                this.f4242c.a(bVar);
                this.f4241b.a(bVar);
            } catch (Throwable th) {
                e.a.w.b.b(th);
                this.f4243d = true;
                bVar.b();
                e.a.y.a.c.a(th, this.f4241b);
            }
        }

        @Override // e.a.q
        public void a(Throwable th) {
            if (this.f4243d) {
                e.a.a0.a.b(th);
            } else {
                this.f4241b.a(th);
            }
        }

        @Override // e.a.q
        public void onSuccess(T t) {
            if (this.f4243d) {
                return;
            }
            this.f4241b.onSuccess(t);
        }
    }

    public b(s<T> sVar, e.a.x.d<? super e.a.v.b> dVar) {
        this.f4239a = sVar;
        this.f4240b = dVar;
    }

    @Override // e.a.o
    protected void b(q<? super T> qVar) {
        this.f4239a.a(new a(qVar, this.f4240b));
    }
}
