package k;

import h.c0;
import h.d0;

/* JADX INFO: loaded from: classes.dex */
public final class m<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c0 f5115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f5116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d0 f5117c;

    private m(c0 c0Var, T t, d0 d0Var) {
        this.f5115a = c0Var;
        this.f5116b = t;
        this.f5117c = d0Var;
    }

    public static <T> m<T> a(d0 d0Var, c0 c0Var) {
        p.a(d0Var, "body == null");
        p.a(c0Var, "rawResponse == null");
        if (c0Var.o()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new m<>(c0Var, null, d0Var);
    }

    public static <T> m<T> a(T t, c0 c0Var) {
        p.a(c0Var, "rawResponse == null");
        if (c0Var.o()) {
            return new m<>(c0Var, t, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public T a() {
        return this.f5116b;
    }

    public int b() {
        return this.f5115a.l();
    }

    public d0 c() {
        return this.f5117c;
    }

    public boolean d() {
        return this.f5115a.o();
    }

    public String e() {
        return this.f5115a.p();
    }

    public String toString() {
        return this.f5115a.toString();
    }
}
