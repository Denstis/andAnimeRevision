package h.h0.e;

import h.a0;
import h.c0;
import h.h0.g.e;
import h.s;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a0 f4547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c0 f4548b;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f4549a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final a0 f4550b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final c0 f4551c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Date f4552d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f4553e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Date f4554f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f4555g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Date f4556h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f4557i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f4558j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f4559k;
        private int l;

        public a(long j2, a0 a0Var, c0 c0Var) {
            this.l = -1;
            this.f4549a = j2;
            this.f4550b = a0Var;
            this.f4551c = c0Var;
            if (c0Var != null) {
                this.f4557i = c0Var.u();
                this.f4558j = c0Var.s();
                s sVarN = c0Var.n();
                int iB = sVarN.b();
                for (int i2 = 0; i2 < iB; i2++) {
                    String strA = sVarN.a(i2);
                    String strB = sVarN.b(i2);
                    if ("Date".equalsIgnoreCase(strA)) {
                        this.f4552d = h.h0.g.d.a(strB);
                        this.f4553e = strB;
                    } else if ("Expires".equalsIgnoreCase(strA)) {
                        this.f4556h = h.h0.g.d.a(strB);
                    } else if ("Last-Modified".equalsIgnoreCase(strA)) {
                        this.f4554f = h.h0.g.d.a(strB);
                        this.f4555g = strB;
                    } else if ("ETag".equalsIgnoreCase(strA)) {
                        this.f4559k = strB;
                    } else if ("Age".equalsIgnoreCase(strA)) {
                        this.l = e.a(strB, -1);
                    }
                }
            }
        }

        private static boolean a(a0 a0Var) {
            return (a0Var.a("If-Modified-Since") == null && a0Var.a("If-None-Match") == null) ? false : true;
        }

        private long b() {
            Date date = this.f4552d;
            long jMax = date != null ? Math.max(0L, this.f4558j - date.getTime()) : 0L;
            int i2 = this.l;
            if (i2 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i2));
            }
            long j2 = this.f4558j;
            return jMax + (j2 - this.f4557i) + (this.f4549a - j2);
        }

        private long c() {
            if (this.f4551c.k().d() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.d());
            }
            if (this.f4556h != null) {
                Date date = this.f4552d;
                long time = this.f4556h.getTime() - (date != null ? date.getTime() : this.f4558j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f4554f == null || this.f4551c.t().g().l() != null) {
                return 0L;
            }
            Date date2 = this.f4552d;
            long time2 = (date2 != null ? date2.getTime() : this.f4557i) - this.f4554f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        private c d() {
            if (this.f4551c == null) {
                return new c(this.f4550b, null);
            }
            if ((!this.f4550b.d() || this.f4551c.m() != null) && c.a(this.f4551c, this.f4550b)) {
                h.d dVarB = this.f4550b.b();
                if (dVarB.h() || a(this.f4550b)) {
                    return new c(this.f4550b, null);
                }
                h.d dVarK = this.f4551c.k();
                if (dVarK.a()) {
                    return new c(null, this.f4551c);
                }
                long jB = b();
                long jC = c();
                if (dVarB.d() != -1) {
                    jC = Math.min(jC, TimeUnit.SECONDS.toMillis(dVarB.d()));
                }
                long millis = 0;
                long millis2 = dVarB.f() != -1 ? TimeUnit.SECONDS.toMillis(dVarB.f()) : 0L;
                if (!dVarK.g() && dVarB.e() != -1) {
                    millis = TimeUnit.SECONDS.toMillis(dVarB.e());
                }
                if (!dVarK.h()) {
                    long j2 = millis2 + jB;
                    if (j2 < millis + jC) {
                        c0.a aVarQ = this.f4551c.q();
                        if (j2 >= jC) {
                            aVarQ.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (jB > 86400000 && e()) {
                            aVarQ.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new c(null, aVarQ.a());
                    }
                }
                String str = this.f4559k;
                String str2 = "If-Modified-Since";
                if (str != null) {
                    str2 = "If-None-Match";
                } else if (this.f4554f != null) {
                    str = this.f4555g;
                } else {
                    if (this.f4552d == null) {
                        return new c(this.f4550b, null);
                    }
                    str = this.f4553e;
                }
                s.a aVarA = this.f4550b.c().a();
                h.h0.a.f4527a.a(aVarA, str2, str);
                a0.a aVarF = this.f4550b.f();
                aVarF.a(aVarA.a());
                return new c(aVarF.a(), this.f4551c);
            }
            return new c(this.f4550b, null);
        }

        private boolean e() {
            return this.f4551c.k().d() == -1 && this.f4556h == null;
        }

        public c a() {
            c cVarD = d();
            return (cVarD.f4547a == null || !this.f4550b.b().j()) ? cVarD : new c(null, null);
        }
    }

    c(a0 a0Var, c0 c0Var) {
        this.f4547a = a0Var;
        this.f4548b = c0Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.k().b() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(h.c0 r3, h.a0 r4) {
        /*
            int r0 = r3.l()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L5a
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L5a
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L5a
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L5a
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L5a
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L5a
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L5a
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L5a
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L5a
            switch(r0) {
                case 300: goto L5a;
                case 301: goto L5a;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L59
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.b(r0)
            if (r0 != 0) goto L5a
            h.d r0 = r3.k()
            int r0 = r0.d()
            r1 = -1
            if (r0 != r1) goto L5a
            h.d r0 = r3.k()
            boolean r0 = r0.c()
            if (r0 != 0) goto L5a
            h.d r0 = r3.k()
            boolean r0 = r0.b()
            if (r0 == 0) goto L59
            goto L5a
        L59:
            return r2
        L5a:
            h.d r3 = r3.k()
            boolean r3 = r3.i()
            if (r3 != 0) goto L6f
            h.d r3 = r4.b()
            boolean r3 = r3.i()
            if (r3 != 0) goto L6f
            r2 = 1
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: h.h0.e.c.a(h.c0, h.a0):boolean");
    }
}
