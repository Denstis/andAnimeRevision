package e.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class e<T> implements j.a.a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f4110a = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    public static int d() {
        return f4110a;
    }

    public final e<T> a() {
        return a(d(), false, true);
    }

    public final e<T> a(int i2, boolean z, boolean z2) {
        e.a.y.b.b.a(i2, "bufferSize");
        return e.a.a0.a.a(new e.a.y.e.a.c(this, i2, z2, z, e.a.y.b.a.f4141c));
    }

    public final e<T> b() {
        return e.a.a0.a.a(new e.a.y.e.a.d(this));
    }

    public final e<T> c() {
        return e.a.a0.a.a(new e.a.y.e.a.f(this));
    }
}
