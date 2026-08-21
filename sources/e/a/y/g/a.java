package e.a.y.g;

import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
abstract class a extends AtomicReference<Future<?>> implements e.a.v.b, e.a.b0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final FutureTask<Void> f4278d = new FutureTask<>(e.a.y.b.a.f4140b, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final FutureTask<Void> f4279e = new FutureTask<>(e.a.y.b.a.f4140b, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Runnable f4280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Thread f4281c;

    a(Runnable runnable) {
        this.f4280b = runnable;
    }

    public final void a(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 == f4278d) {
                return;
            }
            if (future2 == f4279e) {
                future.cancel(this.f4281c != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    @Override // e.a.v.b
    public final boolean a() {
        Future<?> future = get();
        return future == f4278d || future == f4279e;
    }

    @Override // e.a.v.b
    public final void b() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future == f4278d || future == (futureTask = f4279e) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.f4281c != Thread.currentThread());
    }
}
