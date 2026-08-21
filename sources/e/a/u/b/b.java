package e.a.u.b;

import android.os.Handler;
import android.os.Message;
import e.a.n;
import e.a.v.c;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class b extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f4119a;

    private static final class a extends n.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Handler f4120b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile boolean f4121c;

        a(Handler handler) {
            this.f4120b = handler;
        }

        @Override // e.a.n.b
        public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
            if (runnable == null) {
                throw new NullPointerException("run == null");
            }
            if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            }
            if (this.f4121c) {
                return c.a();
            }
            RunnableC0177b runnableC0177b = new RunnableC0177b(this.f4120b, e.a.a0.a.a(runnable));
            Message messageObtain = Message.obtain(this.f4120b, runnableC0177b);
            messageObtain.obj = this;
            this.f4120b.sendMessageDelayed(messageObtain, timeUnit.toMillis(j2));
            if (!this.f4121c) {
                return runnableC0177b;
            }
            this.f4120b.removeCallbacks(runnableC0177b);
            return c.a();
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4121c;
        }

        @Override // e.a.v.b
        public void b() {
            this.f4121c = true;
            this.f4120b.removeCallbacksAndMessages(this);
        }
    }

    /* JADX INFO: renamed from: e.a.u.b.b$b, reason: collision with other inner class name */
    private static final class RunnableC0177b implements Runnable, e.a.v.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Handler f4122b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f4123c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private volatile boolean f4124d;

        RunnableC0177b(Handler handler, Runnable runnable) {
            this.f4122b = handler;
            this.f4123c = runnable;
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4124d;
        }

        @Override // e.a.v.b
        public void b() {
            this.f4124d = true;
            this.f4122b.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f4123c.run();
            } catch (Throwable th) {
                e.a.a0.a.b(th);
            }
        }
    }

    b(Handler handler) {
        this.f4119a = handler;
    }

    @Override // e.a.n
    public n.b a() {
        return new a(this.f4119a);
    }

    @Override // e.a.n
    public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
        if (runnable == null) {
            throw new NullPointerException("run == null");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        RunnableC0177b runnableC0177b = new RunnableC0177b(this.f4119a, e.a.a0.a.a(runnable));
        this.f4119a.postDelayed(runnableC0177b, timeUnit.toMillis(j2));
        return runnableC0177b;
    }
}
