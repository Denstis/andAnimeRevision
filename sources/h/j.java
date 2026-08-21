package h;

import h.h0.f.g;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Executor f4848g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), h.h0.c.a("OkHttp ConnectionPool", true));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f4851c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Deque<h.h0.f.c> f4852d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final h.h0.f.d f4853e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f4854f;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                long jA = j.this.a(System.nanoTime());
                if (jA == -1) {
                    return;
                }
                if (jA > 0) {
                    long j2 = jA / 1000000;
                    long j3 = jA - (1000000 * j2);
                    synchronized (j.this) {
                        try {
                            j.this.wait(j2, (int) j3);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    public j() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public j(int i2, long j2, TimeUnit timeUnit) {
        this.f4851c = new a();
        this.f4852d = new ArrayDeque();
        this.f4853e = new h.h0.f.d();
        this.f4849a = i2;
        this.f4850b = timeUnit.toNanos(j2);
        if (j2 > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j2);
    }

    private int a(h.h0.f.c cVar, long j2) {
        List<Reference<h.h0.f.g>> list = cVar.n;
        int i2 = 0;
        while (i2 < list.size()) {
            Reference<h.h0.f.g> reference = list.get(i2);
            if (reference.get() != null) {
                i2++;
            } else {
                h.h0.j.f.c().a("A connection to " + cVar.e().a().k() + " was leaked. Did you forget to close a response body?", ((g.a) reference).f4599a);
                list.remove(i2);
                cVar.f4574k = true;
                if (list.isEmpty()) {
                    cVar.o = j2 - this.f4850b;
                    return 0;
                }
            }
        }
        return list.size();
    }

    long a(long j2) {
        synchronized (this) {
            long j3 = Long.MIN_VALUE;
            h.h0.f.c cVar = null;
            int i2 = 0;
            int i3 = 0;
            for (h.h0.f.c cVar2 : this.f4852d) {
                if (a(cVar2, j2) > 0) {
                    i3++;
                } else {
                    i2++;
                    long j4 = j2 - cVar2.o;
                    if (j4 > j3) {
                        cVar = cVar2;
                        j3 = j4;
                    }
                }
            }
            if (j3 < this.f4850b && i2 <= this.f4849a) {
                if (i2 > 0) {
                    return this.f4850b - j3;
                }
                if (i3 > 0) {
                    return this.f4850b;
                }
                this.f4854f = false;
                return -1L;
            }
            this.f4852d.remove(cVar);
            h.h0.c.a(cVar.f());
            return 0L;
        }
    }

    h.h0.f.c a(h.a aVar, h.h0.f.g gVar, e0 e0Var) {
        for (h.h0.f.c cVar : this.f4852d) {
            if (cVar.a(aVar, e0Var)) {
                gVar.a(cVar, true);
                return cVar;
            }
        }
        return null;
    }

    Socket a(h.a aVar, h.h0.f.g gVar) {
        for (h.h0.f.c cVar : this.f4852d) {
            if (cVar.a(aVar, null) && cVar.d() && cVar != gVar.c()) {
                return gVar.a(cVar);
            }
        }
        return null;
    }

    boolean a(h.h0.f.c cVar) {
        if (cVar.f4574k || this.f4849a == 0) {
            this.f4852d.remove(cVar);
            return true;
        }
        notifyAll();
        return false;
    }

    void b(h.h0.f.c cVar) {
        if (!this.f4854f) {
            this.f4854f = true;
            f4848g.execute(this.f4851c);
        }
        this.f4852d.add(cVar);
    }
}
