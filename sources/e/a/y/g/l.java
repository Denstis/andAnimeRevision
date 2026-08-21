package e.a.y.g;

import e.a.n;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class l extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final g f4332b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final ScheduledExecutorService f4333c = Executors.newScheduledThreadPool(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AtomicReference<ScheduledExecutorService> f4334a;

    static final class a extends n.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ScheduledExecutorService f4335b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final e.a.v.a f4336c = new e.a.v.a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        volatile boolean f4337d;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.f4335b = scheduledExecutorService;
        }

        @Override // e.a.n.b
        public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
            if (this.f4337d) {
                return e.a.y.a.c.INSTANCE;
            }
            i iVar = new i(e.a.a0.a.a(runnable), this.f4336c);
            this.f4336c.b(iVar);
            try {
                iVar.a(j2 <= 0 ? this.f4335b.submit((Callable) iVar) : this.f4335b.schedule((Callable) iVar, j2, timeUnit));
                return iVar;
            } catch (RejectedExecutionException e2) {
                b();
                e.a.a0.a.b(e2);
                return e.a.y.a.c.INSTANCE;
            }
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4337d;
        }

        @Override // e.a.v.b
        public void b() {
            if (this.f4337d) {
                return;
            }
            this.f4337d = true;
            this.f4336c.b();
        }
    }

    static {
        f4333c.shutdown();
        f4332b = new g("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    }

    public l() {
        this(f4332b);
    }

    public l(ThreadFactory threadFactory) {
        this.f4334a = new AtomicReference<>();
        this.f4334a.lazySet(a(threadFactory));
    }

    static ScheduledExecutorService a(ThreadFactory threadFactory) {
        return k.a(threadFactory);
    }

    @Override // e.a.n
    public n.b a() {
        return new a(this.f4334a.get());
    }

    @Override // e.a.n
    public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
        h hVar = new h(e.a.a0.a.a(runnable));
        try {
            hVar.a(j2 <= 0 ? this.f4334a.get().submit(hVar) : this.f4334a.get().schedule(hVar, j2, timeUnit));
            return hVar;
        } catch (RejectedExecutionException e2) {
            e.a.a0.a.b(e2);
            return e.a.y.a.c.INSTANCE;
        }
    }
}
