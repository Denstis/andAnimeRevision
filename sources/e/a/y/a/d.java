package e.a.y.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d implements e.a.v.b, a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<e.a.v.b> f4137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile boolean f4138c;

    void a(List<e.a.v.b> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = null;
        Iterator<e.a.v.b> it = list.iterator();
        while (it.hasNext()) {
            try {
                it.next().b();
            } catch (Throwable th) {
                e.a.w.b.b(th);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th);
            }
        }
        if (arrayList != null) {
            if (arrayList.size() != 1) {
                throw new e.a.w.a(arrayList);
            }
            throw e.a.y.h.b.a((Throwable) arrayList.get(0));
        }
    }

    @Override // e.a.v.b
    public boolean a() {
        return this.f4138c;
    }

    @Override // e.a.y.a.a
    public boolean a(e.a.v.b bVar) {
        if (!c(bVar)) {
            return false;
        }
        bVar.b();
        return true;
    }

    @Override // e.a.v.b
    public void b() {
        if (this.f4138c) {
            return;
        }
        synchronized (this) {
            if (this.f4138c) {
                return;
            }
            this.f4138c = true;
            List<e.a.v.b> list = this.f4137b;
            this.f4137b = null;
            a(list);
        }
    }

    @Override // e.a.y.a.a
    public boolean b(e.a.v.b bVar) {
        e.a.y.b.b.a(bVar, "d is null");
        if (!this.f4138c) {
            synchronized (this) {
                if (!this.f4138c) {
                    List linkedList = this.f4137b;
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                        this.f4137b = linkedList;
                    }
                    linkedList.add(bVar);
                    return true;
                }
            }
        }
        bVar.b();
        return false;
    }

    @Override // e.a.y.a.a
    public boolean c(e.a.v.b bVar) {
        e.a.y.b.b.a(bVar, "Disposable item is null");
        if (this.f4138c) {
            return false;
        }
        synchronized (this) {
            if (this.f4138c) {
                return false;
            }
            List<e.a.v.b> list = this.f4137b;
            if (list != null && list.remove(bVar)) {
                return true;
            }
            return false;
        }
    }
}
