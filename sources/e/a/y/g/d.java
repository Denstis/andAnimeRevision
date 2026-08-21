package e.a.y.g;

import e.a.n;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final class d extends n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final g f4314b = new g("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ThreadFactory f4315a;

    public d() {
        this(f4314b);
    }

    public d(ThreadFactory threadFactory) {
        this.f4315a = threadFactory;
    }

    @Override // e.a.n
    public n.b a() {
        return new e(this.f4315a);
    }
}
