package g.r;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class h<T, R> implements g.r.a<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g.r.a<T> f4402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g.p.a.b<T, R> f4403b;

    public static final class a implements Iterator<R>, g.p.b.l.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Iterator<T> f4404b;

        a() {
            this.f4404b = h.this.f4402a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4404b.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) h.this.f4403b.a(this.f4404b.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(g.r.a<? extends T> aVar, g.p.a.b<? super T, ? extends R> bVar) {
        g.p.b.f.b(aVar, "sequence");
        g.p.b.f.b(bVar, "transformer");
        this.f4402a = aVar;
        this.f4403b = bVar;
    }

    @Override // g.r.a
    public Iterator<R> iterator() {
        return new a();
    }
}
