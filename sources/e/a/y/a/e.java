package e.a.y.a;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class e extends AtomicReference<e.a.v.b> implements e.a.v.b {
    @Override // e.a.v.b
    public boolean a() {
        return b.a(get());
    }

    public boolean a(e.a.v.b bVar) {
        return b.a((AtomicReference<e.a.v.b>) this, bVar);
    }

    @Override // e.a.v.b
    public void b() {
        b.a((AtomicReference<e.a.v.b>) this);
    }
}
