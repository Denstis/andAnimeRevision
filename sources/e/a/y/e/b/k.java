package e.a.y.e.b;

import e.a.n;

/* JADX INFO: loaded from: classes.dex */
public final class k<T> extends e.a.y.e.b.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e.a.n f4190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f4191d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f4192e;

    static final class a<T> extends e.a.y.d.b<T> implements e.a.m<T>, Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final e.a.m<? super T> f4193b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final n.b f4194c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final boolean f4195d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f4196e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        e.a.y.c.h<T> f4197f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        e.a.v.b f4198g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        Throwable f4199h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        volatile boolean f4200i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        volatile boolean f4201j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f4202k;
        boolean l;

        a(e.a.m<? super T> mVar, n.b bVar, boolean z, int i2) {
            this.f4193b = mVar;
            this.f4194c = bVar;
            this.f4195d = z;
            this.f4196e = i2;
        }

        @Override // e.a.y.c.e
        public int a(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.l = true;
            return 2;
        }

        @Override // e.a.m
        public void a(e.a.v.b bVar) {
            if (e.a.y.a.b.a(this.f4198g, bVar)) {
                this.f4198g = bVar;
                if (bVar instanceof e.a.y.c.d) {
                    e.a.y.c.d dVar = (e.a.y.c.d) bVar;
                    int iA = dVar.a(7);
                    if (iA == 1) {
                        this.f4202k = iA;
                        this.f4197f = dVar;
                        this.f4200i = true;
                        this.f4193b.a((e.a.v.b) this);
                        f();
                        return;
                    }
                    if (iA == 2) {
                        this.f4202k = iA;
                        this.f4197f = dVar;
                        this.f4193b.a((e.a.v.b) this);
                        return;
                    }
                }
                this.f4197f = new e.a.y.f.a(this.f4196e);
                this.f4193b.a((e.a.v.b) this);
            }
        }

        @Override // e.a.m
        public void a(T t) {
            if (this.f4200i) {
                return;
            }
            if (this.f4202k != 2) {
                this.f4197f.b(t);
            }
            f();
        }

        @Override // e.a.m
        public void a(Throwable th) {
            if (this.f4200i) {
                e.a.a0.a.b(th);
                return;
            }
            this.f4199h = th;
            this.f4200i = true;
            f();
        }

        @Override // e.a.v.b
        public boolean a() {
            return this.f4201j;
        }

        boolean a(boolean z, boolean z2, e.a.m<? super T> mVar) {
            if (this.f4201j) {
                this.f4197f.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.f4199h;
            if (this.f4195d) {
                if (!z2) {
                    return false;
                }
                if (th != null) {
                    mVar.a(th);
                } else {
                    mVar.onComplete();
                }
                this.f4194c.b();
                return true;
            }
            if (th != null) {
                this.f4197f.clear();
                mVar.a(th);
                this.f4194c.b();
                return true;
            }
            if (!z2) {
                return false;
            }
            mVar.onComplete();
            this.f4194c.b();
            return true;
        }

        @Override // e.a.v.b
        public void b() {
            if (this.f4201j) {
                return;
            }
            this.f4201j = true;
            this.f4198g.b();
            this.f4194c.b();
            if (getAndIncrement() == 0) {
                this.f4197f.clear();
            }
        }

        @Override // e.a.y.c.h
        public T c() {
            return this.f4197f.c();
        }

        @Override // e.a.y.c.h
        public void clear() {
            this.f4197f.clear();
        }

        void d() {
            int iAddAndGet = 1;
            while (!this.f4201j) {
                boolean z = this.f4200i;
                Throwable th = this.f4199h;
                if (this.f4195d || !z || th == null) {
                    this.f4193b.a((Object) null);
                    if (z) {
                        Throwable th2 = this.f4199h;
                        if (th2 != null) {
                            this.f4193b.a(th2);
                        } else {
                            this.f4193b.onComplete();
                        }
                    } else {
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    }
                } else {
                    this.f4193b.a(th);
                }
                this.f4194c.b();
                return;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        
            r3 = addAndGet(-r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
        
            if (r3 != 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x002e, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void e() {
            /*
                r7 = this;
                e.a.y.c.h<T> r0 = r7.f4197f
                e.a.m<? super T> r1 = r7.f4193b
                r2 = 1
                r3 = 1
            L6:
                boolean r4 = r7.f4200i
                boolean r5 = r0.isEmpty()
                boolean r4 = r7.a(r4, r5, r1)
                if (r4 == 0) goto L13
                return
            L13:
                boolean r4 = r7.f4200i
                java.lang.Object r5 = r0.c()     // Catch: java.lang.Throwable -> L33
                if (r5 != 0) goto L1d
                r6 = 1
                goto L1e
            L1d:
                r6 = 0
            L1e:
                boolean r4 = r7.a(r4, r6, r1)
                if (r4 == 0) goto L25
                return
            L25:
                if (r6 == 0) goto L2f
                int r3 = -r3
                int r3 = r7.addAndGet(r3)
                if (r3 != 0) goto L6
                return
            L2f:
                r1.a(r5)
                goto L13
            L33:
                r2 = move-exception
                e.a.w.b.b(r2)
                e.a.v.b r3 = r7.f4198g
                r3.b()
                r0.clear()
                r1.a(r2)
                e.a.n$b r0 = r7.f4194c
                r0.b()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: e.a.y.e.b.k.a.e():void");
        }

        void f() {
            if (getAndIncrement() == 0) {
                this.f4194c.a(this);
            }
        }

        @Override // e.a.y.c.h
        public boolean isEmpty() {
            return this.f4197f.isEmpty();
        }

        @Override // e.a.m
        public void onComplete() {
            if (this.f4200i) {
                return;
            }
            this.f4200i = true;
            f();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.l) {
                d();
            } else {
                e();
            }
        }
    }

    public k(e.a.k<T> kVar, e.a.n nVar, boolean z, int i2) {
        super(kVar);
        this.f4190c = nVar;
        this.f4191d = z;
        this.f4192e = i2;
    }

    @Override // e.a.h
    protected void b(e.a.m<? super T> mVar) {
        e.a.n nVar = this.f4190c;
        if (nVar instanceof e.a.y.g.m) {
            this.f4161b.a(mVar);
        } else {
            this.f4161b.a(new a(mVar, nVar.a(), this.f4191d, this.f4192e));
        }
    }
}
