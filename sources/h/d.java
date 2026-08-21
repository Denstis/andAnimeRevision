package h;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f4471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f4475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f4476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f4477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f4478h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f4479i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f4480j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f4481k;
    private final boolean l;
    String m;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f4482a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f4483b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f4484c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f4485d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f4486e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f4487f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f4488g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f4489h;

        public a a(int i2, TimeUnit timeUnit) {
            if (i2 >= 0) {
                long seconds = timeUnit.toSeconds(i2);
                this.f4485d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i2);
        }

        public d a() {
            return new d(this);
        }

        public a b() {
            this.f4482a = true;
            return this;
        }

        public a c() {
            this.f4487f = true;
            return this;
        }
    }

    static {
        a aVar = new a();
        aVar.b();
        aVar.a();
        a aVar2 = new a();
        aVar2.c();
        aVar2.a(Integer.MAX_VALUE, TimeUnit.SECONDS);
        aVar2.a();
    }

    d(a aVar) {
        this.f4471a = aVar.f4482a;
        this.f4472b = aVar.f4483b;
        this.f4473c = aVar.f4484c;
        this.f4474d = -1;
        this.f4475e = false;
        this.f4476f = false;
        this.f4477g = false;
        this.f4478h = aVar.f4485d;
        this.f4479i = aVar.f4486e;
        this.f4480j = aVar.f4487f;
        this.f4481k = aVar.f4488g;
        this.l = aVar.f4489h;
    }

    private d(boolean z, boolean z2, int i2, int i3, boolean z3, boolean z4, boolean z5, int i4, int i5, boolean z6, boolean z7, boolean z8, String str) {
        this.f4471a = z;
        this.f4472b = z2;
        this.f4473c = i2;
        this.f4474d = i3;
        this.f4475e = z3;
        this.f4476f = z4;
        this.f4477g = z5;
        this.f4478h = i4;
        this.f4479i = i5;
        this.f4480j = z6;
        this.f4481k = z7;
        this.l = z8;
        this.m = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static h.d a(h.s r22) {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h.d.a(h.s):h.d");
    }

    private String k() {
        StringBuilder sb = new StringBuilder();
        if (this.f4471a) {
            sb.append("no-cache, ");
        }
        if (this.f4472b) {
            sb.append("no-store, ");
        }
        if (this.f4473c != -1) {
            sb.append("max-age=");
            sb.append(this.f4473c);
            sb.append(", ");
        }
        if (this.f4474d != -1) {
            sb.append("s-maxage=");
            sb.append(this.f4474d);
            sb.append(", ");
        }
        if (this.f4475e) {
            sb.append("private, ");
        }
        if (this.f4476f) {
            sb.append("public, ");
        }
        if (this.f4477g) {
            sb.append("must-revalidate, ");
        }
        if (this.f4478h != -1) {
            sb.append("max-stale=");
            sb.append(this.f4478h);
            sb.append(", ");
        }
        if (this.f4479i != -1) {
            sb.append("min-fresh=");
            sb.append(this.f4479i);
            sb.append(", ");
        }
        if (this.f4480j) {
            sb.append("only-if-cached, ");
        }
        if (this.f4481k) {
            sb.append("no-transform, ");
        }
        if (this.l) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public boolean a() {
        return this.l;
    }

    public boolean b() {
        return this.f4475e;
    }

    public boolean c() {
        return this.f4476f;
    }

    public int d() {
        return this.f4473c;
    }

    public int e() {
        return this.f4478h;
    }

    public int f() {
        return this.f4479i;
    }

    public boolean g() {
        return this.f4477g;
    }

    public boolean h() {
        return this.f4471a;
    }

    public boolean i() {
        return this.f4472b;
    }

    public boolean j() {
        return this.f4480j;
    }

    public String toString() {
        String str = this.m;
        if (str != null) {
            return str;
        }
        String strK = k();
        this.m = strK;
        return strK;
    }
}
