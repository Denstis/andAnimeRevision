package c.a.a.o;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class a implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<i> f3203a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3205c;

    a() {
    }

    void a() {
        this.f3205c = true;
        Iterator it = c.a.a.t.k.a(this.f3203a).iterator();
        while (it.hasNext()) {
            ((i) it.next()).onDestroy();
        }
    }

    @Override // c.a.a.o.h
    public void a(i iVar) {
        this.f3203a.add(iVar);
        if (this.f3205c) {
            iVar.onDestroy();
        } else if (this.f3204b) {
            iVar.onStart();
        } else {
            iVar.onStop();
        }
    }

    void b() {
        this.f3204b = true;
        Iterator it = c.a.a.t.k.a(this.f3203a).iterator();
        while (it.hasNext()) {
            ((i) it.next()).onStart();
        }
    }

    @Override // c.a.a.o.h
    public void b(i iVar) {
        this.f3203a.remove(iVar);
    }

    void c() {
        this.f3204b = false;
        Iterator it = c.a.a.t.k.a(this.f3203a).iterator();
        while (it.hasNext()) {
            ((i) it.next()).onStop();
        }
    }
}
