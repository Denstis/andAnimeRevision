package c.a.a.t;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Executor f3322a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Executor f3323b = new b();

    class a implements Executor {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Handler f3324b = new Handler(Looper.getMainLooper());

        a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f3324b.post(runnable);
        }
    }

    class b implements Executor {
        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    public static Executor a() {
        return f3323b;
    }

    public static Executor b() {
        return f3322a;
    }
}
