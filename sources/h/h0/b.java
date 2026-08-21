package h.h0;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final String f4528b;

    public b(String str, Object... objArr) {
        this.f4528b = c.a(str, objArr);
    }

    protected abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f4528b);
        try {
            b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
