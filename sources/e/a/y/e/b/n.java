package e.a.y.e.b;

import e.a.q;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class n<T> extends e.a.o<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final e.a.k<? extends T> f4207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final T f4208b;

    static final class a<T> implements e.a.m<T>, e.a.v.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final q<? super T> f4209b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final T f4210c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        e.a.v.b f4211d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        T f4212e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f4213f;

        a(q<? super T> qVar, T t) {
            this.f4209b = qVar;
            this.f4210c = t;
        }

        @Override // e.a.m
        public void a(e.a.v.b bVar) {
            if (e.a.y.a.b.a(this.f4211d, bVar)) {
                this.f4211d = bVar;
                this.f4209b.a(this);
            }
        }

        @Override // e.a.m
        public void a(T t) {
            if (this.f4213f) {
                return;
            }
            if (this.f4212e == null) {
                this.f4212e = t;
                return;
            }
            this.f4213f = true;
            this.f4211d.b();
            this.f4209b.a(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // e.a.m
        public void a(Throwable th) {
            if (this.f4213f) {
                e.a.a0.a.b(th);
            } else {
                this.f4213f = true;
                this.f4209b.a(th);
            }
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4211d.a();
        }

        @Override // e.a.v.b
        public void b() {
            this.f4211d.b();
        }

        @Override // e.a.m
        public void onComplete() {
            if (this.f4213f) {
                return;
            }
            this.f4213f = true;
            T t = this.f4212e;
            this.f4212e = null;
            if (t == null) {
                t = this.f4210c;
            }
            if (t != null) {
                this.f4209b.onSuccess(t);
            } else {
                this.f4209b.a(new NoSuchElementException());
            }
        }
    }

    public n(e.a.k<? extends T> kVar, T t) {
        this.f4207a = kVar;
        this.f4208b = t;
    }

    @Override // e.a.o
    public void b(q<? super T> qVar) {
        this.f4207a.a(new a(qVar, this.f4208b));
    }
}
