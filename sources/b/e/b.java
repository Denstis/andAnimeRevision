package b.e;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class b<E> implements Collection<E>, Set<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f2255f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Object[] f2256g = new Object[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Object[] f2257h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static int f2258i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Object[] f2259j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int f2260k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f2261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object[] f2262c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2263d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f<E, E> f2264e;

    class a extends f<E, E> {
        a() {
        }

        @Override // b.e.f
        protected int a(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // b.e.f
        protected Object a(int i2, int i3) {
            return b.this.f2262c[i2];
        }

        @Override // b.e.f
        protected E a(int i2, E e2) {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // b.e.f
        protected void a() {
            b.this.clear();
        }

        @Override // b.e.f
        protected void a(int i2) {
            b.this.b(i2);
        }

        @Override // b.e.f
        protected void a(E e2, E e3) {
            b.this.add(e2);
        }

        @Override // b.e.f
        protected int b(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // b.e.f
        protected Map<E, E> b() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // b.e.f
        protected int c() {
            return b.this.f2263d;
        }
    }

    public b() {
        this(0);
    }

    public b(int i2) {
        if (i2 == 0) {
            this.f2261b = f2255f;
            this.f2262c = f2256g;
        } else {
            d(i2);
        }
        this.f2263d = 0;
    }

    private int a(Object obj, int i2) {
        int i3 = this.f2263d;
        if (i3 == 0) {
            return -1;
        }
        int iA = c.a(this.f2261b, i3, i2);
        if (iA < 0 || obj.equals(this.f2262c[iA])) {
            return iA;
        }
        int i4 = iA + 1;
        while (i4 < i3 && this.f2261b[i4] == i2) {
            if (obj.equals(this.f2262c[i4])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iA - 1; i5 >= 0 && this.f2261b[i5] == i2; i5--) {
            if (obj.equals(this.f2262c[i5])) {
                return i5;
            }
        }
        return i4 ^ (-1);
    }

    private f<E, E> a() {
        if (this.f2264e == null) {
            this.f2264e = new a();
        }
        return this.f2264e;
    }

    private static void a(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (f2260k < 10) {
                    objArr[0] = f2259j;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f2259j = objArr;
                    f2260k++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (b.class) {
                if (f2258i < 10) {
                    objArr[0] = f2257h;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f2257h = objArr;
                    f2258i++;
                }
            }
        }
    }

    private int b() {
        int i2 = this.f2263d;
        if (i2 == 0) {
            return -1;
        }
        int iA = c.a(this.f2261b, i2, 0);
        if (iA < 0 || this.f2262c[iA] == null) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.f2261b[i3] == 0) {
            if (this.f2262c[i3] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.f2261b[i4] == 0; i4--) {
            if (this.f2262c[i4] == null) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    private void d(int i2) {
        if (i2 == 8) {
            synchronized (b.class) {
                if (f2259j != null) {
                    Object[] objArr = f2259j;
                    this.f2262c = objArr;
                    f2259j = (Object[]) objArr[0];
                    this.f2261b = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f2260k--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (b.class) {
                if (f2257h != null) {
                    Object[] objArr2 = f2257h;
                    this.f2262c = objArr2;
                    f2257h = (Object[]) objArr2[0];
                    this.f2261b = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f2258i--;
                    return;
                }
            }
        }
        this.f2261b = new int[i2];
        this.f2262c = new Object[i2];
    }

    public void a(int i2) {
        int[] iArr = this.f2261b;
        if (iArr.length < i2) {
            Object[] objArr = this.f2262c;
            d(i2);
            int i3 = this.f2263d;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.f2261b, 0, i3);
                System.arraycopy(objArr, 0, this.f2262c, 0, this.f2263d);
            }
            a(iArr, objArr, this.f2263d);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e2) {
        int i2;
        int iA;
        if (e2 == null) {
            iA = b();
            i2 = 0;
        } else {
            int iHashCode = e2.hashCode();
            i2 = iHashCode;
            iA = a(e2, iHashCode);
        }
        if (iA >= 0) {
            return false;
        }
        int i3 = iA ^ (-1);
        int i4 = this.f2263d;
        if (i4 >= this.f2261b.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f2261b;
            Object[] objArr = this.f2262c;
            d(i5);
            int[] iArr2 = this.f2261b;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f2262c, 0, objArr.length);
            }
            a(iArr, objArr, this.f2263d);
        }
        int i6 = this.f2263d;
        if (i3 < i6) {
            int[] iArr3 = this.f2261b;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f2262c;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f2263d - i3);
        }
        this.f2261b[i3] = i2;
        this.f2262c[i3] = e2;
        this.f2263d++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        a(this.f2263d + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public E b(int i2) {
        Object[] objArr = this.f2262c;
        E e2 = (E) objArr[i2];
        int i3 = this.f2263d;
        if (i3 <= 1) {
            a(this.f2261b, objArr, i3);
            this.f2261b = f2255f;
            this.f2262c = f2256g;
            this.f2263d = 0;
        } else {
            int[] iArr = this.f2261b;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                this.f2263d--;
                int i4 = this.f2263d;
                if (i2 < i4) {
                    int[] iArr2 = this.f2261b;
                    int i5 = i2 + 1;
                    System.arraycopy(iArr2, i5, iArr2, i2, i4 - i2);
                    Object[] objArr2 = this.f2262c;
                    System.arraycopy(objArr2, i5, objArr2, i2, this.f2263d - i2);
                }
                this.f2262c[this.f2263d] = null;
            } else {
                int i6 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr3 = this.f2261b;
                Object[] objArr3 = this.f2262c;
                d(i6);
                this.f2263d--;
                if (i2 > 0) {
                    System.arraycopy(iArr3, 0, this.f2261b, 0, i2);
                    System.arraycopy(objArr3, 0, this.f2262c, 0, i2);
                }
                int i7 = this.f2263d;
                if (i2 < i7) {
                    int i8 = i2 + 1;
                    System.arraycopy(iArr3, i8, this.f2261b, i2, i7 - i2);
                    System.arraycopy(objArr3, i8, this.f2262c, i2, this.f2263d - i2);
                }
            }
        }
        return e2;
    }

    public E c(int i2) {
        return (E) this.f2262c[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.f2263d;
        if (i2 != 0) {
            a(this.f2261b, this.f2262c, i2);
            this.f2261b = f2255f;
            this.f2262c = f2256g;
            this.f2263d = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f2263d; i2++) {
                try {
                    if (!set.contains(c(i2))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f2261b;
        int i2 = this.f2263d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public int indexOf(Object obj) {
        return obj == null ? b() : a(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f2263d <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return a().e().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        b(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i2 = this.f2263d - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f2262c[i2])) {
                b(i2);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f2263d;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i2 = this.f2263d;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f2262c, 0, objArr, 0, i2);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f2263d) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f2263d));
        }
        System.arraycopy(this.f2262c, 0, tArr, 0, this.f2263d);
        int length = tArr.length;
        int i2 = this.f2263d;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2263d * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f2263d; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E eC = c(i2);
            if (eC != this) {
                sb.append(eC);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
