package i;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class a extends t {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f4981h = TimeUnit.SECONDS.toMillis(60);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final long f4982i = TimeUnit.MILLISECONDS.toNanos(f4981h);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static a f4983j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4984e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f4985f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f4986g;

    /* JADX INFO: renamed from: i.a$a, reason: collision with other inner class name */
    class C0193a implements r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ r f4987b;

        C0193a(r rVar) {
            this.f4987b = rVar;
        }

        @Override // i.r
        public t b() {
            return a.this;
        }

        @Override // i.r
        public void b(i.c cVar, long j2) throws IOException {
            u.a(cVar.f4994c, 0L, j2);
            while (true) {
                long j3 = 0;
                if (j2 <= 0) {
                    return;
                }
                o oVar = cVar.f4993b;
                while (true) {
                    if (j3 >= 65536) {
                        break;
                    }
                    j3 += (long) (oVar.f5029c - oVar.f5028b);
                    if (j3 >= j2) {
                        j3 = j2;
                        break;
                    }
                    oVar = oVar.f5032f;
                }
                a.this.g();
                try {
                    try {
                        this.f4987b.b(cVar, j3);
                        j2 -= j3;
                        a.this.a(true);
                    } catch (IOException e2) {
                        throw a.this.a(e2);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }
        }

        @Override // i.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            a.this.g();
            try {
                try {
                    this.f4987b.close();
                    a.this.a(true);
                } catch (IOException e2) {
                    throw a.this.a(e2);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        @Override // i.r, java.io.Flushable
        public void flush() throws IOException {
            a.this.g();
            try {
                try {
                    this.f4987b.flush();
                    a.this.a(true);
                } catch (IOException e2) {
                    throw a.this.a(e2);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f4987b + ")";
        }
    }

    class b implements s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ s f4989b;

        b(s sVar) {
            this.f4989b = sVar;
        }

        @Override // i.s
        public long a(i.c cVar, long j2) throws IOException {
            a.this.g();
            try {
                try {
                    long jA = this.f4989b.a(cVar, j2);
                    a.this.a(true);
                    return jA;
                } catch (IOException e2) {
                    throw a.this.a(e2);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        @Override // i.s
        public t b() {
            return a.this;
        }

        @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                try {
                    this.f4989b.close();
                    a.this.a(true);
                } catch (IOException e2) {
                    throw a.this.a(e2);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f4989b + ")";
        }
    }

    private static final class c extends Thread {
        c() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0015, code lost:
        
            r1.i();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<i.a> r0 = i.a.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                i.a r1 = i.a.j()     // Catch: java.lang.Throwable -> L19
                if (r1 != 0) goto Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L0
            Lb:
                i.a r2 = i.a.f4983j     // Catch: java.lang.Throwable -> L19
                if (r1 != r2) goto L14
                r1 = 0
                i.a.f4983j = r1     // Catch: java.lang.Throwable -> L19
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                return
            L14:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                r1.i()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L19:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L1d
            L1c:
                throw r1
            L1d:
                goto L1c
            */
            throw new UnsupportedOperationException("Method not decompiled: i.a.c.run():void");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005e A[Catch: all -> 0x0069, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0016, B:10:0x0022, B:11:0x002b, B:17:0x003c, B:18:0x0042, B:20:0x0046, B:23:0x0051, B:24:0x0054, B:26:0x005e, B:16:0x0036, B:29:0x0063, B:30:0x0068), top: B:36:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static synchronized void a(i.a r6, long r7, boolean r9) {
        /*
            java.lang.Class<i.a> r0 = i.a.class
            monitor-enter(r0)
            i.a r1 = i.a.f4983j     // Catch: java.lang.Throwable -> L69
            if (r1 != 0) goto L16
            i.a r1 = new i.a     // Catch: java.lang.Throwable -> L69
            r1.<init>()     // Catch: java.lang.Throwable -> L69
            i.a.f4983j = r1     // Catch: java.lang.Throwable -> L69
            i.a$c r1 = new i.a$c     // Catch: java.lang.Throwable -> L69
            r1.<init>()     // Catch: java.lang.Throwable -> L69
            r1.start()     // Catch: java.lang.Throwable -> L69
        L16:
            long r1 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L69
            r3 = 0
            int r5 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r5 == 0) goto L2f
            if (r9 == 0) goto L2f
            long r3 = r6.c()     // Catch: java.lang.Throwable -> L69
            long r3 = r3 - r1
            long r7 = java.lang.Math.min(r7, r3)     // Catch: java.lang.Throwable -> L69
        L2b:
            long r7 = r7 + r1
            r6.f4986g = r7     // Catch: java.lang.Throwable -> L69
            goto L3c
        L2f:
            int r5 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r5 == 0) goto L34
            goto L2b
        L34:
            if (r9 == 0) goto L63
            long r7 = r6.c()     // Catch: java.lang.Throwable -> L69
            r6.f4986g = r7     // Catch: java.lang.Throwable -> L69
        L3c:
            long r7 = r6.b(r1)     // Catch: java.lang.Throwable -> L69
            i.a r9 = i.a.f4983j     // Catch: java.lang.Throwable -> L69
        L42:
            i.a r3 = r9.f4985f     // Catch: java.lang.Throwable -> L69
            if (r3 == 0) goto L54
            i.a r3 = r9.f4985f     // Catch: java.lang.Throwable -> L69
            long r3 = r3.b(r1)     // Catch: java.lang.Throwable -> L69
            int r5 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r5 >= 0) goto L51
            goto L54
        L51:
            i.a r9 = r9.f4985f     // Catch: java.lang.Throwable -> L69
            goto L42
        L54:
            i.a r7 = r9.f4985f     // Catch: java.lang.Throwable -> L69
            r6.f4985f = r7     // Catch: java.lang.Throwable -> L69
            r9.f4985f = r6     // Catch: java.lang.Throwable -> L69
            i.a r6 = i.a.f4983j     // Catch: java.lang.Throwable -> L69
            if (r9 != r6) goto L61
            r0.notify()     // Catch: java.lang.Throwable -> L69
        L61:
            monitor-exit(r0)
            return
        L63:
            java.lang.AssertionError r6 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L69
            r6.<init>()     // Catch: java.lang.Throwable -> L69
            throw r6     // Catch: java.lang.Throwable -> L69
        L69:
            r6 = move-exception
            monitor-exit(r0)
            goto L6d
        L6c:
            throw r6
        L6d:
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.a(i.a, long, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        r1.f4985f = r3.f4985f;
        r3.f4985f = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
    
        r3 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static synchronized boolean a(i.a r3) {
        /*
            java.lang.Class<i.a> r0 = i.a.class
            monitor-enter(r0)
            i.a r1 = i.a.f4983j     // Catch: java.lang.Throwable -> L1a
        L5:
            if (r1 == 0) goto L18
            i.a r2 = r1.f4985f     // Catch: java.lang.Throwable -> L1a
            if (r2 != r3) goto L15
            i.a r2 = r3.f4985f     // Catch: java.lang.Throwable -> L1a
            r1.f4985f = r2     // Catch: java.lang.Throwable -> L1a
            r1 = 0
            r3.f4985f = r1     // Catch: java.lang.Throwable -> L1a
            r3 = 0
        L13:
            monitor-exit(r0)
            return r3
        L15:
            i.a r1 = r1.f4985f     // Catch: java.lang.Throwable -> L1a
            goto L5
        L18:
            r3 = 1
            goto L13
        L1a:
            r3 = move-exception
            monitor-exit(r0)
            goto L1e
        L1d:
            throw r3
        L1e:
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.a(i.a):boolean");
    }

    private long b(long j2) {
        return this.f4986g - j2;
    }

    static a j() throws InterruptedException {
        a aVar = f4983j.f4985f;
        long jNanoTime = System.nanoTime();
        if (aVar == null) {
            a.class.wait(f4981h);
            if (f4983j.f4985f != null || System.nanoTime() - jNanoTime < f4982i) {
                return null;
            }
            return f4983j;
        }
        long jB = aVar.b(jNanoTime);
        if (jB > 0) {
            long j2 = jB / 1000000;
            a.class.wait(j2, (int) (jB - (1000000 * j2)));
            return null;
        }
        f4983j.f4985f = aVar.f4985f;
        aVar.f4985f = null;
        return aVar;
    }

    public final r a(r rVar) {
        return new C0193a(rVar);
    }

    public final s a(s sVar) {
        return new b(sVar);
    }

    final IOException a(IOException iOException) {
        return !h() ? iOException : b(iOException);
    }

    final void a(boolean z) throws IOException {
        if (h() && z) {
            throw b((IOException) null);
        }
    }

    protected IOException b(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final void g() {
        if (this.f4984e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jF = f();
        boolean zD = d();
        if (jF != 0 || zD) {
            this.f4984e = true;
            a(this, jF, zD);
        }
    }

    public final boolean h() {
        if (!this.f4984e) {
            return false;
        }
        this.f4984e = false;
        return a(this);
    }

    protected void i() {
    }
}
