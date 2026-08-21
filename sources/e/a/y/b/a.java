package e.a.y.b;

import java.util.Comparator;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final e.a.x.e<Object, Object> f4139a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Runnable f4140b = new d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e.a.x.a f4141c = new C0179a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final e.a.x.d<Object> f4142d = new b();

    /* JADX INFO: renamed from: e.a.y.b.a$a, reason: collision with other inner class name */
    static final class C0179a implements e.a.x.a {
        C0179a() {
        }

        @Override // e.a.x.a
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    static final class b implements e.a.x.d<Object> {
        b() {
        }

        @Override // e.a.x.d
        public void a(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    static final class c implements e.a.x.f {
        c() {
        }
    }

    static final class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    static final class e implements e.a.x.d<Throwable> {
        e() {
        }

        @Override // e.a.x.d
        public void a(Throwable th) {
            e.a.a0.a.b(th);
        }
    }

    static final class f implements e.a.x.g<Object> {
        f() {
        }
    }

    static final class g implements e.a.x.e<Object, Object> {
        g() {
        }

        @Override // e.a.x.e
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    static final class h implements e.a.x.d<j.a.b> {
        h() {
        }

        @Override // e.a.x.d
        public void a(j.a.b bVar) {
            bVar.a(Long.MAX_VALUE);
        }
    }

    static final class i implements Comparator<Object> {
        i() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    static final class j implements Callable<Object> {
        j() {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return null;
        }
    }

    static final class k implements e.a.x.d<Throwable> {
        k() {
        }

        @Override // e.a.x.d
        public void a(Throwable th) {
            e.a.a0.a.b(new e.a.w.c(th));
        }
    }

    static final class l implements e.a.x.g<Object> {
        l() {
        }
    }

    static {
        new e();
        new k();
        new c();
        new l();
        new f();
        new j();
        new i();
        new h();
    }

    public static <T> e.a.x.d<T> a() {
        return (e.a.x.d<T>) f4142d;
    }

    public static <T> e.a.x.e<T, T> b() {
        return (e.a.x.e<T, T>) f4139a;
    }
}
