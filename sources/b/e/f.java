package b.e;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class f<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    f<K, V>.b f2274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    f<K, V>.c f2275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    f<K, V>.e f2276c;

    final class a<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f2277b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2278c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2279d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f2280e = false;

        a(int i2) {
            this.f2277b = i2;
            this.f2278c = f.this.c();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2279d < this.f2278c;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) f.this.a(this.f2279d, this.f2277b);
            this.f2279d++;
            this.f2280e = true;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f2280e) {
                throw new IllegalStateException();
            }
            this.f2279d--;
            this.f2278c--;
            this.f2280e = false;
            f.this.a(this.f2279d);
        }
    }

    final class b implements Set<Map.Entry<K, V>> {
        b() {
        }

        public boolean a(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public /* bridge */ /* synthetic */ boolean add(Object obj) {
            a((Map.Entry) obj);
            throw null;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int iC = f.this.c();
            for (Map.Entry<K, V> entry : collection) {
                f.this.a(entry.getKey(), entry.getValue());
            }
            return iC != f.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iA = f.this.a(entry.getKey());
            if (iA < 0) {
                return false;
            }
            return b.e.c.a(f.this.a(iA, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return f.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iC = f.this.c() - 1; iC >= 0; iC--) {
                Object objA = f.this.a(iC, 0);
                Object objA2 = f.this.a(iC, 1);
                iHashCode += (objA == null ? 0 : objA.hashCode()) ^ (objA2 == null ? 0 : objA2.hashCode());
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return f.this.c() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return f.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    final class c implements Set<K> {
        c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return f.this.a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return f.a((Map) f.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return f.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iC = f.this.c() - 1; iC >= 0; iC--) {
                Object objA = f.this.a(iC, 0);
                iHashCode += objA == null ? 0 : objA.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return f.this.c() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iA = f.this.a(obj);
            if (iA < 0) {
                return false;
            }
            f.this.a(iA);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return f.b(f.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return f.c(f.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return f.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return f.this.b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) f.this.a(tArr, 0);
        }
    }

    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2284b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f2286d = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2285c = -1;

        d() {
            this.f2284b = f.this.c() - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.f2286d) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return b.e.c.a(entry.getKey(), f.this.a(this.f2285c, 0)) && b.e.c.a(entry.getValue(), f.this.a(this.f2285c, 1));
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f2286d) {
                return (K) f.this.a(this.f2285c, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f2286d) {
                return (V) f.this.a(this.f2285c, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2285c < this.f2284b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.f2286d) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objA = f.this.a(this.f2285c, 0);
            Object objA2 = f.this.a(this.f2285c, 1);
            return (objA == null ? 0 : objA.hashCode()) ^ (objA2 != null ? objA2.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            next();
            return this;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f2285c++;
            this.f2286d = true;
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f2286d) {
                throw new IllegalStateException();
            }
            f.this.a(this.f2285c);
            this.f2285c--;
            this.f2284b--;
            this.f2286d = false;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f2286d) {
                return (V) f.this.a(this.f2285c, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    final class e implements Collection<V> {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            f.this.a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return f.this.b(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return f.this.c() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int iB = f.this.b(obj);
            if (iB < 0) {
                return false;
            }
            f.this.a(iB);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int iC = f.this.c();
            int i2 = 0;
            boolean z = false;
            while (i2 < iC) {
                if (collection.contains(f.this.a(i2, 1))) {
                    f.this.a(i2);
                    i2--;
                    iC--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int iC = f.this.c();
            int i2 = 0;
            boolean z = false;
            while (i2 < iC) {
                if (!collection.contains(f.this.a(i2, 1))) {
                    f.this.a(i2);
                    i2--;
                    iC--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return f.this.c();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return f.this.b(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) f.this.a(tArr, 1);
        }
    }

    f() {
    }

    public static <K, V> boolean a(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean a(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <K, V> boolean b(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean c(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    protected abstract int a(Object obj);

    protected abstract Object a(int i2, int i3);

    protected abstract V a(int i2, V v);

    protected abstract void a();

    protected abstract void a(int i2);

    protected abstract void a(K k2, V v);

    public <T> T[] a(T[] tArr, int i2) {
        int iC = c();
        if (tArr.length < iC) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iC));
        }
        for (int i3 = 0; i3 < iC; i3++) {
            tArr[i3] = a(i3, i2);
        }
        if (tArr.length > iC) {
            tArr[iC] = null;
        }
        return tArr;
    }

    protected abstract int b(Object obj);

    protected abstract Map<K, V> b();

    public Object[] b(int i2) {
        int iC = c();
        Object[] objArr = new Object[iC];
        for (int i3 = 0; i3 < iC; i3++) {
            objArr[i3] = a(i3, i2);
        }
        return objArr;
    }

    protected abstract int c();

    public Set<Map.Entry<K, V>> d() {
        if (this.f2274a == null) {
            this.f2274a = new b();
        }
        return this.f2274a;
    }

    public Set<K> e() {
        if (this.f2275b == null) {
            this.f2275b = new c();
        }
        return this.f2275b;
    }

    public Collection<V> f() {
        if (this.f2276c == null) {
            this.f2276c = new e();
        }
        return this.f2276c;
    }
}
