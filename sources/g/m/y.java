package g.m;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class y implements Iterator<Integer>, g.p.b.l.a {
    public abstract int a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Integer next() {
        return Integer.valueOf(a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
