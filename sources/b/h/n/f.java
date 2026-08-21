package b.h.n;

/* JADX INFO: loaded from: classes.dex */
public class f<T> extends e<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f2561c;

    public f(int i2) {
        super(i2);
        this.f2561c = new Object();
    }

    @Override // b.h.n.e, b.h.n.d
    public T a() {
        T t;
        synchronized (this.f2561c) {
            t = (T) super.a();
        }
        return t;
    }

    @Override // b.h.n.e, b.h.n.d
    public boolean a(T t) {
        boolean zA;
        synchronized (this.f2561c) {
            zA = super.a(t);
        }
        return zA;
    }
}
