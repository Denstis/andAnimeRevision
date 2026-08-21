package g.m;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<E> extends g.m.a<E> implements List<E>, g.p.b.l.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4369b = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }

        public final int a(Collection<?> collection) {
            g.p.b.f.b(collection, "c");
            Iterator<?> it = collection.iterator();
            int iHashCode = 1;
            while (it.hasNext()) {
                Object next = it.next();
                iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
            }
            return iHashCode;
        }

        public final void a(int i2, int i3) {
            if (i2 < 0 || i2 >= i3) {
                throw new IndexOutOfBoundsException("index: " + i2 + ", size: " + i3);
            }
        }

        public final void a(int i2, int i3, int i4) {
            if (i2 < 0 || i3 > i4) {
                throw new IndexOutOfBoundsException("fromIndex: " + i2 + ", toIndex: " + i3 + ", size: " + i4);
            }
            if (i2 <= i3) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i2 + " > toIndex: " + i3);
        }

        public final boolean a(Collection<?> collection, Collection<?> collection2) {
            g.p.b.f.b(collection, "c");
            g.p.b.f.b(collection2, "other");
            if (collection.size() != collection2.size()) {
                return false;
            }
            Iterator<?> it = collection2.iterator();
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!g.p.b.f.a(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final void b(int i2, int i3) {
            if (i2 < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("index: " + i2 + ", size: " + i3);
            }
        }
    }

    /* JADX INFO: renamed from: g.m.b$b, reason: collision with other inner class name */
    private class C0185b implements Iterator<E>, g.p.b.l.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4370b;

        public C0185b() {
        }

        protected final int a() {
            return this.f4370b;
        }

        protected final void a(int i2) {
            this.f4370b = i2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4370b < b.this.size();
        }

        @Override // java.util.Iterator
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            b bVar = b.this;
            int i2 = this.f4370b;
            this.f4370b = i2 + 1;
            return (E) bVar.get(i2);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private class c extends b<E>.C0185b implements ListIterator<E>, g.p.b.l.a {
        public c(int i2) {
            super();
            b.f4369b.b(i2, b.this.size());
            a(i2);
        }

        @Override // java.util.ListIterator
        public void add(E e2) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return a() > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return a();
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            b bVar = b.this;
            a(a() - 1);
            return (E) bVar.get(a());
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return a() - 1;
        }

        @Override // java.util.ListIterator
        public void set(E e2) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private static final class d<E> extends b<E> implements RandomAccess {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f4373c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final b<E> f4374d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f4375e;

        /* JADX WARN: Multi-variable type inference failed */
        public d(b<? extends E> bVar, int i2, int i3) {
            g.p.b.f.b(bVar, "list");
            this.f4374d = bVar;
            this.f4375e = i2;
            b.f4369b.a(this.f4375e, i3, this.f4374d.size());
            this.f4373c = i3 - this.f4375e;
        }

        @Override // g.m.a
        public int a() {
            return this.f4373c;
        }

        @Override // g.m.b, java.util.List
        public E get(int i2) {
            b.f4369b.a(i2, this.f4373c);
            return this.f4374d.get(this.f4375e + i2);
        }
    }

    protected b() {
    }

    @Override // java.util.List
    public void add(int i2, E e2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i2, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return f4369b.a(this, (Collection<?>) obj);
        }
        return false;
    }

    @Override // java.util.List
    public abstract E get(int i2);

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return f4369b.a(this);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        Iterator<E> it = iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (g.p.b.f.a(it.next(), obj)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new C0185b();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (g.p.b.f.a(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return new c(0);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i2) {
        return new c(i2);
    }

    @Override // java.util.List
    public E remove(int i2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i2, E e2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List<E> subList(int i2, int i3) {
        return new d(this, i2, i3);
    }
}
