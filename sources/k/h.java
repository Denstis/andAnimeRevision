package k;

/* JADX INFO: loaded from: classes.dex */
public class h extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final transient m<?> f5061b;

    public h(m<?> mVar) {
        super(a(mVar));
        mVar.b();
        mVar.e();
        this.f5061b = mVar;
    }

    private static String a(m<?> mVar) {
        p.a(mVar, "response == null");
        return "HTTP " + mVar.b() + " " + mVar.e();
    }

    public m<?> a() {
        return this.f5061b;
    }
}
