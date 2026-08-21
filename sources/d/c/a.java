package d.c;

/* JADX INFO: loaded from: classes.dex */
public final class a<T> implements f.a.a<T>, d.a<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f4083c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile f.a.a<T> f4084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f4085b = f4083c;

    private a(f.a.a<T> aVar) {
        this.f4084a = aVar;
    }

    public static <P extends f.a.a<T>, T> f.a.a<T> a(P p) {
        d.a(p);
        return p instanceof a ? p : new a(p);
    }

    public static Object a(Object obj, Object obj2) {
        if (!(obj != f4083c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // f.a.a
    public T get() {
        T t = (T) this.f4085b;
        if (t == f4083c) {
            synchronized (this) {
                t = (T) this.f4085b;
                if (t == f4083c) {
                    t = this.f4084a.get();
                    a(this.f4085b, t);
                    this.f4085b = t;
                    this.f4084a = null;
                }
            }
        }
        return t;
    }
}
