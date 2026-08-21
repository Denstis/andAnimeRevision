package e.a.y.g;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class g extends AtomicLong implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f4320d;

    static final class a extends Thread implements f {
        a(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public g(String str) {
        this(str, 5, false);
    }

    public g(String str, int i2) {
        this(str, i2, false);
    }

    public g(String str, int i2, boolean z) {
        this.f4318b = str;
        this.f4319c = i2;
        this.f4320d = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        String str = this.f4318b + '-' + incrementAndGet();
        Thread aVar = this.f4320d ? new a(runnable, str) : new Thread(runnable, str);
        aVar.setPriority(this.f4319c);
        aVar.setDaemon(true);
        return aVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public String toString() {
        return "RxThreadFactory[" + this.f4318b + "]";
    }
}
