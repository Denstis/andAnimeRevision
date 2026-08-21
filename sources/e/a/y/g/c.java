package e.a.y.g;

import e.a.n;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class c extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final g f4296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final g f4297d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final TimeUnit f4298e = TimeUnit.SECONDS;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final C0183c f4299f = new C0183c(new g("RxCachedThreadSchedulerShutdown"));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final a f4300g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ThreadFactory f4301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final AtomicReference<a> f4302b;

    static final class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f4303b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ConcurrentLinkedQueue<C0183c> f4304c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final e.a.v.a f4305d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final ScheduledExecutorService f4306e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Future<?> f4307f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ThreadFactory f4308g;

        a(long j2, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
            this.f4303b = timeUnit != null ? timeUnit.toNanos(j2) : 0L;
            this.f4304c = new ConcurrentLinkedQueue<>();
            this.f4305d = new e.a.v.a();
            this.f4308g = threadFactory;
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = null;
            if (timeUnit != null) {
                scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, c.f4297d);
                long j3 = this.f4303b;
                scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(this, j3, j3, TimeUnit.NANOSECONDS);
            } else {
                scheduledFutureScheduleWithFixedDelay = null;
            }
            this.f4306e = scheduledExecutorServiceNewScheduledThreadPool;
            this.f4307f = scheduledFutureScheduleWithFixedDelay;
        }

        void a() {
            if (this.f4304c.isEmpty()) {
                return;
            }
            long jC = c();
            for (C0183c c0183c : this.f4304c) {
                if (c0183c.d() > jC) {
                    return;
                }
                if (this.f4304c.remove(c0183c)) {
                    this.f4305d.a(c0183c);
                }
            }
        }

        void a(C0183c c0183c) {
            c0183c.a(c() + this.f4303b);
            this.f4304c.offer(c0183c);
        }

        C0183c b() {
            if (this.f4305d.a()) {
                return c.f4299f;
            }
            while (!this.f4304c.isEmpty()) {
                C0183c c0183cPoll = this.f4304c.poll();
                if (c0183cPoll != null) {
                    return c0183cPoll;
                }
            }
            C0183c c0183c = new C0183c(this.f4308g);
            this.f4305d.b(c0183c);
            return c0183c;
        }

        long c() {
            return System.nanoTime();
        }

        void d() {
            this.f4305d.b();
            Future<?> future = this.f4307f;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f4306e;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            a();
        }
    }

    static final class b extends n.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a f4310c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final C0183c f4311d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final AtomicBoolean f4312e = new AtomicBoolean();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e.a.v.a f4309b = new e.a.v.a();

        b(a aVar) {
            this.f4310c = aVar;
            this.f4311d = aVar.b();
        }

        @Override // e.a.n.b
        public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
            return this.f4309b.a() ? e.a.y.a.c.INSTANCE : this.f4311d.a(runnable, j2, timeUnit, this.f4309b);
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4312e.get();
        }

        @Override // e.a.v.b
        public void b() {
            if (this.f4312e.compareAndSet(false, true)) {
                this.f4309b.b();
                this.f4310c.a(this.f4311d);
            }
        }
    }

    /* JADX INFO: renamed from: e.a.y.g.c$c, reason: collision with other inner class name */
    static final class C0183c extends e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f4313d;

        C0183c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f4313d = 0L;
        }

        public void a(long j2) {
            this.f4313d = j2;
        }

        public long d() {
            return this.f4313d;
        }
    }

    static {
        f4299f.b();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        f4296c = new g("RxCachedThreadScheduler", iMax);
        f4297d = new g("RxCachedWorkerPoolEvictor", iMax);
        f4300g = new a(0L, null, f4296c);
        f4300g.d();
    }

    public c() {
        this(f4296c);
    }

    public c(ThreadFactory threadFactory) {
        this.f4301a = threadFactory;
        this.f4302b = new AtomicReference<>(f4300g);
        b();
    }

    @Override // e.a.n
    public n.b a() {
        return new b(this.f4302b.get());
    }

    public void b() {
        a aVar = new a(60L, f4298e, this.f4301a);
        if (this.f4302b.compareAndSet(f4300g, aVar)) {
            return;
        }
        aVar.d();
    }
}
