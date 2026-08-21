package e.a.y.g;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes.dex */
public final class i extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, e.a.v.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Object f4321c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Object f4322d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Object f4323e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Object f4324f = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Runnable f4325b;

    public i(Runnable runnable, e.a.y.a.a aVar) {
        super(3);
        this.f4325b = runnable;
        lazySet(0, aVar);
    }

    public void a(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f4324f) {
                return;
            }
            if (obj == f4322d) {
                future.cancel(false);
                return;
            } else if (obj == f4323e) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // e.a.v.b
    public boolean a() {
        Object obj = get(0);
        return obj == f4321c || obj == f4324f;
    }

    @Override // e.a.v.b
    public void b() {
        Object obj;
        Object obj2;
        while (true) {
            Object obj3 = get(1);
            if (obj3 == f4324f || obj3 == f4322d || obj3 == f4323e) {
                break;
            }
            boolean z = get(2) != Thread.currentThread();
            if (compareAndSet(1, obj3, z ? f4323e : f4322d)) {
                if (obj3 != null) {
                    ((Future) obj3).cancel(z);
                }
            }
        }
        do {
            obj = get(0);
            if (obj == f4324f || obj == (obj2 = f4321c) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((e.a.y.a.a) obj).c(this);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        run();
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        boolean zCompareAndSet;
        Object obj4;
        lazySet(2, Thread.currentThread());
        try {
            this.f4325b.run();
        } finally {
            try {
            } catch (Throwable th) {
                do {
                    if (obj == obj2) {
                        break;
                    } else if (obj == obj3) {
                        break;
                    }
                } while (!zCompareAndSet);
            }
        }
        lazySet(2, null);
        Object obj5 = get(0);
        if (obj5 != f4321c && compareAndSet(0, obj5, f4324f) && obj5 != null) {
            ((e.a.y.a.a) obj5).c(this);
        }
        do {
            obj4 = get(1);
            if (obj4 == f4322d || obj4 == f4323e) {
                return;
            }
        } while (!compareAndSet(1, obj4, f4324f));
    }
}
