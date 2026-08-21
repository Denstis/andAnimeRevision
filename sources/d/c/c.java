package d.c;

/* JADX INFO: loaded from: classes.dex */
public final class c<T> implements b<T>, d.a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f4086a;

    static {
        new c(null);
    }

    private c(T t) {
        this.f4086a = t;
    }

    public static <T> b<T> a(T t) {
        d.a(t, "instance cannot be null");
        return new c(t);
    }

    @Override // f.a.a
    public T get() {
        return this.f4086a;
    }
}
