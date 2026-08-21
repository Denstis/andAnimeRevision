package h;

import h.s;

/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t f4431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final s f4433c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b0 f4434d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Object f4435e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile d f4436f;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        t f4437a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f4438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        s.a f4439c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        b0 f4440d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Object f4441e;

        public a() {
            this.f4438b = "GET";
            this.f4439c = new s.a();
        }

        a(a0 a0Var) {
            this.f4437a = a0Var.f4431a;
            this.f4438b = a0Var.f4432b;
            this.f4440d = a0Var.f4434d;
            this.f4441e = a0Var.f4435e;
            this.f4439c = a0Var.f4433c.a();
        }

        public a a(s sVar) {
            this.f4439c = sVar.a();
            return this;
        }

        public a a(t tVar) {
            if (tVar == null) {
                throw new NullPointerException("url == null");
            }
            this.f4437a = tVar;
            return this;
        }

        public a a(String str) {
            this.f4439c.b(str);
            return this;
        }

        public a a(String str, b0 b0Var) {
            if (str == null) {
                throw new NullPointerException("method == null");
            }
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (b0Var != null && !h.h0.g.f.b(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (b0Var != null || !h.h0.g.f.e(str)) {
                this.f4438b = str;
                this.f4440d = b0Var;
                return this;
            }
            throw new IllegalArgumentException("method " + str + " must have a request body.");
        }

        public a a(String str, String str2) {
            this.f4439c.a(str, str2);
            return this;
        }

        public a0 a() {
            if (this.f4437a != null) {
                return new a0(this);
            }
            throw new IllegalStateException("url == null");
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public h.a0.a b(java.lang.String r7) {
            /*
                r6 = this;
                if (r7 == 0) goto L60
                r1 = 1
                r2 = 0
                r4 = 0
                r5 = 3
                java.lang.String r3 = "ws:"
                r0 = r7
                boolean r0 = r0.regionMatches(r1, r2, r3, r4, r5)
                if (r0 == 0) goto L26
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "http:"
                r0.append(r1)
                r1 = 3
            L1a:
                java.lang.String r7 = r7.substring(r1)
                r0.append(r7)
                java.lang.String r7 = r0.toString()
                goto L3f
            L26:
                r1 = 1
                r2 = 0
                r4 = 0
                r5 = 4
                java.lang.String r3 = "wss:"
                r0 = r7
                boolean r0 = r0.regionMatches(r1, r2, r3, r4, r5)
                if (r0 == 0) goto L3f
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "https:"
                r0.append(r1)
                r1 = 4
                goto L1a
            L3f:
                h.t r0 = h.t.d(r7)
                if (r0 == 0) goto L49
                r6.a(r0)
                return r6
            L49:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "unexpected url: "
                r1.append(r2)
                r1.append(r7)
                java.lang.String r7 = r1.toString()
                r0.<init>(r7)
                throw r0
            L60:
                java.lang.NullPointerException r7 = new java.lang.NullPointerException
                java.lang.String r0 = "url == null"
                r7.<init>(r0)
                goto L69
            L68:
                throw r7
            L69:
                goto L68
            */
            throw new UnsupportedOperationException("Method not decompiled: h.a0.a.b(java.lang.String):h.a0$a");
        }

        public a b(String str, String str2) {
            this.f4439c.c(str, str2);
            return this;
        }
    }

    a0(a aVar) {
        this.f4431a = aVar.f4437a;
        this.f4432b = aVar.f4438b;
        this.f4433c = aVar.f4439c.a();
        this.f4434d = aVar.f4440d;
        Object obj = aVar.f4441e;
        this.f4435e = obj == null ? this : obj;
    }

    public b0 a() {
        return this.f4434d;
    }

    public String a(String str) {
        return this.f4433c.a(str);
    }

    public d b() {
        d dVar = this.f4436f;
        if (dVar != null) {
            return dVar;
        }
        d dVarA = d.a(this.f4433c);
        this.f4436f = dVarA;
        return dVarA;
    }

    public s c() {
        return this.f4433c;
    }

    public boolean d() {
        return this.f4431a.h();
    }

    public String e() {
        return this.f4432b;
    }

    public a f() {
        return new a(this);
    }

    public t g() {
        return this.f4431a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f4432b);
        sb.append(", url=");
        sb.append(this.f4431a);
        sb.append(", tag=");
        Object obj = this.f4435e;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
