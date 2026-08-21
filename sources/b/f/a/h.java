package b.f.a;

/* JADX INFO: loaded from: classes.dex */
class h<T> implements g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f2342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2343b;

    h(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f2342a = new Object[i2];
    }

    @Override // b.f.a.g
    public T a() {
        int i2 = this.f2343b;
        if (i2 <= 0) {
            return null;
        }
        int i3 = i2 - 1;
        Object[] objArr = this.f2342a;
        T t = (T) objArr[i3];
        objArr[i3] = null;
        this.f2343b = i2 - 1;
        return t;
    }

    @Override // b.f.a.g
    public void a(T[] tArr, int i2) {
        if (i2 > tArr.length) {
            i2 = tArr.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            T t = tArr[i3];
            int i4 = this.f2343b;
            Object[] objArr = this.f2342a;
            if (i4 < objArr.length) {
                objArr[i4] = t;
                this.f2343b = i4 + 1;
            }
        }
    }

    @Override // b.f.a.g
    public boolean a(T t) {
        int i2 = this.f2343b;
        Object[] objArr = this.f2342a;
        if (i2 >= objArr.length) {
            return false;
        }
        objArr[i2] = t;
        this.f2343b = i2 + 1;
        return true;
    }
}
