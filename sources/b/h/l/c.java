package b.h.l;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HandlerThread f2497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f2498c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f2501f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f2502g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f2503h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f2496a = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler.Callback f2500e = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2499d = 0;

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                c.this.a();
                return true;
            }
            if (i2 != 1) {
                return true;
            }
            c.this.a((Runnable) message.obj);
            return true;
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Callable f2505b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Handler f2506c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ d f2507d;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Object f2508b;

            a(Object obj) {
                this.f2508b = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f2507d.a(this.f2508b);
            }
        }

        b(c cVar, Callable callable, Handler handler, d dVar) {
            this.f2505b = callable;
            this.f2506c = handler;
            this.f2507d = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object objCall;
            try {
                objCall = this.f2505b.call();
            } catch (Exception unused) {
                objCall = null;
            }
            this.f2506c.post(new a(objCall));
        }
    }

    /* JADX INFO: renamed from: b.h.l.c$c, reason: collision with other inner class name */
    class RunnableC0101c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AtomicReference f2510b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Callable f2511c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ReentrantLock f2512d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f2513e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Condition f2514f;

        RunnableC0101c(c cVar, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
            this.f2510b = atomicReference;
            this.f2511c = callable;
            this.f2512d = reentrantLock;
            this.f2513e = atomicBoolean;
            this.f2514f = condition;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2510b.set(this.f2511c.call());
            } catch (Exception unused) {
            }
            this.f2512d.lock();
            try {
                this.f2513e.set(false);
                this.f2514f.signal();
            } finally {
                this.f2512d.unlock();
            }
        }
    }

    public interface d<T> {
        void a(T t);
    }

    public c(String str, int i2, int i3) {
        this.f2503h = str;
        this.f2502g = i2;
        this.f2501f = i3;
    }

    private void b(Runnable runnable) {
        synchronized (this.f2496a) {
            if (this.f2497b == null) {
                this.f2497b = new HandlerThread(this.f2503h, this.f2502g);
                this.f2497b.start();
                this.f2498c = new Handler(this.f2497b.getLooper(), this.f2500e);
                this.f2499d++;
            }
            this.f2498c.removeMessages(0);
            this.f2498c.sendMessage(this.f2498c.obtainMessage(1, runnable));
        }
    }

    public <T> T a(Callable<T> callable, int i2) {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition conditionNewCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        b(new RunnableC0101c(this, atomicReference, callable, reentrantLock, atomicBoolean, conditionNewCondition));
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                return (T) atomicReference.get();
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i2);
            do {
                try {
                    nanos = conditionNewCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    return (T) atomicReference.get();
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }

    void a() {
        synchronized (this.f2496a) {
            if (this.f2498c.hasMessages(1)) {
                return;
            }
            this.f2497b.quit();
            this.f2497b = null;
            this.f2498c = null;
        }
    }

    void a(Runnable runnable) {
        runnable.run();
        synchronized (this.f2496a) {
            this.f2498c.removeMessages(0);
            this.f2498c.sendMessageDelayed(this.f2498c.obtainMessage(0), this.f2501f);
        }
    }

    public <T> void a(Callable<T> callable, d<T> dVar) {
        b(new b(this, callable, new Handler(), dVar));
    }
}
