package b.e;

/* JADX INFO: loaded from: classes.dex */
public class d<E> implements Cloneable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f2269f = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f2271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f2272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2273e;

    public d() {
        this(10);
    }

    public d(int i2) {
        this.f2270b = false;
        if (i2 == 0) {
            this.f2271c = c.f2267b;
            this.f2272d = c.f2268c;
        } else {
            int iC = c.c(i2);
            this.f2271c = new long[iC];
            this.f2272d = new Object[iC];
        }
        this.f2273e = 0;
    }

    private void c() {
        int i2 = this.f2273e;
        long[] jArr = this.f2271c;
        Object[] objArr = this.f2272d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != f2269f) {
                if (i4 != i3) {
                    jArr[i3] = jArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.f2270b = false;
        this.f2273e = i3;
    }

    public long a(int i2) {
        if (this.f2270b) {
            c();
        }
        return this.f2271c[i2];
    }

    public void a() {
        int i2 = this.f2273e;
        Object[] objArr = this.f2272d;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.f2273e = 0;
        this.f2270b = false;
    }

    public void a(long j2) {
        int iA = c.a(this.f2271c, this.f2273e, j2);
        if (iA >= 0) {
            Object[] objArr = this.f2272d;
            Object obj = objArr[iA];
            Object obj2 = f2269f;
            if (obj != obj2) {
                objArr[iA] = obj2;
                this.f2270b = true;
            }
        }
    }

    public void a(long j2, E e2) {
        int i2 = this.f2273e;
        if (i2 != 0 && j2 <= this.f2271c[i2 - 1]) {
            c(j2, e2);
            return;
        }
        if (this.f2270b && this.f2273e >= this.f2271c.length) {
            c();
        }
        int i3 = this.f2273e;
        if (i3 >= this.f2271c.length) {
            int iC = c.c(i3 + 1);
            long[] jArr = new long[iC];
            Object[] objArr = new Object[iC];
            long[] jArr2 = this.f2271c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f2272d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f2271c = jArr;
            this.f2272d = objArr;
        }
        this.f2271c[i3] = j2;
        this.f2272d[i3] = e2;
        this.f2273e = i3 + 1;
    }

    public int b() {
        if (this.f2270b) {
            c();
        }
        return this.f2273e;
    }

    public E b(long j2) {
        return b(j2, null);
    }

    public E b(long j2, E e2) {
        int iA = c.a(this.f2271c, this.f2273e, j2);
        if (iA >= 0) {
            Object[] objArr = this.f2272d;
            if (objArr[iA] != f2269f) {
                return (E) objArr[iA];
            }
        }
        return e2;
    }

    public void b(int i2) {
        Object[] objArr = this.f2272d;
        Object obj = objArr[i2];
        Object obj2 = f2269f;
        if (obj != obj2) {
            objArr[i2] = obj2;
            this.f2270b = true;
        }
    }

    public int c(long j2) {
        if (this.f2270b) {
            c();
        }
        return c.a(this.f2271c, this.f2273e, j2);
    }

    public E c(int i2) {
        if (this.f2270b) {
            c();
        }
        return (E) this.f2272d[i2];
    }

    public void c(long j2, E e2) {
        int iA = c.a(this.f2271c, this.f2273e, j2);
        if (iA >= 0) {
            this.f2272d[iA] = e2;
            return;
        }
        int iA2 = iA ^ (-1);
        if (iA2 < this.f2273e) {
            Object[] objArr = this.f2272d;
            if (objArr[iA2] == f2269f) {
                this.f2271c[iA2] = j2;
                objArr[iA2] = e2;
                return;
            }
        }
        if (this.f2270b && this.f2273e >= this.f2271c.length) {
            c();
            iA2 = c.a(this.f2271c, this.f2273e, j2) ^ (-1);
        }
        int i2 = this.f2273e;
        if (i2 >= this.f2271c.length) {
            int iC = c.c(i2 + 1);
            long[] jArr = new long[iC];
            Object[] objArr2 = new Object[iC];
            long[] jArr2 = this.f2271c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f2272d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f2271c = jArr;
            this.f2272d = objArr2;
        }
        int i3 = this.f2273e;
        if (i3 - iA2 != 0) {
            long[] jArr3 = this.f2271c;
            int i4 = iA2 + 1;
            System.arraycopy(jArr3, iA2, jArr3, i4, i3 - iA2);
            Object[] objArr4 = this.f2272d;
            System.arraycopy(objArr4, iA2, objArr4, i4, this.f2273e - iA2);
        }
        this.f2271c[iA2] = j2;
        this.f2272d[iA2] = e2;
        this.f2273e++;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public d<E> m1clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.f2271c = (long[]) this.f2271c.clone();
            dVar.f2272d = (Object[]) this.f2272d.clone();
            return dVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2273e * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f2273e; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(a(i2));
            sb.append('=');
            E eC = c(i2);
            if (eC != this) {
                sb.append(eC);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
