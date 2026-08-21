package h;

import h.z;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Runnable f4882c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExecutorService f4883d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4880a = 64;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4881b = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Deque<z.a> f4884e = new ArrayDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Deque<z.a> f4885f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Deque<z> f4886g = new ArrayDeque();

    private <T> void a(Deque<T> deque, T t, boolean z) {
        int iB;
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            if (z) {
                c();
            }
            iB = b();
            runnable = this.f4882c;
        }
        if (iB != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }

    private int c(z.a aVar) {
        int i2 = 0;
        for (z.a aVar2 : this.f4885f) {
            if (!aVar2.c().f4977f && aVar2.d().equals(aVar.d())) {
                i2++;
            }
        }
        return i2;
    }

    private void c() {
        if (this.f4885f.size() < this.f4880a && !this.f4884e.isEmpty()) {
            Iterator<z.a> it = this.f4884e.iterator();
            while (it.hasNext()) {
                z.a next = it.next();
                if (c(next) < this.f4881b) {
                    it.remove();
                    this.f4885f.add(next);
                    a().execute(next);
                }
                if (this.f4885f.size() >= this.f4880a) {
                    return;
                }
            }
        }
    }

    public synchronized ExecutorService a() {
        if (this.f4883d == null) {
            this.f4883d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), h.h0.c.a("OkHttp Dispatcher", false));
        }
        return this.f4883d;
    }

    synchronized void a(z.a aVar) {
        if (this.f4885f.size() >= this.f4880a || c(aVar) >= this.f4881b) {
            this.f4884e.add(aVar);
        } else {
            this.f4885f.add(aVar);
            a().execute(aVar);
        }
    }

    synchronized void a(z zVar) {
        this.f4886g.add(zVar);
    }

    public synchronized int b() {
        return this.f4885f.size() + this.f4886g.size();
    }

    void b(z.a aVar) {
        a(this.f4885f, aVar, true);
    }

    void b(z zVar) {
        a(this.f4886g, zVar, false);
    }
}
