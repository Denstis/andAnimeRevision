package g.m;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class a<E> implements Collection<E>, g.p.b.l.a {

    /* JADX INFO: renamed from: g.m.a$a, reason: collision with other inner class name */
    static final class C0184a extends g.p.b.g implements g.p.a.b<E, CharSequence> {
        C0184a() {
            super(1);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // g.p.a.b
        public final CharSequence a(E e2) {
            return e2 == a.this ? "(this Collection)" : String.valueOf(e2);
        }
    }

    protected a() {
    }

    public abstract int a();

    @Override // java.util.Collection
    public boolean add(E e2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        if (isEmpty()) {
            return false;
        }
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (g.p.b.f.a(it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        g.p.b.f.b(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return a();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return g.p.b.c.a(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        g.p.b.f.b(tArr, "array");
        T[] tArr2 = (T[]) g.p.b.c.a(this, tArr);
        if (tArr2 != null) {
            return tArr2;
        }
        throw new g.j("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public String toString() {
        return t.a(this, ", ", "[", "]", 0, null, new C0184a(), 24, null);
    }
}
