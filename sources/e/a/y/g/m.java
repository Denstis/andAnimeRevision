package e.a.y.g;

import e.a.n;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class m extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final m f4338a = new m();

    static final class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Runnable f4339b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f4340c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f4341d;

        a(Runnable runnable, c cVar, long j2) {
            this.f4339b = runnable;
            this.f4340c = cVar;
            this.f4341d = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4340c.f4349e) {
                return;
            }
            long jA = this.f4340c.a(TimeUnit.MILLISECONDS);
            long j2 = this.f4341d;
            if (j2 > jA) {
                try {
                    Thread.sleep(j2 - jA);
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    e.a.a0.a.b(e2);
                    return;
                }
            }
            if (this.f4340c.f4349e) {
                return;
            }
            this.f4339b.run();
        }
    }

    static final class b implements Comparable<b> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Runnable f4342b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final long f4343c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f4344d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        volatile boolean f4345e;

        b(Runnable runnable, Long l, int i2) {
            this.f4342b = runnable;
            this.f4343c = l.longValue();
            this.f4344d = i2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            int iA = e.a.y.b.b.a(this.f4343c, bVar.f4343c);
            return iA == 0 ? e.a.y.b.b.a(this.f4344d, bVar.f4344d) : iA;
        }
    }

    static final class c extends n.b implements e.a.v.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final PriorityBlockingQueue<b> f4346b = new PriorityBlockingQueue<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final AtomicInteger f4347c = new AtomicInteger();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final AtomicInteger f4348d = new AtomicInteger();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        volatile boolean f4349e;

        final class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final b f4350b;

            a(b bVar) {
                this.f4350b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                b bVar = this.f4350b;
                bVar.f4345e = true;
                c.this.f4346b.remove(bVar);
            }
        }

        c() {
        }

        @Override // e.a.n.b
        public e.a.v.b a(Runnable runnable) {
            return a(runnable, a(TimeUnit.MILLISECONDS));
        }

        e.a.v.b a(Runnable runnable, long j2) {
            if (this.f4349e) {
                return e.a.y.a.c.INSTANCE;
            }
            b bVar = new b(runnable, Long.valueOf(j2), this.f4348d.incrementAndGet());
            this.f4346b.add(bVar);
            if (this.f4347c.getAndIncrement() != 0) {
                return e.a.v.c.a(new a(bVar));
            }
            int iAddAndGet = 1;
            while (!this.f4349e) {
                b bVarPoll = this.f4346b.poll();
                if (bVarPoll == null) {
                    iAddAndGet = this.f4347c.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return e.a.y.a.c.INSTANCE;
                    }
                } else if (!bVarPoll.f4345e) {
                    bVarPoll.f4342b.run();
                }
            }
            this.f4346b.clear();
            return e.a.y.a.c.INSTANCE;
        }

        @Override // e.a.n.b
        public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
            long jA = a(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j2);
            return a(new a(runnable, this, jA), jA);
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4349e;
        }

        @Override // e.a.v.b
        public void b() {
            this.f4349e = true;
        }
    }

    m() {
    }

    public static m b() {
        return f4338a;
    }

    @Override // e.a.n
    public n.b a() {
        return new c();
    }

    @Override // e.a.n
    public e.a.v.b a(Runnable runnable) {
        e.a.a0.a.a(runnable).run();
        return e.a.y.a.c.INSTANCE;
    }

    @Override // e.a.n
    public e.a.v.b a(Runnable runnable, long j2, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j2);
            e.a.a0.a.a(runnable).run();
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            e.a.a0.a.b(e2);
        }
        return e.a.y.a.c.INSTANCE;
    }
}
