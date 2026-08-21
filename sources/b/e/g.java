package b.e;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class g<K, V> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static Object[] f2289e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static int f2290f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static Object[] f2291g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static int f2292h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f2293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object[] f2294c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2295d;

    public g() {
        this.f2293b = c.f2266a;
        this.f2294c = c.f2268c;
        this.f2295d = 0;
    }

    public g(int i2) {
        if (i2 == 0) {
            this.f2293b = c.f2266a;
            this.f2294c = c.f2268c;
        } else {
            e(i2);
        }
        this.f2295d = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(g<K, V> gVar) {
        this();
        if (gVar != 0) {
            a((g) gVar);
        }
    }

    private static int a(int[] iArr, int i2, int i3) {
        try {
            return c.a(iArr, i2, i3);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private static void a(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (a.class) {
                if (f2292h < 10) {
                    objArr[0] = f2291g;
                    objArr[1] = iArr;
                    for (int i3 = (i2 << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f2291g = objArr;
                    f2292h++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (a.class) {
                if (f2290f < 10) {
                    objArr[0] = f2289e;
                    objArr[1] = iArr;
                    for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f2289e = objArr;
                    f2290f++;
                }
            }
        }
    }

    private void e(int i2) {
        if (i2 == 8) {
            synchronized (a.class) {
                if (f2291g != null) {
                    Object[] objArr = f2291g;
                    this.f2294c = objArr;
                    f2291g = (Object[]) objArr[0];
                    this.f2293b = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f2292h--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (a.class) {
                if (f2289e != null) {
                    Object[] objArr2 = f2289e;
                    this.f2294c = objArr2;
                    f2289e = (Object[]) objArr2[0];
                    this.f2293b = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f2290f--;
                    return;
                }
            }
        }
        this.f2293b = new int[i2];
        this.f2294c = new Object[i2 << 1];
    }

    int a() {
        int i2 = this.f2295d;
        if (i2 == 0) {
            return -1;
        }
        int iA = a(this.f2293b, i2, 0);
        if (iA < 0 || this.f2294c[iA << 1] == null) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.f2293b[i3] == 0) {
            if (this.f2294c[i3 << 1] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.f2293b[i4] == 0; i4--) {
            if (this.f2294c[i4 << 1] == null) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    public int a(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    int a(Object obj, int i2) {
        int i3 = this.f2295d;
        if (i3 == 0) {
            return -1;
        }
        int iA = a(this.f2293b, i3, i2);
        if (iA < 0 || obj.equals(this.f2294c[iA << 1])) {
            return iA;
        }
        int i4 = iA + 1;
        while (i4 < i3 && this.f2293b[i4] == i2) {
            if (obj.equals(this.f2294c[i4 << 1])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iA - 1; i5 >= 0 && this.f2293b[i5] == i2; i5--) {
            if (obj.equals(this.f2294c[i5 << 1])) {
                return i5;
            }
        }
        return i4 ^ (-1);
    }

    public V a(int i2, V v) {
        int i3 = (i2 << 1) + 1;
        Object[] objArr = this.f2294c;
        V v2 = (V) objArr[i3];
        objArr[i3] = v;
        return v2;
    }

    public void a(int i2) {
        int i3 = this.f2295d;
        int[] iArr = this.f2293b;
        if (iArr.length < i2) {
            Object[] objArr = this.f2294c;
            e(i2);
            if (this.f2295d > 0) {
                System.arraycopy(iArr, 0, this.f2293b, 0, i3);
                System.arraycopy(objArr, 0, this.f2294c, 0, i3 << 1);
            }
            a(iArr, objArr, i3);
        }
        if (this.f2295d != i3) {
            throw new ConcurrentModificationException();
        }
    }

    public void a(g<? extends K, ? extends V> gVar) {
        int i2 = gVar.f2295d;
        a(this.f2295d + i2);
        if (this.f2295d != 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                put(gVar.b(i3), gVar.d(i3));
            }
        } else if (i2 > 0) {
            System.arraycopy(gVar.f2293b, 0, this.f2293b, 0, i2);
            System.arraycopy(gVar.f2294c, 0, this.f2294c, 0, i2 << 1);
            this.f2295d = i2;
        }
    }

    int b(Object obj) {
        int i2 = this.f2295d * 2;
        Object[] objArr = this.f2294c;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
            return -1;
        }
        for (int i4 = 1; i4 < i2; i4 += 2) {
            if (obj.equals(objArr[i4])) {
                return i4 >> 1;
            }
        }
        return -1;
    }

    public K b(int i2) {
        return (K) this.f2294c[i2 << 1];
    }

    public V c(int i2) {
        int i3;
        Object[] objArr = this.f2294c;
        int i4 = i2 << 1;
        V v = (V) objArr[i4 + 1];
        int i5 = this.f2295d;
        if (i5 <= 1) {
            a(this.f2293b, objArr, i5);
            this.f2293b = c.f2266a;
            this.f2294c = c.f2268c;
            i3 = 0;
        } else {
            i3 = i5 - 1;
            int[] iArr = this.f2293b;
            if (iArr.length <= 8 || i5 >= iArr.length / 3) {
                if (i2 < i3) {
                    int[] iArr2 = this.f2293b;
                    int i6 = i2 + 1;
                    int i7 = i3 - i2;
                    System.arraycopy(iArr2, i6, iArr2, i2, i7);
                    Object[] objArr2 = this.f2294c;
                    System.arraycopy(objArr2, i6 << 1, objArr2, i4, i7 << 1);
                }
                Object[] objArr3 = this.f2294c;
                int i8 = i3 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            } else {
                int i9 = i5 > 8 ? i5 + (i5 >> 1) : 8;
                int[] iArr3 = this.f2293b;
                Object[] objArr4 = this.f2294c;
                e(i9);
                if (i5 != this.f2295d) {
                    throw new ConcurrentModificationException();
                }
                if (i2 > 0) {
                    System.arraycopy(iArr3, 0, this.f2293b, 0, i2);
                    System.arraycopy(objArr4, 0, this.f2294c, 0, i4);
                }
                if (i2 < i3) {
                    int i10 = i2 + 1;
                    int i11 = i3 - i2;
                    System.arraycopy(iArr3, i10, this.f2293b, i2, i11);
                    System.arraycopy(objArr4, i10 << 1, this.f2294c, i4, i11 << 1);
                }
            }
        }
        if (i5 != this.f2295d) {
            throw new ConcurrentModificationException();
        }
        this.f2295d = i3;
        return v;
    }

    public void clear() {
        int i2 = this.f2295d;
        if (i2 > 0) {
            int[] iArr = this.f2293b;
            Object[] objArr = this.f2294c;
            this.f2293b = c.f2266a;
            this.f2294c = c.f2268c;
            this.f2295d = 0;
            a(iArr, objArr, i2);
        }
        if (this.f2295d > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return a(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return b(obj) >= 0;
    }

    public V d(int i2) {
        return (V) this.f2294c[(i2 << 1) + 1];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (size() != gVar.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f2295d; i2++) {
                try {
                    K kB = b(i2);
                    V vD = d(i2);
                    Object obj2 = gVar.get(kB);
                    if (vD == null) {
                        if (obj2 != null || !gVar.containsKey(kB)) {
                            return false;
                        }
                    } else if (!vD.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i3 = 0; i3 < this.f2295d; i3++) {
                try {
                    K kB2 = b(i3);
                    V vD2 = d(i3);
                    Object obj3 = map.get(kB2);
                    if (vD2 == null) {
                        if (obj3 != null || !map.containsKey(kB2)) {
                            return false;
                        }
                    } else if (!vD2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public V get(Object obj) {
        int iA = a(obj);
        if (iA >= 0) {
            return (V) this.f2294c[(iA << 1) + 1];
        }
        return null;
    }

    public int hashCode() {
        int[] iArr = this.f2293b;
        Object[] objArr = this.f2294c;
        int i2 = this.f2295d;
        int i3 = 0;
        int iHashCode = 0;
        int i4 = 1;
        while (i3 < i2) {
            Object obj = objArr[i4];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i4 += 2;
        }
        return iHashCode;
    }

    public boolean isEmpty() {
        return this.f2295d <= 0;
    }

    public V put(K k2, V v) {
        int i2;
        int iA;
        int i3 = this.f2295d;
        if (k2 == null) {
            iA = a();
            i2 = 0;
        } else {
            int iHashCode = k2.hashCode();
            i2 = iHashCode;
            iA = a(k2, iHashCode);
        }
        if (iA >= 0) {
            int i4 = (iA << 1) + 1;
            Object[] objArr = this.f2294c;
            V v2 = (V) objArr[i4];
            objArr[i4] = v;
            return v2;
        }
        int i5 = iA ^ (-1);
        if (i3 >= this.f2293b.length) {
            int i6 = 4;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.f2293b;
            Object[] objArr2 = this.f2294c;
            e(i6);
            if (i3 != this.f2295d) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f2293b;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f2294c, 0, objArr2.length);
            }
            a(iArr, objArr2, i3);
        }
        if (i5 < i3) {
            int[] iArr3 = this.f2293b;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f2294c;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f2295d - i5) << 1);
        }
        int i8 = this.f2295d;
        if (i3 == i8) {
            int[] iArr4 = this.f2293b;
            if (i5 < iArr4.length) {
                iArr4[i5] = i2;
                Object[] objArr4 = this.f2294c;
                int i9 = i5 << 1;
                objArr4[i9] = k2;
                objArr4[i9 + 1] = v;
                this.f2295d = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V remove(Object obj) {
        int iA = a(obj);
        if (iA >= 0) {
            return c(iA);
        }
        return null;
    }

    public int size() {
        return this.f2295d;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2295d * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f2295d; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            K kB = b(i2);
            if (kB != this) {
                sb.append(kB);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vD = d(i2);
            if (vD != this) {
                sb.append(vD);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
