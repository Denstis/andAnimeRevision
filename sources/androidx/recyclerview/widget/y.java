package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b.e.a<RecyclerView.d0, a> f1412a = new b.e.a<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b.e.d<RecyclerView.d0> f1413b = new b.e.d<>();

    static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static b.h.n.d<a> f1414d = new b.h.n.e(20);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1415a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RecyclerView.l.c f1416b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        RecyclerView.l.c f1417c;

        private a() {
        }

        static void a() {
            while (f1414d.a() != null) {
            }
        }

        static void a(a aVar) {
            aVar.f1415a = 0;
            aVar.f1416b = null;
            aVar.f1417c = null;
            f1414d.a(aVar);
        }

        static a b() {
            a aVarA = f1414d.a();
            return aVarA == null ? new a() : aVarA;
        }
    }

    interface b {
        void a(RecyclerView.d0 d0Var);

        void a(RecyclerView.d0 d0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2);

        void b(RecyclerView.d0 d0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2);

        void c(RecyclerView.d0 d0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2);
    }

    y() {
    }

    private RecyclerView.l.c a(RecyclerView.d0 d0Var, int i2) {
        a aVarD;
        RecyclerView.l.c cVar;
        int iA = this.f1412a.a(d0Var);
        if (iA >= 0 && (aVarD = this.f1412a.d(iA)) != null) {
            int i3 = aVarD.f1415a;
            if ((i3 & i2) != 0) {
                aVarD.f1415a = (i2 ^ (-1)) & i3;
                if (i2 == 4) {
                    cVar = aVarD.f1416b;
                } else {
                    if (i2 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = aVarD.f1417c;
                }
                if ((aVarD.f1415a & 12) == 0) {
                    this.f1412a.c(iA);
                    a.a(aVarD);
                }
                return cVar;
            }
        }
        return null;
    }

    RecyclerView.d0 a(long j2) {
        return this.f1413b.b(j2);
    }

    void a() {
        this.f1412a.clear();
        this.f1413b.a();
    }

    void a(long j2, RecyclerView.d0 d0Var) {
        this.f1413b.c(j2, d0Var);
    }

    void a(RecyclerView.d0 d0Var) {
        a aVarB = this.f1412a.get(d0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f1412a.put(d0Var, aVarB);
        }
        aVarB.f1415a |= 1;
    }

    void a(RecyclerView.d0 d0Var, RecyclerView.l.c cVar) {
        a aVarB = this.f1412a.get(d0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f1412a.put(d0Var, aVarB);
        }
        aVarB.f1415a |= 2;
        aVarB.f1416b = cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void a(androidx.recyclerview.widget.y.b r7) {
        /*
            r6 = this;
            b.e.a<androidx.recyclerview.widget.RecyclerView$d0, androidx.recyclerview.widget.y$a> r0 = r6.f1412a
            int r0 = r0.size()
            int r0 = r0 + (-1)
        L8:
            if (r0 < 0) goto L63
            b.e.a<androidx.recyclerview.widget.RecyclerView$d0, androidx.recyclerview.widget.y$a> r1 = r6.f1412a
            java.lang.Object r1 = r1.b(r0)
            androidx.recyclerview.widget.RecyclerView$d0 r1 = (androidx.recyclerview.widget.RecyclerView.d0) r1
            b.e.a<androidx.recyclerview.widget.RecyclerView$d0, androidx.recyclerview.widget.y$a> r2 = r6.f1412a
            java.lang.Object r2 = r2.c(r0)
            androidx.recyclerview.widget.y$a r2 = (androidx.recyclerview.widget.y.a) r2
            int r3 = r2.f1415a
            r4 = r3 & 3
            r5 = 3
            if (r4 != r5) goto L25
        L21:
            r7.a(r1)
            goto L5d
        L25:
            r4 = r3 & 1
            if (r4 == 0) goto L34
            androidx.recyclerview.widget.RecyclerView$l$c r3 = r2.f1416b
            if (r3 != 0) goto L2e
            goto L21
        L2e:
            androidx.recyclerview.widget.RecyclerView$l$c r4 = r2.f1417c
        L30:
            r7.b(r1, r3, r4)
            goto L5d
        L34:
            r4 = r3 & 14
            r5 = 14
            if (r4 != r5) goto L42
        L3a:
            androidx.recyclerview.widget.RecyclerView$l$c r3 = r2.f1416b
            androidx.recyclerview.widget.RecyclerView$l$c r4 = r2.f1417c
            r7.a(r1, r3, r4)
            goto L5d
        L42:
            r4 = r3 & 12
            r5 = 12
            if (r4 != r5) goto L50
            androidx.recyclerview.widget.RecyclerView$l$c r3 = r2.f1416b
            androidx.recyclerview.widget.RecyclerView$l$c r4 = r2.f1417c
            r7.c(r1, r3, r4)
            goto L5d
        L50:
            r4 = r3 & 4
            if (r4 == 0) goto L58
            androidx.recyclerview.widget.RecyclerView$l$c r3 = r2.f1416b
            r4 = 0
            goto L30
        L58:
            r3 = r3 & 8
            if (r3 == 0) goto L5d
            goto L3a
        L5d:
            androidx.recyclerview.widget.y.a.a(r2)
            int r0 = r0 + (-1)
            goto L8
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.y.a(androidx.recyclerview.widget.y$b):void");
    }

    void b() {
        a.a();
    }

    void b(RecyclerView.d0 d0Var, RecyclerView.l.c cVar) {
        a aVarB = this.f1412a.get(d0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f1412a.put(d0Var, aVarB);
        }
        aVarB.f1417c = cVar;
        aVarB.f1415a |= 8;
    }

    boolean b(RecyclerView.d0 d0Var) {
        a aVar = this.f1412a.get(d0Var);
        return (aVar == null || (aVar.f1415a & 1) == 0) ? false : true;
    }

    void c(RecyclerView.d0 d0Var, RecyclerView.l.c cVar) {
        a aVarB = this.f1412a.get(d0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f1412a.put(d0Var, aVarB);
        }
        aVarB.f1416b = cVar;
        aVarB.f1415a |= 4;
    }

    boolean c(RecyclerView.d0 d0Var) {
        a aVar = this.f1412a.get(d0Var);
        return (aVar == null || (aVar.f1415a & 4) == 0) ? false : true;
    }

    public void d(RecyclerView.d0 d0Var) {
        g(d0Var);
    }

    RecyclerView.l.c e(RecyclerView.d0 d0Var) {
        return a(d0Var, 8);
    }

    RecyclerView.l.c f(RecyclerView.d0 d0Var) {
        return a(d0Var, 4);
    }

    void g(RecyclerView.d0 d0Var) {
        a aVar = this.f1412a.get(d0Var);
        if (aVar == null) {
            return;
        }
        aVar.f1415a &= -2;
    }

    void h(RecyclerView.d0 d0Var) {
        int iB = this.f1413b.b() - 1;
        while (true) {
            if (iB < 0) {
                break;
            }
            if (d0Var == this.f1413b.c(iB)) {
                this.f1413b.b(iB);
                break;
            }
            iB--;
        }
        a aVarRemove = this.f1412a.remove(d0Var);
        if (aVarRemove != null) {
            a.a(aVarRemove);
        }
    }
}
