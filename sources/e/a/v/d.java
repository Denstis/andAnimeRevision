package e.a.v;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
abstract class d<T> extends AtomicReference<T> implements b {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d(T t) {
        super(t);
        e.a.y.b.b.a((Object) t, "value is null");
    }

    protected abstract void a(T t);

    @Override // e.a.v.b
    public final boolean a() {
        return get() == null;
    }

    @Override // e.a.v.b
    public final void b() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        a(andSet);
    }
}
