package b.b.a.a;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class a extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a f2226c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f2228b = new b.b.a.a.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f2227a = this.f2228b;

    /* JADX INFO: renamed from: b.b.a.a.a$a, reason: collision with other inner class name */
    static class ExecutorC0095a implements Executor {
        ExecutorC0095a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.b().b(runnable);
        }
    }

    static class b implements Executor {
        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.b().a(runnable);
        }
    }

    static {
        new ExecutorC0095a();
        new b();
    }

    private a() {
    }

    public static a b() {
        if (f2226c != null) {
            return f2226c;
        }
        synchronized (a.class) {
            if (f2226c == null) {
                f2226c = new a();
            }
        }
        return f2226c;
    }

    @Override // b.b.a.a.c
    public void a(Runnable runnable) {
        this.f2227a.a(runnable);
    }

    @Override // b.b.a.a.c
    public boolean a() {
        return this.f2227a.a();
    }

    @Override // b.b.a.a.c
    public void b(Runnable runnable) {
        this.f2227a.b(runnable);
    }
}
