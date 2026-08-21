package e.a.y.h;

/* JADX INFO: loaded from: classes.dex */
public final class c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final float f4353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f4354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f4355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f4356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    T[] f4357e;

    public c() {
        this(16, 0.75f);
    }

    public c(int i2, float f2) {
        this.f4353a = f2;
        int iA = d.a(i2);
        this.f4354b = iA - 1;
        this.f4356d = (int) (f2 * iA);
        this.f4357e = (T[]) new Object[iA];
    }

    static int a(int i2) {
        int i3 = i2 * (-1640531527);
        return i3 ^ (i3 >>> 16);
    }

    boolean a(int i2, T[] tArr, int i3) {
        int i4;
        T t;
        this.f4355c--;
        while (true) {
            int i5 = i2 + 1;
            while (true) {
                i4 = i5 & i3;
                t = tArr[i4];
                if (t == null) {
                    tArr[i2] = null;
                    return true;
                }
                int iA = a(t.hashCode()) & i3;
                if (i2 <= i4) {
                    if (i2 >= iA || iA > i4) {
                        break;
                    }
                    i5 = i4 + 1;
                } else if (i2 < iA || iA <= i4) {
                    i5 = i4 + 1;
                }
            }
            tArr[i2] = t;
            i2 = i4;
        }
    }

    public boolean a(T t) {
        T t2;
        T[] tArr = this.f4357e;
        int i2 = this.f4354b;
        int iA = a(t.hashCode()) & i2;
        T t3 = tArr[iA];
        if (t3 != null) {
            if (t3.equals(t)) {
                return false;
            }
            do {
                iA = (iA + 1) & i2;
                t2 = tArr[iA];
                if (t2 == null) {
                }
            } while (!t2.equals(t));
            return false;
        }
        tArr[iA] = t;
        int i3 = this.f4355c + 1;
        this.f4355c = i3;
        if (i3 >= this.f4356d) {
            b();
        }
        return true;
    }

    public Object[] a() {
        return this.f4357e;
    }

    void b() {
        T[] tArr = this.f4357e;
        int length = tArr.length;
        int i2 = length << 1;
        int i3 = i2 - 1;
        T[] tArr2 = (T[]) new Object[i2];
        int i4 = this.f4355c;
        while (true) {
            int i5 = i4 - 1;
            if (i4 == 0) {
                this.f4354b = i3;
                this.f4356d = (int) (i2 * this.f4353a);
                this.f4357e = tArr2;
                return;
            }
            do {
                length--;
            } while (tArr[length] == null);
            int iA = a(tArr[length].hashCode()) & i3;
            if (tArr2[iA] != null) {
                do {
                    iA = (iA + 1) & i3;
                } while (tArr2[iA] != null);
            }
            tArr2[iA] = tArr[length];
            i4 = i5;
        }
    }

    public boolean b(T t) {
        T t2;
        T[] tArr = this.f4357e;
        int i2 = this.f4354b;
        int iA = a(t.hashCode()) & i2;
        T t3 = tArr[iA];
        if (t3 == null) {
            return false;
        }
        if (t3.equals(t)) {
            return a(iA, tArr, i2);
        }
        do {
            iA = (iA + 1) & i2;
            t2 = tArr[iA];
            if (t2 == null) {
                return false;
            }
        } while (!t2.equals(t));
        return a(iA, tArr, i2);
    }
}
