package i;

/* JADX INFO: loaded from: classes.dex */
final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static o f5034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static long f5035b;

    private p() {
    }

    static o a() {
        synchronized (p.class) {
            if (f5034a == null) {
                return new o();
            }
            o oVar = f5034a;
            f5034a = oVar.f5032f;
            oVar.f5032f = null;
            f5035b -= 8192;
            return oVar;
        }
    }

    static void a(o oVar) {
        if (oVar.f5032f != null || oVar.f5033g != null) {
            throw new IllegalArgumentException();
        }
        if (oVar.f5030d) {
            return;
        }
        synchronized (p.class) {
            if (f5035b + 8192 > 65536) {
                return;
            }
            f5035b += 8192;
            oVar.f5032f = f5034a;
            oVar.f5029c = 0;
            oVar.f5028b = 0;
            f5034a = oVar;
        }
    }
}
