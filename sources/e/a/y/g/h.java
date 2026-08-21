package e.a.y.g;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class h extends a implements Callable<Void> {
    public h(Runnable runnable) {
        super(runnable);
    }

    @Override // java.util.concurrent.Callable
    public Void call() {
        this.f4281c = Thread.currentThread();
        try {
            this.f4280b.run();
            return null;
        } finally {
            lazySet(a.f4278d);
            this.f4281c = null;
        }
    }
}
