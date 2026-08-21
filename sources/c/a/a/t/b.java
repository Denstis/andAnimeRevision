package c.a.a.t;

/* JADX INFO: loaded from: classes.dex */
public final class b<K, V> extends b.e.a<K, V> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3316j;

    @Override // b.e.g
    public V a(int i2, V v) {
        this.f3316j = 0;
        return (V) super.a(i2, v);
    }

    @Override // b.e.g
    public void a(b.e.g<? extends K, ? extends V> gVar) {
        this.f3316j = 0;
        super.a((b.e.g) gVar);
    }

    @Override // b.e.g
    public V c(int i2) {
        this.f3316j = 0;
        return (V) super.c(i2);
    }

    @Override // b.e.g, java.util.Map
    public void clear() {
        this.f3316j = 0;
        super.clear();
    }

    @Override // b.e.g, java.util.Map
    public int hashCode() {
        if (this.f3316j == 0) {
            this.f3316j = super.hashCode();
        }
        return this.f3316j;
    }

    @Override // b.e.g, java.util.Map
    public V put(K k2, V v) {
        this.f3316j = 0;
        return (V) super.put(k2, v);
    }
}
