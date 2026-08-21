package b.e;

/* JADX INFO: loaded from: classes.dex */
public class h<E> implements Cloneable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f2296f = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f2298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f2299d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2300e;

    public h() {
        this(10);
    }

    public h(int i2) {
        this.f2297b = false;
        if (i2 == 0) {
            this.f2298c = c.f2266a;
            this.f2299d = c.f2268c;
        } else {
            int iB = c.b(i2);
            this.f2298c = new int[iB];
            this.f2299d = new Object[iB];
        }
        this.f2300e = 0;
    }

    private void c() {
        int i2 = this.f2300e;
        int[] iArr = this.f2298c;
        Object[] objArr = this.f2299d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != f2296f) {
                if (i4 != i3) {
                    iArr[i3] = iArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.f2297b = false;
        this.f2300e = i3;
    }

    public int a(E e2) {
        if (this.f2297b) {
            c();
        }
        for (int i2 = 0; i2 < this.f2300e; i2++) {
            if (this.f2299d[i2] == e2) {
                return i2;
            }
        }
        return -1;
    }

    public void a() {
        int i2 = this.f2300e;
        Object[] objArr = this.f2299d;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.f2300e = 0;
        this.f2297b = false;
    }

    public void a(int i2) {
        int iA = c.a(this.f2298c, this.f2300e, i2);
        if (iA >= 0) {
            Object[] objArr = this.f2299d;
            Object obj = objArr[iA];
            Object obj2 = f2296f;
            if (obj != obj2) {
                objArr[iA] = obj2;
                this.f2297b = true;
            }
        }
    }

    public void a(int i2, E e2) {
        int i3 = this.f2300e;
        if (i3 != 0 && i2 <= this.f2298c[i3 - 1]) {
            c(i2, e2);
            return;
        }
        if (this.f2297b && this.f2300e >= this.f2298c.length) {
            c();
        }
        int i4 = this.f2300e;
        if (i4 >= this.f2298c.length) {
            int iB = c.b(i4 + 1);
            int[] iArr = new int[iB];
            Object[] objArr = new Object[iB];
            int[] iArr2 = this.f2298c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f2299d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f2298c = iArr;
            this.f2299d = objArr;
        }
        this.f2298c[i4] = i2;
        this.f2299d[i4] = e2;
        this.f2300e = i4 + 1;
    }

    public int b() {
        if (this.f2297b) {
            c();
        }
        return this.f2300e;
    }

    public E b(int i2) {
        return b(i2, null);
    }

    public E b(int i2, E e2) {
        int iA = c.a(this.f2298c, this.f2300e, i2);
        if (iA >= 0) {
            Object[] objArr = this.f2299d;
            if (objArr[iA] != f2296f) {
                return (E) objArr[iA];
            }
        }
        return e2;
    }

    public int c(int i2) {
        if (this.f2297b) {
            c();
        }
        return c.a(this.f2298c, this.f2300e, i2);
    }

    public void c(int i2, E e2) {
        int iA = c.a(this.f2298c, this.f2300e, i2);
        if (iA >= 0) {
            this.f2299d[iA] = e2;
            return;
        }
        int iA2 = iA ^ (-1);
        if (iA2 < this.f2300e) {
            Object[] objArr = this.f2299d;
            if (objArr[iA2] == f2296f) {
                this.f2298c[iA2] = i2;
                objArr[iA2] = e2;
                return;
            }
        }
        if (this.f2297b && this.f2300e >= this.f2298c.length) {
            c();
            iA2 = c.a(this.f2298c, this.f2300e, i2) ^ (-1);
        }
        int i3 = this.f2300e;
        if (i3 >= this.f2298c.length) {
            int iB = c.b(i3 + 1);
            int[] iArr = new int[iB];
            Object[] objArr2 = new Object[iB];
            int[] iArr2 = this.f2298c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f2299d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f2298c = iArr;
            this.f2299d = objArr2;
        }
        int i4 = this.f2300e;
        if (i4 - iA2 != 0) {
            int[] iArr3 = this.f2298c;
            int i5 = iA2 + 1;
            System.arraycopy(iArr3, iA2, iArr3, i5, i4 - iA2);
            Object[] objArr4 = this.f2299d;
            System.arraycopy(objArr4, iA2, objArr4, i5, this.f2300e - iA2);
        }
        this.f2298c[iA2] = i2;
        this.f2299d[iA2] = e2;
        this.f2300e++;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public h<E> m2clone() {
        try {
            h<E> hVar = (h) super.clone();
            hVar.f2298c = (int[]) this.f2298c.clone();
            hVar.f2299d = (Object[]) this.f2299d.clone();
            return hVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public int d(int i2) {
        if (this.f2297b) {
            c();
        }
        return this.f2298c[i2];
    }

    public void e(int i2) {
        a(i2);
    }

    public E f(int i2) {
        if (this.f2297b) {
            c();
        }
        return (E) this.f2299d[i2];
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2300e * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f2300e; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(d(i2));
            sb.append('=');
            E eF = f(i2);
            if (eF != this) {
                sb.append(eF);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
