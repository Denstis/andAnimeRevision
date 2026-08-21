package g.s;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
final class d implements g.r.a<g.q.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharSequence f4407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4409c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g.p.a.c<CharSequence, Integer, g.f<Integer, Integer>> f4410d;

    public static final class a implements Iterator<g.q.d>, g.p.b.l.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4411b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f4412c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f4413d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private g.q.d f4414e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f4415f;

        a() {
            this.f4412c = g.q.h.a(d.this.f4408b, 0, d.this.f4407a.length());
            this.f4413d = this.f4412c;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final void a() {
            /*
                r6 = this;
                int r0 = r6.f4413d
                r1 = 0
                if (r0 >= 0) goto Lc
                r6.f4411b = r1
                r0 = 0
                r6.f4414e = r0
                goto L9d
            Lc:
                g.s.d r0 = g.s.d.this
                int r0 = g.s.d.c(r0)
                r2 = -1
                r3 = 1
                if (r0 <= 0) goto L25
                int r0 = r6.f4415f
                int r0 = r0 + r3
                r6.f4415f = r0
                int r0 = r6.f4415f
                g.s.d r4 = g.s.d.this
                int r4 = g.s.d.c(r4)
                if (r0 >= r4) goto L33
            L25:
                int r0 = r6.f4413d
                g.s.d r4 = g.s.d.this
                java.lang.CharSequence r4 = g.s.d.b(r4)
                int r4 = r4.length()
                if (r0 <= r4) goto L49
            L33:
                int r0 = r6.f4412c
                g.q.d r1 = new g.q.d
                g.s.d r4 = g.s.d.this
                java.lang.CharSequence r4 = g.s.d.b(r4)
                int r4 = g.s.n.c(r4)
                r1.<init>(r0, r4)
            L44:
                r6.f4414e = r1
            L46:
                r6.f4413d = r2
                goto L9b
            L49:
                g.s.d r0 = g.s.d.this
                g.p.a.c r0 = g.s.d.a(r0)
                g.s.d r4 = g.s.d.this
                java.lang.CharSequence r4 = g.s.d.b(r4)
                int r5 = r6.f4413d
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r0 = r0.a(r4, r5)
                g.f r0 = (g.f) r0
                if (r0 != 0) goto L75
                int r0 = r6.f4412c
                g.q.d r1 = new g.q.d
                g.s.d r4 = g.s.d.this
                java.lang.CharSequence r4 = g.s.d.b(r4)
                int r4 = g.s.n.c(r4)
                r1.<init>(r0, r4)
                goto L44
            L75:
                java.lang.Object r2 = r0.a()
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                java.lang.Object r0 = r0.b()
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r4 = r6.f4412c
                g.q.d r4 = g.q.e.d(r4, r2)
                r6.f4414e = r4
                int r2 = r2 + r0
                r6.f4412c = r2
                int r2 = r6.f4412c
                if (r0 != 0) goto L99
                r1 = 1
            L99:
                int r2 = r2 + r1
                goto L46
            L9b:
                r6.f4411b = r3
            L9d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: g.s.d.a.a():void");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f4411b == -1) {
                a();
            }
            return this.f4411b == 1;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public g.q.d next() {
            if (this.f4411b == -1) {
                a();
            }
            if (this.f4411b == 0) {
                throw new NoSuchElementException();
            }
            g.q.d dVar = this.f4414e;
            if (dVar == null) {
                throw new g.j("null cannot be cast to non-null type kotlin.ranges.IntRange");
            }
            this.f4414e = null;
            this.f4411b = -1;
            return dVar;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(CharSequence charSequence, int i2, int i3, g.p.a.c<? super CharSequence, ? super Integer, g.f<Integer, Integer>> cVar) {
        g.p.b.f.b(charSequence, "input");
        g.p.b.f.b(cVar, "getNextMatch");
        this.f4407a = charSequence;
        this.f4408b = i2;
        this.f4409c = i3;
        this.f4410d = cVar;
    }

    @Override // g.r.a
    public Iterator<g.q.d> iterator() {
        return new a();
    }
}
