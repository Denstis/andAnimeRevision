package e.a.y.e.b;

import a.a.a.b.b;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    public static final class a<T> extends AtomicInteger implements e.a.y.c.d<T>, Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final e.a.m<? super T> f4203b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final T f4204c;

        public a(e.a.m<? super T> mVar, T t) {
            this.f4203b = mVar;
            this.f4204c = t;
        }

        @Override // e.a.y.c.e
        public int a(int i2) {
            if ((i2 & 1) == 0) {
                return 0;
            }
            lazySet(1);
            return 1;
        }

        @Override // e.a.v.b
        public boolean a() {
            return get() == 3;
        }

        @Override // e.a.v.b
        public void b() {
            set(3);
        }

        @Override // e.a.y.c.h
        public boolean b(T t) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // e.a.y.c.h
        public T c() {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.f4204c;
        }

        @Override // e.a.y.c.h
        public void clear() {
            lazySet(3);
        }

        @Override // e.a.y.c.h
        public boolean isEmpty() {
            return get() != 1;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.f4203b.a(this.f4204c);
                if (get() == 2) {
                    lazySet(3);
                    this.f4203b.onComplete();
                }
            }
        }
    }

    static final class b<T, R> extends e.a.h<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final T f4205b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final e.a.x.e<? super T, ? extends e.a.k<? extends R>> f4206c;

        b(T t, e.a.x.e<? super T, ? extends e.a.k<? extends R>> eVar) {
            this.f4205b = t;
            this.f4206c = eVar;
        }

        @Override // e.a.h
        public void b(e.a.m<? super R> mVar) {
            try {
                e.a.k<? extends R> kVarApply = this.f4206c.apply(this.f4205b);
                e.a.y.b.b.a(kVarApply, "The mapper returned a null ObservableSource");
                e.a.k<? extends R> kVar = kVarApply;
                if (!(kVar instanceof Callable)) {
                    kVar.a(mVar);
                    return;
                }
                try {
                    Object objCall = ((Callable) kVar).call();
                    if (objCall == null) {
                        e.a.y.a.c.a(mVar);
                        return;
                    }
                    a aVar = new a(mVar, objCall);
                    mVar.a((e.a.v.b) aVar);
                    aVar.run();
                } catch (Throwable th) {
                    e.a.w.b.b(th);
                    e.a.y.a.c.a(th, mVar);
                }
            } catch (Throwable th2) {
                e.a.y.a.c.a(th2, mVar);
            }
        }
    }

    public static <T, U> e.a.h<U> a(T t, e.a.x.e<? super T, ? extends e.a.k<? extends U>> eVar) {
        return e.a.a0.a.a(new b(t, eVar));
    }

    public static <T, R> boolean a(e.a.k<T> kVar, e.a.m<? super R> mVar, e.a.x.e<? super T, ? extends e.a.k<? extends R>> eVar) {
        if (!(kVar instanceof Callable)) {
            return false;
        }
        try {
            b.BinderC0004b binderC0004b = (Object) ((Callable) kVar).call();
            if (binderC0004b == null) {
                e.a.y.a.c.a(mVar);
                return true;
            }
            e.a.k<? extends R> kVarApply = eVar.apply(binderC0004b);
            e.a.y.b.b.a(kVarApply, "The mapper returned a null ObservableSource");
            e.a.k<? extends R> kVar2 = kVarApply;
            if (kVar2 instanceof Callable) {
                Object objCall = ((Callable) kVar2).call();
                if (objCall == null) {
                    e.a.y.a.c.a(mVar);
                    return true;
                }
                a aVar = new a(mVar, objCall);
                mVar.a((e.a.v.b) aVar);
                aVar.run();
            } else {
                kVar2.a(mVar);
            }
            return true;
        } catch (Throwable th) {
            e.a.w.b.b(th);
            e.a.y.a.c.a(th, mVar);
            return true;
        }
    }
}
