package h.h0.f;

import h.e0;
import h.h0.f.f;
import h.j;
import h.p;
import h.u;
import h.x;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h.a f4588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f.a f4589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e0 f4590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j f4591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final h.e f4592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p f4593f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f4594g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final f f4595h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f4596i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private c f4597j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f4598k;
    private boolean l;
    private boolean m;
    private h.h0.g.c n;

    public static final class a extends WeakReference<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f4599a;

        a(g gVar, Object obj) {
            super(gVar);
            this.f4599a = obj;
        }
    }

    public g(j jVar, h.a aVar, h.e eVar, p pVar, Object obj) {
        this.f4591d = jVar;
        this.f4588a = aVar;
        this.f4592e = eVar;
        this.f4593f = pVar;
        this.f4595h = new f(aVar, i(), eVar, pVar);
        this.f4594g = obj;
    }

    private c a(int i2, int i3, int i4, int i5, boolean z) throws Throwable {
        Socket socketH;
        Socket socketA;
        c cVar;
        c cVar2;
        c cVar3;
        e0 e0VarC;
        boolean z2;
        boolean z3;
        f.a aVar;
        synchronized (this.f4591d) {
            if (this.l) {
                throw new IllegalStateException("released");
            }
            if (this.n != null) {
                throw new IllegalStateException("codec != null");
            }
            if (this.m) {
                throw new IOException("Canceled");
            }
            c cVar4 = this.f4597j;
            socketH = h();
            socketA = null;
            if (this.f4597j != null) {
                cVar2 = this.f4597j;
                cVar = null;
            } else {
                cVar = cVar4;
                cVar2 = null;
            }
            if (!this.f4598k) {
                cVar = null;
            }
            if (cVar2 == null) {
                h.h0.a.f4527a.a(this.f4591d, this.f4588a, this, null);
                if (this.f4597j != null) {
                    cVar3 = this.f4597j;
                    e0VarC = null;
                    z2 = true;
                } else {
                    e0VarC = this.f4590c;
                    cVar3 = cVar2;
                }
            } else {
                cVar3 = cVar2;
                e0VarC = null;
            }
            z2 = false;
        }
        h.h0.c.a(socketH);
        if (cVar != null) {
            this.f4593f.b(this.f4592e, cVar);
        }
        if (z2) {
            this.f4593f.a(this.f4592e, cVar3);
        }
        if (cVar3 != null) {
            return cVar3;
        }
        if (e0VarC != null || ((aVar = this.f4589b) != null && aVar.b())) {
            z3 = false;
        } else {
            this.f4589b = this.f4595h.b();
            z3 = true;
        }
        synchronized (this.f4591d) {
            if (this.m) {
                throw new IOException("Canceled");
            }
            if (z3) {
                List<e0> listA = this.f4589b.a();
                int size = listA.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size) {
                        break;
                    }
                    e0 e0Var = listA.get(i6);
                    h.h0.a.f4527a.a(this.f4591d, this.f4588a, this, e0Var);
                    if (this.f4597j != null) {
                        cVar3 = this.f4597j;
                        this.f4590c = e0Var;
                        z2 = true;
                        break;
                    }
                    i6++;
                }
            }
            if (!z2) {
                if (e0VarC == null) {
                    e0VarC = this.f4589b.c();
                }
                this.f4590c = e0VarC;
                this.f4596i = 0;
                cVar3 = new c(this.f4591d, e0VarC);
                a(cVar3, false);
            }
        }
        if (!z2) {
            cVar3.a(i2, i3, i4, i5, z, this.f4592e, this.f4593f);
            i().a(cVar3.e());
            synchronized (this.f4591d) {
                this.f4598k = true;
                h.h0.a.f4527a.b(this.f4591d, cVar3);
                if (cVar3.d()) {
                    socketA = h.h0.a.f4527a.a(this.f4591d, this.f4588a, this);
                    cVar3 = this.f4597j;
                }
            }
            h.h0.c.a(socketA);
        }
        this.f4593f.a(this.f4592e, cVar3);
        return cVar3;
    }

    private c a(int i2, int i3, int i4, int i5, boolean z, boolean z2) throws Throwable {
        while (true) {
            c cVarA = a(i2, i3, i4, i5, z);
            synchronized (this.f4591d) {
                if (cVarA.l == 0) {
                    return cVarA;
                }
                if (cVarA.a(z2)) {
                    return cVarA;
                }
                e();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.net.Socket a(boolean r2, boolean r3, boolean r4) {
        /*
            r1 = this;
            r0 = 0
            if (r4 == 0) goto L5
            r1.n = r0
        L5:
            r4 = 1
            if (r3 == 0) goto La
            r1.l = r4
        La:
            h.h0.f.c r3 = r1.f4597j
            if (r3 == 0) goto L4e
            if (r2 == 0) goto L12
            r3.f4574k = r4
        L12:
            h.h0.g.c r2 = r1.n
            if (r2 != 0) goto L4e
            boolean r2 = r1.l
            if (r2 != 0) goto L20
            h.h0.f.c r2 = r1.f4597j
            boolean r2 = r2.f4574k
            if (r2 == 0) goto L4e
        L20:
            h.h0.f.c r2 = r1.f4597j
            r1.b(r2)
            h.h0.f.c r2 = r1.f4597j
            java.util.List<java.lang.ref.Reference<h.h0.f.g>> r2 = r2.n
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L4a
            h.h0.f.c r2 = r1.f4597j
            long r3 = java.lang.System.nanoTime()
            r2.o = r3
            h.h0.a r2 = h.h0.a.f4527a
            h.j r3 = r1.f4591d
            h.h0.f.c r4 = r1.f4597j
            boolean r2 = r2.a(r3, r4)
            if (r2 == 0) goto L4a
            h.h0.f.c r2 = r1.f4597j
            java.net.Socket r2 = r2.f()
            goto L4b
        L4a:
            r2 = r0
        L4b:
            r1.f4597j = r0
            goto L4f
        L4e:
            r2 = r0
        L4f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: h.h0.f.g.a(boolean, boolean, boolean):java.net.Socket");
    }

    private void b(c cVar) {
        int size = cVar.n.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (cVar.n.get(i2).get() == this) {
                cVar.n.remove(i2);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private Socket h() {
        c cVar = this.f4597j;
        if (cVar == null || !cVar.f4574k) {
            return null;
        }
        return a(false, false, true);
    }

    private d i() {
        return h.h0.a.f4527a.a(this.f4591d);
    }

    public h.h0.g.c a(x xVar, u.a aVar, boolean z) {
        try {
            h.h0.g.c cVarA = a(aVar.d(), aVar.a(), aVar.b(), xVar.r(), xVar.x(), z).a(xVar, aVar, this);
            synchronized (this.f4591d) {
                this.n = cVarA;
            }
            return cVarA;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public Socket a(c cVar) {
        if (this.n != null || this.f4597j.n.size() != 1) {
            throw new IllegalStateException();
        }
        Reference<g> reference = this.f4597j.n.get(0);
        Socket socketA = a(true, false, false);
        this.f4597j = cVar;
        cVar.n.add(reference);
        return socketA;
    }

    public void a() {
        h.h0.g.c cVar;
        c cVar2;
        synchronized (this.f4591d) {
            this.m = true;
            cVar = this.n;
            cVar2 = this.f4597j;
        }
        if (cVar != null) {
            cVar.cancel();
        } else if (cVar2 != null) {
            cVar2.b();
        }
    }

    public void a(c cVar, boolean z) {
        if (this.f4597j != null) {
            throw new IllegalStateException();
        }
        this.f4597j = cVar;
        this.f4598k = z;
        cVar.n.add(new a(this, this.f4594g));
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0054 A[Catch: all -> 0x0067, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:8:0x0012, B:9:0x0017, B:11:0x001d, B:29:0x004a, B:31:0x0054, B:34:0x0059, B:26:0x0045, B:14:0x0022, B:16:0x0026, B:18:0x002e, B:20:0x0032, B:22:0x0038, B:25:0x003e), top: B:42:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(java.io.IOException r7) {
        /*
            r6 = this;
            h.j r0 = r6.f4591d
            monitor-enter(r0)
            boolean r1 = r7 instanceof h.h0.i.n     // Catch: java.lang.Throwable -> L67
            r2 = 0
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L22
            h.h0.i.n r7 = (h.h0.i.n) r7     // Catch: java.lang.Throwable -> L67
            h.h0.i.b r1 = r7.f4808b     // Catch: java.lang.Throwable -> L67
            h.h0.i.b r5 = h.h0.i.b.REFUSED_STREAM     // Catch: java.lang.Throwable -> L67
            if (r1 != r5) goto L17
            int r1 = r6.f4596i     // Catch: java.lang.Throwable -> L67
            int r1 = r1 + r4
            r6.f4596i = r1     // Catch: java.lang.Throwable -> L67
        L17:
            h.h0.i.b r7 = r7.f4808b     // Catch: java.lang.Throwable -> L67
            h.h0.i.b r1 = h.h0.i.b.REFUSED_STREAM     // Catch: java.lang.Throwable -> L67
            if (r7 != r1) goto L45
            int r7 = r6.f4596i     // Catch: java.lang.Throwable -> L67
            if (r7 <= r4) goto L49
            goto L45
        L22:
            h.h0.f.c r1 = r6.f4597j     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L49
            h.h0.f.c r1 = r6.f4597j     // Catch: java.lang.Throwable -> L67
            boolean r1 = r1.d()     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L32
            boolean r1 = r7 instanceof h.h0.i.a     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L49
        L32:
            h.h0.f.c r1 = r6.f4597j     // Catch: java.lang.Throwable -> L67
            int r1 = r1.l     // Catch: java.lang.Throwable -> L67
            if (r1 != 0) goto L47
            h.e0 r1 = r6.f4590c     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L45
            if (r7 == 0) goto L45
            h.h0.f.f r1 = r6.f4595h     // Catch: java.lang.Throwable -> L67
            h.e0 r5 = r6.f4590c     // Catch: java.lang.Throwable -> L67
            r1.a(r5, r7)     // Catch: java.lang.Throwable -> L67
        L45:
            r6.f4590c = r3     // Catch: java.lang.Throwable -> L67
        L47:
            r7 = 1
            goto L4a
        L49:
            r7 = 0
        L4a:
            h.h0.f.c r1 = r6.f4597j     // Catch: java.lang.Throwable -> L67
            java.net.Socket r7 = r6.a(r7, r2, r4)     // Catch: java.lang.Throwable -> L67
            h.h0.f.c r2 = r6.f4597j     // Catch: java.lang.Throwable -> L67
            if (r2 != 0) goto L58
            boolean r2 = r6.f4598k     // Catch: java.lang.Throwable -> L67
            if (r2 != 0) goto L59
        L58:
            r1 = r3
        L59:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L67
            h.h0.c.a(r7)
            if (r1 == 0) goto L66
            h.p r7 = r6.f4593f
            h.e r0 = r6.f4592e
            r7.b(r0, r1)
        L66:
            return
        L67:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L67
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: h.h0.f.g.a(java.io.IOException):void");
    }

    public void a(boolean z, h.h0.g.c cVar, long j2, IOException iOException) {
        c cVar2;
        Socket socketA;
        boolean z2;
        this.f4593f.b(this.f4592e, j2);
        synchronized (this.f4591d) {
            if (cVar != null) {
                if (cVar == this.n) {
                    if (!z) {
                        this.f4597j.l++;
                    }
                    cVar2 = this.f4597j;
                    socketA = a(z, false, true);
                    if (this.f4597j != null) {
                        cVar2 = null;
                    }
                    z2 = this.l;
                }
            }
            throw new IllegalStateException("expected " + this.n + " but was " + cVar);
        }
        h.h0.c.a(socketA);
        if (cVar2 != null) {
            this.f4593f.b(this.f4592e, cVar2);
        }
        if (iOException != null) {
            this.f4593f.a(this.f4592e, iOException);
        } else if (z2) {
            this.f4593f.a(this.f4592e);
        }
    }

    public h.h0.g.c b() {
        h.h0.g.c cVar;
        synchronized (this.f4591d) {
            cVar = this.n;
        }
        return cVar;
    }

    public synchronized c c() {
        return this.f4597j;
    }

    public boolean d() {
        f.a aVar;
        return this.f4590c != null || ((aVar = this.f4589b) != null && aVar.b()) || this.f4595h.a();
    }

    public void e() {
        c cVar;
        Socket socketA;
        synchronized (this.f4591d) {
            cVar = this.f4597j;
            socketA = a(true, false, false);
            if (this.f4597j != null) {
                cVar = null;
            }
        }
        h.h0.c.a(socketA);
        if (cVar != null) {
            this.f4593f.b(this.f4592e, cVar);
        }
    }

    public void f() {
        c cVar;
        Socket socketA;
        synchronized (this.f4591d) {
            cVar = this.f4597j;
            socketA = a(false, true, false);
            if (this.f4597j != null) {
                cVar = null;
            }
        }
        h.h0.c.a(socketA);
        if (cVar != null) {
            this.f4593f.b(this.f4592e, cVar);
        }
    }

    public e0 g() {
        return this.f4590c;
    }

    public String toString() {
        c cVarC = c();
        return cVarC != null ? cVarC.toString() : this.f4588a.toString();
    }
}
