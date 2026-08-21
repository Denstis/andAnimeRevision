package com.bumptech.glide.load.n.c0;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class a implements ExecutorService {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f3523c = TimeUnit.SECONDS.toMillis(10);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile int f3524d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f3525b;

    /* JADX INFO: renamed from: com.bumptech.glide.load.n.c0.a$a, reason: collision with other inner class name */
    private static final class ThreadFactoryC0138a implements ThreadFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f3526b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final b f3527c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final boolean f3528d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f3529e;

        /* JADX INFO: renamed from: com.bumptech.glide.load.n.c0.a$a$a, reason: collision with other inner class name */
        class C0139a extends Thread {
            C0139a(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                if (ThreadFactoryC0138a.this.f3528d) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    ThreadFactoryC0138a.this.f3527c.a(th);
                }
            }
        }

        ThreadFactoryC0138a(String str, b bVar, boolean z) {
            this.f3526b = str;
            this.f3527c = bVar;
            this.f3528d = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            C0139a c0139a;
            c0139a = new C0139a(runnable, "glide-" + this.f3526b + "-thread-" + this.f3529e);
            this.f3529e = this.f3529e + 1;
            return c0139a;
        }
    }

    public interface b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f3531a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f3532b;

        /* JADX INFO: renamed from: com.bumptech.glide.load.n.c0.a$b$a, reason: collision with other inner class name */
        class C0140a implements b {
            C0140a() {
            }

            @Override // com.bumptech.glide.load.n.c0.a.b
            public void a(Throwable th) {
            }
        }

        /* JADX INFO: renamed from: com.bumptech.glide.load.n.c0.a$b$b, reason: collision with other inner class name */
        class C0141b implements b {
            C0141b() {
            }

            @Override // com.bumptech.glide.load.n.c0.a.b
            public void a(Throwable th) {
                if (th == null || !Log.isLoggable("GlideExecutor", 6)) {
                    return;
                }
                Log.e("GlideExecutor", "Request threw uncaught throwable", th);
            }
        }

        class c implements b {
            c() {
            }

            @Override // com.bumptech.glide.load.n.c0.a.b
            public void a(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        }

        static {
            new C0140a();
            f3531a = new C0141b();
            new c();
            f3532b = f3531a;
        }

        void a(Throwable th);
    }

    a(ExecutorService executorService) {
        this.f3525b = executorService;
    }

    public static int a() {
        if (f3524d == 0) {
            f3524d = Math.min(4, com.bumptech.glide.load.n.c0.b.a());
        }
        return f3524d;
    }

    public static a a(int i2, b bVar) {
        return new a(new ThreadPoolExecutor(0, i2, f3523c, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC0138a("animation", bVar, true)));
    }

    public static a a(int i2, String str, b bVar) {
        return new a(new ThreadPoolExecutor(i2, i2, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC0138a(str, bVar, true)));
    }

    public static a b() {
        return a(a() >= 4 ? 2 : 1, b.f3532b);
    }

    public static a b(int i2, String str, b bVar) {
        return new a(new ThreadPoolExecutor(i2, i2, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC0138a(str, bVar, false)));
    }

    public static a c() {
        return a(1, "disk-cache", b.f3532b);
    }

    public static a d() {
        return b(a(), FirebaseAnalytics.Param.SOURCE, b.f3532b);
    }

    public static a e() {
        return new a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f3523c, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadFactoryC0138a("source-unlimited", b.f3532b, false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j2, TimeUnit timeUnit) {
        return this.f3525b.awaitTermination(j2, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f3525b.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
        return this.f3525b.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j2, TimeUnit timeUnit) {
        return this.f3525b.invokeAll(collection, j2, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) {
        return (T) this.f3525b.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j2, TimeUnit timeUnit) {
        return (T) this.f3525b.invokeAny(collection, j2, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f3525b.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f3525b.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f3525b.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return this.f3525b.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.f3525b.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.f3525b.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f3525b.submit(callable);
    }

    public String toString() {
        return this.f3525b.toString();
    }
}
