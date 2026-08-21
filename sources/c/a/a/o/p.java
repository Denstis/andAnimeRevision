package c.a.a.o;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class p implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<c.a.a.r.j.h<?>> f3238b = Collections.newSetFromMap(new WeakHashMap());

    public void a(c.a.a.r.j.h<?> hVar) {
        this.f3238b.add(hVar);
    }

    public void b() {
        this.f3238b.clear();
    }

    public void b(c.a.a.r.j.h<?> hVar) {
        this.f3238b.remove(hVar);
    }

    public List<c.a.a.r.j.h<?>> c() {
        return c.a.a.t.k.a(this.f3238b);
    }

    @Override // c.a.a.o.i
    public void onDestroy() {
        Iterator it = c.a.a.t.k.a(this.f3238b).iterator();
        while (it.hasNext()) {
            ((c.a.a.r.j.h) it.next()).onDestroy();
        }
    }

    @Override // c.a.a.o.i
    public void onStart() {
        Iterator it = c.a.a.t.k.a(this.f3238b).iterator();
        while (it.hasNext()) {
            ((c.a.a.r.j.h) it.next()).onStart();
        }
    }

    @Override // c.a.a.o.i
    public void onStop() {
        Iterator it = c.a.a.t.k.a(this.f3238b).iterator();
        while (it.hasNext()) {
            ((c.a.a.r.j.h) it.next()).onStop();
        }
    }
}
