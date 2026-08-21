package b.b.a.b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    c<K, V> f2234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c<K, V> f2235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakHashMap<f<K, V>, Boolean> f2236d = new WeakHashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2237e = 0;

    static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // b.b.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f2241e;
        }

        @Override // b.b.a.b.b.e
        c<K, V> c(c<K, V> cVar) {
            return cVar.f2240d;
        }
    }

    /* JADX INFO: renamed from: b.b.a.b.b$b, reason: collision with other inner class name */
    private static class C0096b<K, V> extends e<K, V> {
        C0096b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // b.b.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f2240d;
        }

        @Override // b.b.a.b.b.e
        c<K, V> c(c<K, V> cVar) {
            return cVar.f2241e;
        }
    }

    static class c<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final K f2238b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final V f2239c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c<K, V> f2240d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        c<K, V> f2241e;

        c(K k2, V v) {
            this.f2238b = k2;
            this.f2239c = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f2238b.equals(cVar.f2238b) && this.f2239c.equals(cVar.f2239c);
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f2238b;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f2239c;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f2238b.hashCode() ^ this.f2239c.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f2238b + "=" + this.f2239c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private c<K, V> f2242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2243c = true;

        d() {
        }

        @Override // b.b.a.b.b.f
        public void a(c<K, V> cVar) {
            c<K, V> cVar2 = this.f2242b;
            if (cVar == cVar2) {
                this.f2242b = cVar2.f2241e;
                this.f2243c = this.f2242b == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f2243c) {
                return b.this.f2234b != null;
            }
            c<K, V> cVar = this.f2242b;
            return (cVar == null || cVar.f2240d == null) ? false : true;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            c<K, V> cVar;
            if (this.f2243c) {
                this.f2243c = false;
                cVar = b.this.f2234b;
            } else {
                c<K, V> cVar2 = this.f2242b;
                cVar = cVar2 != null ? cVar2.f2240d : null;
            }
            this.f2242b = cVar;
            return this.f2242b;
        }
    }

    private static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        c<K, V> f2245b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        c<K, V> f2246c;

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f2245b = cVar2;
            this.f2246c = cVar;
        }

        private c<K, V> a() {
            c<K, V> cVar = this.f2246c;
            c<K, V> cVar2 = this.f2245b;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return c(cVar);
        }

        @Override // b.b.a.b.b.f
        public void a(c<K, V> cVar) {
            if (this.f2245b == cVar && cVar == this.f2246c) {
                this.f2246c = null;
                this.f2245b = null;
            }
            c<K, V> cVar2 = this.f2245b;
            if (cVar2 == cVar) {
                this.f2245b = b(cVar2);
            }
            if (this.f2246c == cVar) {
                this.f2246c = a();
            }
        }

        abstract c<K, V> b(c<K, V> cVar);

        abstract c<K, V> c(c<K, V> cVar);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2246c != null;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f2246c;
            this.f2246c = a();
            return cVar;
        }
    }

    interface f<K, V> {
        void a(c<K, V> cVar);
    }

    protected c<K, V> a(K k2) {
        c<K, V> cVar = this.f2234b;
        while (cVar != null && !cVar.f2238b.equals(k2)) {
            cVar = cVar.f2240d;
        }
        return cVar;
    }

    protected c<K, V> a(K k2, V v) {
        c<K, V> cVar = new c<>(k2, v);
        this.f2237e++;
        c<K, V> cVar2 = this.f2235c;
        if (cVar2 == null) {
            this.f2234b = cVar;
            this.f2235c = this.f2234b;
            return cVar;
        }
        cVar2.f2240d = cVar;
        cVar.f2241e = cVar2;
        this.f2235c = cVar;
        return cVar;
    }

    public Iterator<Map.Entry<K, V>> a() {
        C0096b c0096b = new C0096b(this.f2235c, this.f2234b);
        this.f2236d.put(c0096b, false);
        return c0096b;
    }

    public V b(K k2, V v) {
        c<K, V> cVarA = a(k2);
        if (cVarA != null) {
            return cVarA.f2239c;
        }
        a(k2, v);
        return null;
    }

    public Map.Entry<K, V> b() {
        return this.f2234b;
    }

    public b<K, V>.d c() {
        b<K, V>.d dVar = new d();
        this.f2236d.put(dVar, false);
        return dVar;
    }

    public Map.Entry<K, V> d() {
        return this.f2235c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += it.next().hashCode();
        }
        return iHashCode;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f2234b, this.f2235c);
        this.f2236d.put(aVar, false);
        return aVar;
    }

    public V remove(K k2) {
        c<K, V> cVarA = a(k2);
        if (cVarA == null) {
            return null;
        }
        this.f2237e--;
        if (!this.f2236d.isEmpty()) {
            Iterator<f<K, V>> it = this.f2236d.keySet().iterator();
            while (it.hasNext()) {
                it.next().a(cVarA);
            }
        }
        c<K, V> cVar = cVarA.f2241e;
        if (cVar != null) {
            cVar.f2240d = cVarA.f2240d;
        } else {
            this.f2234b = cVarA.f2240d;
        }
        c<K, V> cVar2 = cVarA.f2240d;
        if (cVar2 != null) {
            cVar2.f2241e = cVarA.f2241e;
        } else {
            this.f2235c = cVarA.f2241e;
        }
        cVarA.f2240d = null;
        cVarA.f2241e = null;
        return cVarA.f2239c;
    }

    public int size() {
        return this.f2237e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
