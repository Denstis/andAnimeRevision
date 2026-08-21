package c.a.a.r.k;

import c.a.a.r.k.b;

/* JADX INFO: loaded from: classes.dex */
public class a<R> implements b<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final a<?> f3307a = new a<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c<?> f3308b = new C0131a();

    /* JADX INFO: renamed from: c.a.a.r.k.a$a, reason: collision with other inner class name */
    public static class C0131a<R> implements c<R> {
        @Override // c.a.a.r.k.c
        public b<R> a(com.bumptech.glide.load.a aVar, boolean z) {
            return a.f3307a;
        }
    }

    public static <R> c<R> a() {
        return (c<R>) f3308b;
    }

    @Override // c.a.a.r.k.b
    public boolean a(Object obj, b.a aVar) {
        return false;
    }
}
