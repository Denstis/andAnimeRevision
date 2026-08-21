package b.h.n;

/* JADX INFO: loaded from: classes.dex */
public class e<T> implements d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f2559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2560b;

    public e(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f2559a = new Object[i2];
    }

    private boolean b(T t) {
        for (int i2 = 0; i2 < this.f2560b; i2++) {
            if (this.f2559a[i2] == t) {
                return true;
            }
        }
        return false;
    }

    @Override // b.h.n.d
    public T a() {
        int i2 = this.f2560b;
        if (i2 <= 0) {
            return null;
        }
        int i3 = i2 - 1;
        Object[] objArr = this.f2559a;
        T t = (T) objArr[i3];
        objArr[i3] = null;
        this.f2560b = i2 - 1;
        return t;
    }

    @Override // b.h.n.d
    public boolean a(T t) {
        if (b(t)) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i2 = this.f2560b;
        Object[] objArr = this.f2559a;
        if (i2 >= objArr.length) {
            return false;
        }
        objArr[i2] = t;
        this.f2560b = i2 + 1;
        return true;
    }
}
