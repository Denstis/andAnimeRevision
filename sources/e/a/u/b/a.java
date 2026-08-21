package e.a.u.b;

import android.os.Handler;
import android.os.Looper;
import e.a.n;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final n f4117a = e.a.u.a.a.b(new CallableC0176a());

    /* JADX INFO: renamed from: e.a.u.b.a$a, reason: collision with other inner class name */
    static class CallableC0176a implements Callable<n> {
        CallableC0176a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public n call() {
            return b.f4118a;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final n f4118a = new e.a.u.b.b(new Handler(Looper.getMainLooper()));
    }

    public static n a() {
        return e.a.u.a.a.a(f4117a);
    }
}
