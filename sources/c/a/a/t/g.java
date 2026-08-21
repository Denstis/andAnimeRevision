package c.a.a.t;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class g<T, Y> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<T, Y> f3326a = new LinkedHashMap(100, 0.75f, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f3327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3328c;

    public g(long j2) {
        this.f3327b = j2;
    }

    private void c() {
        a(this.f3327b);
    }

    public synchronized Y a(T t) {
        return this.f3326a.get(t);
    }

    public void a() {
        a(0L);
    }

    protected synchronized void a(long j2) {
        while (this.f3328c > j2) {
            Iterator<Map.Entry<T, Y>> it = this.f3326a.entrySet().iterator();
            Map.Entry<T, Y> next = it.next();
            Y value = next.getValue();
            this.f3328c -= (long) b(value);
            T key = next.getKey();
            it.remove();
            a(key, value);
        }
    }

    protected void a(T t, Y y) {
    }

    protected int b(Y y) {
        return 1;
    }

    public synchronized long b() {
        return this.f3327b;
    }

    public synchronized Y b(T t, Y y) {
        long jB = b(y);
        if (jB >= this.f3327b) {
            a(t, y);
            return null;
        }
        if (y != null) {
            this.f3328c += jB;
        }
        Y yPut = this.f3326a.put(t, y);
        if (yPut != null) {
            this.f3328c -= (long) b(yPut);
            if (!yPut.equals(y)) {
                a(t, yPut);
            }
        }
        c();
        return yPut;
    }

    public synchronized Y c(T t) {
        Y yRemove;
        yRemove = this.f3326a.remove(t);
        if (yRemove != null) {
            this.f3328c -= (long) b(yRemove);
        }
        return yRemove;
    }
}
