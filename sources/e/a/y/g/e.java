package e.a.y.g;

import e.a.n;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class e extends n.b implements e.a.v.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f4316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile boolean f4317c;

    public e(ThreadFactory threadFactory) {
        this.f4316b = k.a(threadFactory);
    }

    @Override // e.a.n.b
    public e.a.v.b a(Runnable runnable) {
        return a(runnable, 0L, null);
    }

    @Override // e.a.n.b
    public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
        return this.f4317c ? e.a.y.a.c.INSTANCE : a(runnable, j2, timeUnit, null);
    }

    public i a(Runnable runnable, long j2, TimeUnit timeUnit, e.a.y.a.a aVar) {
        i iVar = new i(e.a.a0.a.a(runnable), aVar);
        if (aVar != null && !aVar.b(iVar)) {
            return iVar;
        }
        try {
            iVar.a(j2 <= 0 ? this.f4316b.submit((Callable) iVar) : this.f4316b.schedule((Callable) iVar, j2, timeUnit));
        } catch (RejectedExecutionException e2) {
            if (aVar != null) {
                aVar.a(iVar);
            }
            e.a.a0.a.b(e2);
        }
        return iVar;
    }

    @Override // e.a.v.b
    public boolean a() {
        return this.f4317c;
    }

    public e.a.v.b b(Runnable runnable, long j2, TimeUnit timeUnit) {
        h hVar = new h(e.a.a0.a.a(runnable));
        try {
            hVar.a(j2 <= 0 ? this.f4316b.submit(hVar) : this.f4316b.schedule(hVar, j2, timeUnit));
            return hVar;
        } catch (RejectedExecutionException e2) {
            e.a.a0.a.b(e2);
            return e.a.y.a.c.INSTANCE;
        }
    }

    @Override // e.a.v.b
    public void b() {
        if (this.f4317c) {
            return;
        }
        this.f4317c = true;
        this.f4316b.shutdownNow();
    }

    public void c() {
        if (this.f4317c) {
            return;
        }
        this.f4317c = true;
        this.f4316b.shutdown();
    }
}
