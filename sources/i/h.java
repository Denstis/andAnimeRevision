package i;

/* JADX INFO: loaded from: classes.dex */
public abstract class h implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s f5003b;

    public h(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f5003b = sVar;
    }

    @Override // i.s
    public long a(c cVar, long j2) {
        return this.f5003b.a(cVar, j2);
    }

    @Override // i.s
    public t b() {
        return this.f5003b.b();
    }

    @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5003b.close();
    }

    public final s i() {
        return this.f5003b;
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f5003b.toString() + ")";
    }
}
