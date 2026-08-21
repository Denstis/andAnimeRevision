package e.a.y.g;

import e.a.n;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class b extends n implements j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final C0182b f4282c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final g f4283d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int f4284e = a(Runtime.getRuntime().availableProcessors(), Integer.getInteger("rx2.computation-threads", 0).intValue());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final c f4285f = new c(new g("RxComputationShutdown"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ThreadFactory f4286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final AtomicReference<C0182b> f4287b;

    static final class a extends n.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e.a.y.a.d f4288b = new e.a.y.a.d();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final e.a.v.a f4289c = new e.a.v.a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final e.a.y.a.d f4290d = new e.a.y.a.d();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final c f4291e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        volatile boolean f4292f;

        a(c cVar) {
            this.f4291e = cVar;
            this.f4290d.b(this.f4288b);
            this.f4290d.b(this.f4289c);
        }

        @Override // e.a.n.b
        public e.a.v.b a(Runnable runnable) {
            return this.f4292f ? e.a.y.a.c.INSTANCE : this.f4291e.a(runnable, 0L, TimeUnit.MILLISECONDS, this.f4288b);
        }

        @Override // e.a.n.b
        public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
            return this.f4292f ? e.a.y.a.c.INSTANCE : this.f4291e.a(runnable, j2, timeUnit, this.f4289c);
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4292f;
        }

        @Override // e.a.v.b
        public void b() {
            if (this.f4292f) {
                return;
            }
            this.f4292f = true;
            this.f4290d.b();
        }
    }

    /* JADX INFO: renamed from: e.a.y.g.b$b, reason: collision with other inner class name */
    static final class C0182b implements j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f4293a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final c[] f4294b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f4295c;

        C0182b(int i2, ThreadFactory threadFactory) {
            this.f4293a = i2;
            this.f4294b = new c[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f4294b[i3] = new c(threadFactory);
            }
        }

        public c a() {
            int i2 = this.f4293a;
            if (i2 == 0) {
                return b.f4285f;
            }
            c[] cVarArr = this.f4294b;
            long j2 = this.f4295c;
            this.f4295c = 1 + j2;
            return cVarArr[(int) (j2 % ((long) i2))];
        }

        public void b() {
            for (c cVar : this.f4294b) {
                cVar.b();
            }
        }
    }

    static final class c extends e {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        f4285f.b();
        f4283d = new g("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        f4282c = new C0182b(0, f4283d);
        f4282c.b();
    }

    public b() {
        this(f4283d);
    }

    public b(ThreadFactory threadFactory) {
        this.f4286a = threadFactory;
        this.f4287b = new AtomicReference<>(f4282c);
        b();
    }

    static int a(int i2, int i3) {
        return (i3 <= 0 || i3 > i2) ? i2 : i3;
    }

    @Override // e.a.n
    public n.b a() {
        return new a(this.f4287b.get().a());
    }

    @Override // e.a.n
    public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
        return this.f4287b.get().a().b(runnable, j2, timeUnit);
    }

    public void b() {
        C0182b c0182b = new C0182b(f4284e, this.f4286a);
        if (this.f4287b.compareAndSet(f4282c, c0182b)) {
            return;
        }
        c0182b.b();
    }
}
