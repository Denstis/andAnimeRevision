package b.b.a.b;

import b.b.a.b.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a<K, V> extends b<K, V> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HashMap<K, b.c<K, V>> f2233f = new HashMap<>();

    @Override // b.b.a.b.b
    protected b.c<K, V> a(K k2) {
        return this.f2233f.get(k2);
    }

    @Override // b.b.a.b.b
    public V b(K k2, V v) {
        b.c<K, V> cVarA = a(k2);
        if (cVarA != null) {
            return cVarA.f2239c;
        }
        this.f2233f.put(k2, a(k2, v));
        return null;
    }

    public Map.Entry<K, V> b(K k2) {
        if (contains(k2)) {
            return this.f2233f.get(k2).f2241e;
        }
        return null;
    }

    public boolean contains(K k2) {
        return this.f2233f.containsKey(k2);
    }

    @Override // b.b.a.b.b
    public V remove(K k2) {
        V v = (V) super.remove(k2);
        this.f2233f.remove(k2);
        return v;
    }
}
