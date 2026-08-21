package b.e;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a<K, V> extends g<K, V> implements Map<K, V> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    f<K, V> f2253i;

    /* JADX INFO: renamed from: b.e.a$a, reason: collision with other inner class name */
    class C0098a extends f<K, V> {
        C0098a() {
        }

        @Override // b.e.f
        protected int a(Object obj) {
            return a.this.a(obj);
        }

        @Override // b.e.f
        protected Object a(int i2, int i3) {
            return a.this.f2294c[(i2 << 1) + i3];
        }

        @Override // b.e.f
        protected V a(int i2, V v) {
            return a.this.a(i2, v);
        }

        @Override // b.e.f
        protected void a() {
            a.this.clear();
        }

        @Override // b.e.f
        protected void a(int i2) {
            a.this.c(i2);
        }

        @Override // b.e.f
        protected void a(K k2, V v) {
            a.this.put(k2, v);
        }

        @Override // b.e.f
        protected int b(Object obj) {
            return a.this.b(obj);
        }

        @Override // b.e.f
        protected Map<K, V> b() {
            return a.this;
        }

        @Override // b.e.f
        protected int c() {
            return a.this.f2295d;
        }
    }

    public a() {
    }

    public a(int i2) {
        super(i2);
    }

    public a(g gVar) {
        super(gVar);
    }

    private f<K, V> b() {
        if (this.f2253i == null) {
            this.f2253i = new C0098a();
        }
        return this.f2253i;
    }

    public boolean a(Collection<?> collection) {
        return f.c(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return b().d();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return b().e();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        a(this.f2295d + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return b().f();
    }
}
