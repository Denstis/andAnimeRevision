package c.b.a.c;

import c.b.a.c.e;
import java.lang.ref.WeakReference;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes.dex */
public class d<V extends e> implements c<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Queue<a<V>> f3349a = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference<V> f3350b;

    public interface a<V> {
        void a(V v);
    }

    private void b() {
        WeakReference<V> weakReference = this.f3350b;
        V v = weakReference == null ? null : weakReference.get();
        if (v != null) {
            while (!this.f3349a.isEmpty()) {
                this.f3349a.poll().a(v);
            }
        }
    }

    @Override // c.b.a.c.c
    public void a() {
        this.f3350b.clear();
    }

    protected final void a(a<V> aVar) {
        this.f3349a.add(aVar);
        b();
    }

    @Override // c.b.a.c.c
    public void a(V v) {
        this.f3350b = new WeakReference<>(v);
        b();
    }

    @Override // c.b.a.c.c
    public void destroy() {
        this.f3349a.clear();
    }
}
