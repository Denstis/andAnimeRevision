package e.a;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    static final class a implements e.a.v.b, Runnable, e.a.b0.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Runnable f4112b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final b f4113c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Thread f4114d;

        a(Runnable runnable, b bVar) {
            this.f4112b = runnable;
            this.f4113c = bVar;
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4113c.a();
        }

        @Override // e.a.v.b
        public void b() {
            if (this.f4114d == Thread.currentThread()) {
                b bVar = this.f4113c;
                if (bVar instanceof e.a.y.g.e) {
                    ((e.a.y.g.e) bVar).c();
                    return;
                }
            }
            this.f4113c.b();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4114d = Thread.currentThread();
            try {
                this.f4112b.run();
            } finally {
                b();
                this.f4114d = null;
            }
        }
    }

    public static abstract class b implements e.a.v.b {
        public long a(TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        public e.a.v.b a(Runnable runnable) {
            return a(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        public abstract e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit);
    }

    static {
        TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15L).longValue());
    }

    public abstract b a();

    public e.a.v.b a(Runnable runnable) {
        return a(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
        b bVarA = a();
        a aVar = new a(e.a.a0.a.a(runnable), bVarA);
        bVarA.a(aVar, j2, timeUnit);
        return aVar;
    }
}
