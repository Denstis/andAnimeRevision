package e.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class h<T> implements k<T> {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4111a = new int[e.a.a.values().length];

        static {
            try {
                f4111a[e.a.a.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4111a[e.a.a.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4111a[e.a.a.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4111a[e.a.a.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static <T> h<T> a(j<T> jVar) {
        e.a.y.b.b.a(jVar, "source is null");
        return e.a.a0.a.a(new e.a.y.e.b.b(jVar));
    }

    public static <T> h<T> a(k<T> kVar) {
        e.a.y.b.b.a(kVar, "source is null");
        return kVar instanceof h ? e.a.a0.a.a((h) kVar) : e.a.a0.a.a(new e.a.y.e.b.g(kVar));
    }

    private h<T> a(e.a.x.d<? super T> dVar, e.a.x.d<? super Throwable> dVar2, e.a.x.a aVar, e.a.x.a aVar2) {
        e.a.y.b.b.a(dVar, "onNext is null");
        e.a.y.b.b.a(dVar2, "onError is null");
        e.a.y.b.b.a(aVar, "onComplete is null");
        e.a.y.b.b.a(aVar2, "onAfterTerminate is null");
        return e.a.a0.a.a(new e.a.y.e.b.d(this, dVar, dVar2, aVar, aVar2));
    }

    public static int e() {
        return e.d();
    }

    public static <T> h<T> f() {
        return e.a.a0.a.a(e.a.y.e.b.f.f4183b);
    }

    public final e<T> a(e.a.a aVar) {
        e.a.y.e.a.b bVar = new e.a.y.e.a.b(this);
        int i2 = a.f4111a[aVar.ordinal()];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? bVar.a() : e.a.a0.a.a(new e.a.y.e.a.e(bVar)) : bVar : bVar.c() : bVar.b();
    }

    public final h<T> a() {
        return a(e.a.y.b.a.b());
    }

    public final <R> h<R> a(l<? super T, ? extends R> lVar) {
        e.a.y.b.b.a(lVar, "composer is null");
        return a(lVar.a(this));
    }

    public final h<T> a(n nVar) {
        return a(nVar, false, e());
    }

    public final h<T> a(n nVar, boolean z, int i2) {
        e.a.y.b.b.a(nVar, "scheduler is null");
        e.a.y.b.b.a(i2, "bufferSize");
        return e.a.a0.a.a(new e.a.y.e.b.k(this, nVar, z, i2));
    }

    public final h<T> a(e.a.x.d<? super Throwable> dVar) {
        e.a.x.d<? super T> dVarA = e.a.y.b.a.a();
        e.a.x.a aVar = e.a.y.b.a.f4141c;
        return a(dVarA, dVar, aVar, aVar);
    }

    public final h<T> a(e.a.x.d<? super e.a.v.b> dVar, e.a.x.a aVar) {
        e.a.y.b.b.a(dVar, "onSubscribe is null");
        e.a.y.b.b.a(aVar, "onDispose is null");
        return e.a.a0.a.a(new e.a.y.e.b.e(this, dVar, aVar));
    }

    public final <K> h<T> a(e.a.x.e<? super T, K> eVar) {
        e.a.y.b.b.a(eVar, "keySelector is null");
        return e.a.a0.a.a(new e.a.y.e.b.c(this, eVar, e.a.y.b.b.a()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> h<R> a(e.a.x.e<? super T, ? extends k<? extends R>> eVar, int i2) {
        e.a.y.b.b.a(eVar, "mapper is null");
        e.a.y.b.b.a(i2, "bufferSize");
        if (!(this instanceof e.a.y.c.f)) {
            return e.a.a0.a.a(new e.a.y.e.b.p(this, eVar, i2, false));
        }
        Object objCall = ((e.a.y.c.f) this).call();
        return objCall == null ? f() : e.a.y.e.b.l.a(objCall, eVar);
    }

    public final e.a.v.b a(e.a.x.d<? super T> dVar, e.a.x.d<? super Throwable> dVar2) {
        return a(dVar, dVar2, e.a.y.b.a.f4141c, e.a.y.b.a.a());
    }

    public final e.a.v.b a(e.a.x.d<? super T> dVar, e.a.x.d<? super Throwable> dVar2, e.a.x.a aVar) {
        return a(dVar, dVar2, aVar, e.a.y.b.a.a());
    }

    public final e.a.v.b a(e.a.x.d<? super T> dVar, e.a.x.d<? super Throwable> dVar2, e.a.x.a aVar, e.a.x.d<? super e.a.v.b> dVar3) {
        e.a.y.b.b.a(dVar, "onNext is null");
        e.a.y.b.b.a(dVar2, "onError is null");
        e.a.y.b.b.a(aVar, "onComplete is null");
        e.a.y.b.b.a(dVar3, "onSubscribe is null");
        e.a.y.d.f fVar = new e.a.y.d.f(dVar, dVar2, aVar, dVar3);
        a(fVar);
        return fVar;
    }

    @Override // e.a.k
    public final void a(m<? super T> mVar) {
        e.a.y.b.b.a(mVar, "observer is null");
        try {
            m<? super T> mVarA = e.a.a0.a.a(this, mVar);
            e.a.y.b.b.a(mVarA, "Plugin returned null Observer");
            b(mVarA);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            e.a.w.b.b(th);
            e.a.a0.a.b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final b b() {
        return e.a.a0.a.a(new e.a.y.e.b.i(this));
    }

    public final h<T> b(n nVar) {
        e.a.y.b.b.a(nVar, "scheduler is null");
        return e.a.a0.a.a(new e.a.y.e.b.o(this, nVar));
    }

    public final h<T> b(e.a.x.d<? super e.a.v.b> dVar) {
        return a(dVar, e.a.y.b.a.f4141c);
    }

    public final <R> h<R> b(e.a.x.e<? super T, ? extends R> eVar) {
        e.a.y.b.b.a(eVar, "mapper is null");
        return e.a.a0.a.a(new e.a.y.e.b.j(this, eVar));
    }

    protected abstract void b(m<? super T> mVar);

    public final f<T> c() {
        return e.a.a0.a.a(new e.a.y.e.b.m(this));
    }

    public final <R> h<R> c(e.a.x.e<? super T, ? extends k<? extends R>> eVar) {
        return a(eVar, e());
    }

    public final o<T> d() {
        return e.a.a0.a.a(new e.a.y.e.b.n(this, null));
    }
}
