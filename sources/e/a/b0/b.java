package e.a.b0;

import e.a.n;
import e.a.y.g.l;
import e.a.y.g.m;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final n f4104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final n f4105b;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final n f4106a = new e.a.y.g.b();
    }

    /* JADX INFO: renamed from: e.a.b0.b$b, reason: collision with other inner class name */
    static final class CallableC0175b implements Callable<n> {
        CallableC0175b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public n call() {
            return a.f4106a;
        }
    }

    static final class c implements Callable<n> {
        c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public n call() {
            return d.f4107a;
        }
    }

    static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final n f4107a = new e.a.y.g.c();
    }

    static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final n f4108a = new e.a.y.g.d();
    }

    static final class f implements Callable<n> {
        f() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public n call() {
            return e.f4108a;
        }
    }

    static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final n f4109a = new l();
    }

    static final class h implements Callable<n> {
        h() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public n call() {
            return g.f4109a;
        }
    }

    static {
        e.a.a0.a.e(new h());
        e.a.a0.a.b(new CallableC0175b());
        f4104a = e.a.a0.a.c(new c());
        m.b();
        f4105b = e.a.a0.a.d(new f());
    }

    public static n a() {
        return e.a.a0.a.a(f4104a);
    }

    public static n b() {
        return e.a.a0.a.b(f4105b);
    }
}
