package e.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class o<T> implements s<T> {
    public static <T> o<T> a(r<T> rVar) {
        e.a.y.b.b.a(rVar, "source is null");
        return e.a.a0.a.a(new e.a.y.e.c.a(rVar));
    }

    public static <T> o<T> a(s<T> sVar) {
        e.a.y.b.b.a(sVar, "source is null");
        return sVar instanceof o ? e.a.a0.a.a((o) sVar) : e.a.a0.a.a(new e.a.y.e.c.d(sVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final h<T> a() {
        return this instanceof e.a.y.c.a ? ((e.a.y.c.a) this).a() : e.a.a0.a.a(new e.a.y.e.c.h(this));
    }

    public final o<T> a(n nVar) {
        e.a.y.b.b.a(nVar, "scheduler is null");
        return e.a.a0.a.a(new e.a.y.e.c.f(this, nVar));
    }

    public final <R> o<R> a(t<? super T, ? extends R> tVar) {
        e.a.y.b.b.a(tVar, "transformer is null");
        return a(tVar.a(this));
    }

    public final o<T> a(e.a.x.d<? super e.a.v.b> dVar) {
        e.a.y.b.b.a(dVar, "onSubscribe is null");
        return e.a.a0.a.a(new e.a.y.e.c.b(this, dVar));
    }

    public final <R> o<R> a(e.a.x.e<? super T, ? extends s<? extends R>> eVar) {
        e.a.y.b.b.a(eVar, "mapper is null");
        return e.a.a0.a.a(new e.a.y.e.c.c(this, eVar));
    }

    public final e.a.v.b a(e.a.x.d<? super T> dVar, e.a.x.d<? super Throwable> dVar2) {
        e.a.y.b.b.a(dVar, "onSuccess is null");
        e.a.y.b.b.a(dVar2, "onError is null");
        e.a.y.d.c cVar = new e.a.y.d.c(dVar, dVar2);
        a(cVar);
        return cVar;
    }

    @Override // e.a.s
    public final void a(q<? super T> qVar) {
        e.a.y.b.b.a(qVar, "subscriber is null");
        q<? super T> qVarA = e.a.a0.a.a(this, qVar);
        e.a.y.b.b.a(qVarA, "subscriber returned by the RxJavaPlugins hook is null");
        try {
            b(qVarA);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            e.a.w.b.b(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final o<T> b(n nVar) {
        e.a.y.b.b.a(nVar, "scheduler is null");
        return e.a.a0.a.a(new e.a.y.e.c.g(this, nVar));
    }

    public final <R> o<R> b(e.a.x.e<? super T, ? extends R> eVar) {
        e.a.y.b.b.a(eVar, "mapper is null");
        return e.a.a0.a.a(new e.a.y.e.c.e(this, eVar));
    }

    protected abstract void b(q<? super T> qVar);
}
