package com.bumptech.glide.load.n;

import android.os.Process;
import com.bumptech.glide.load.n.p;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Map<com.bumptech.glide.load.g, d> f3427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ReferenceQueue<p<?>> f3428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private p.a f3429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f3430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile c f3431f;

    /* JADX INFO: renamed from: com.bumptech.glide.load.n.a$a, reason: collision with other inner class name */
    class ThreadFactoryC0135a implements ThreadFactory {

        /* JADX INFO: renamed from: com.bumptech.glide.load.n.a$a$a, reason: collision with other inner class name */
        class RunnableC0136a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Runnable f3432b;

            RunnableC0136a(ThreadFactoryC0135a threadFactoryC0135a, Runnable runnable) {
                this.f3432b = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.f3432b.run();
            }
        }

        ThreadFactoryC0135a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(new RunnableC0136a(this, runnable), "glide-active-resources");
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a();
        }
    }

    interface c {
        void a();
    }

    static final class d extends WeakReference<p<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final com.bumptech.glide.load.g f3434a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f3435b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        v<?> f3436c;

        d(com.bumptech.glide.load.g gVar, p<?> pVar, ReferenceQueue<? super p<?>> referenceQueue, boolean z) {
            v<?> vVar;
            super(pVar, referenceQueue);
            c.a.a.t.j.a(gVar);
            this.f3434a = gVar;
            if (pVar.f() && z) {
                v<?> vVarE = pVar.e();
                c.a.a.t.j.a(vVarE);
                vVar = vVarE;
            } else {
                vVar = null;
            }
            this.f3436c = vVar;
            this.f3435b = pVar.f();
        }

        void a() {
            this.f3436c = null;
            clear();
        }
    }

    a(boolean z) {
        this(z, Executors.newSingleThreadExecutor(new ThreadFactoryC0135a()));
    }

    a(boolean z, Executor executor) {
        this.f3427b = new HashMap();
        this.f3428c = new ReferenceQueue<>();
        this.f3426a = z;
        executor.execute(new b());
    }

    void a() {
        while (!this.f3430e) {
            try {
                a((d) this.f3428c.remove());
                c cVar = this.f3431f;
                if (cVar != null) {
                    cVar.a();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    synchronized void a(com.bumptech.glide.load.g gVar) {
        d dVarRemove = this.f3427b.remove(gVar);
        if (dVarRemove != null) {
            dVarRemove.a();
        }
    }

    synchronized void a(com.bumptech.glide.load.g gVar, p<?> pVar) {
        d dVarPut = this.f3427b.put(gVar, new d(gVar, pVar, this.f3428c, this.f3426a));
        if (dVarPut != null) {
            dVarPut.a();
        }
    }

    void a(d dVar) {
        synchronized (this.f3429d) {
            synchronized (this) {
                this.f3427b.remove(dVar.f3434a);
                if (dVar.f3435b && dVar.f3436c != null) {
                    p<?> pVar = new p<>(dVar.f3436c, true, false);
                    pVar.a(dVar.f3434a, this.f3429d);
                    this.f3429d.a(dVar.f3434a, pVar);
                }
            }
        }
    }

    void a(p.a aVar) {
        synchronized (aVar) {
            synchronized (this) {
                this.f3429d = aVar;
            }
        }
    }

    synchronized p<?> b(com.bumptech.glide.load.g gVar) {
        d dVar = this.f3427b.get(gVar);
        if (dVar == null) {
            return null;
        }
        p<?> pVar = dVar.get();
        if (pVar == null) {
            a(dVar);
        }
        return pVar;
    }
}
