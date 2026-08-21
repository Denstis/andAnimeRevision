package g.p.b;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
final class a<T> implements Iterator<T>, g.p.b.l.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final T[] f4386c;

    public a(T[] tArr) {
        f.b(tArr, "array");
        this.f4386c = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4385b < this.f4386c.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.f4386c;
            int i2 = this.f4385b;
            this.f4385b = i2 + 1;
            return tArr[i2];
        } catch (ArrayIndexOutOfBoundsException e2) {
            this.f4385b--;
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
