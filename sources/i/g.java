package i;

/* JADX INFO: loaded from: classes.dex */
public abstract class g implements r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f5002b;

    public g(r rVar) {
        if (rVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f5002b = rVar;
    }

    @Override // i.r
    public t b() {
        return this.f5002b.b();
    }

    @Override // i.r
    public void b(c cVar, long j2) {
        this.f5002b.b(cVar, j2);
    }

    @Override // i.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5002b.close();
    }

    @Override // i.r, java.io.Flushable
    public void flush() {
        this.f5002b.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f5002b.toString() + ")";
    }
}
