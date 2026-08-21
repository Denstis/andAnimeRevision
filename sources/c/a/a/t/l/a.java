package c.a.a.t.l;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final g<Object> f3336a = new C0133a();

    /* JADX INFO: renamed from: c.a.a.t.l.a$a, reason: collision with other inner class name */
    class C0133a implements g<Object> {
        C0133a() {
        }

        @Override // c.a.a.t.l.a.g
        public void a(Object obj) {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class b<T> implements d<List<T>> {
        b() {
        }

        @Override // c.a.a.t.l.a.d
        public List<T> a() {
            return new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class c<T> implements g<List<T>> {
        c() {
        }

        @Override // c.a.a.t.l.a.g
        public void a(List<T> list) {
            list.clear();
        }
    }

    public interface d<T> {
        T a();
    }

    private static final class e<T> implements b.h.n.d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d<T> f3337a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final g<T> f3338b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final b.h.n.d<T> f3339c;

        e(b.h.n.d<T> dVar, d<T> dVar2, g<T> gVar) {
            this.f3339c = dVar;
            this.f3337a = dVar2;
            this.f3338b = gVar;
        }

        @Override // b.h.n.d
        public T a() {
            T tA = this.f3339c.a();
            if (tA == null) {
                tA = this.f3337a.a();
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + tA.getClass());
                }
            }
            if (tA instanceof f) {
                ((f) tA).d().a(false);
            }
            return tA;
        }

        @Override // b.h.n.d
        public boolean a(T t) {
            if (t instanceof f) {
                ((f) t).d().a(true);
            }
            this.f3338b.a(t);
            return this.f3339c.a(t);
        }
    }

    public interface f {
        c.a.a.t.l.c d();
    }

    public interface g<T> {
        void a(T t);
    }

    public static <T> b.h.n.d<List<T>> a(int i2) {
        return a(new b.h.n.f(i2), new b(), new c());
    }

    public static <T extends f> b.h.n.d<T> a(int i2, d<T> dVar) {
        return a(new b.h.n.f(i2), dVar);
    }

    private static <T extends f> b.h.n.d<T> a(b.h.n.d<T> dVar, d<T> dVar2) {
        return a(dVar, dVar2, a());
    }

    private static <T> b.h.n.d<T> a(b.h.n.d<T> dVar, d<T> dVar2, g<T> gVar) {
        return new e(dVar, dVar2, gVar);
    }

    private static <T> g<T> a() {
        return (g<T>) f3336a;
    }

    public static <T> b.h.n.d<List<T>> b() {
        return a(20);
    }
}
