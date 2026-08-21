package e.a.v;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class a implements b, e.a.y.a.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    e.a.y.h.c<b> f4125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile boolean f4126c;

    void a(e.a.y.h.c<b> cVar) {
        if (cVar == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : cVar.a()) {
            if (obj instanceof b) {
                try {
                    ((b) obj).b();
                } catch (Throwable th) {
                    e.a.w.b.b(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
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
        return this.f4126c;
    }

    @Override // e.a.y.a.a
    public boolean a(b bVar) {
        if (!c(bVar)) {
            return false;
        }
        bVar.b();
        return true;
    }

    @Override // e.a.v.b
    public void b() {
        if (this.f4126c) {
            return;
        }
        synchronized (this) {
            if (this.f4126c) {
                return;
            }
            this.f4126c = true;
            e.a.y.h.c<b> cVar = this.f4125b;
            this.f4125b = null;
            a(cVar);
        }
    }

    @Override // e.a.y.a.a
    public boolean b(b bVar) {
        e.a.y.b.b.a(bVar, "d is null");
        if (!this.f4126c) {
            synchronized (this) {
                if (!this.f4126c) {
                    e.a.y.h.c<b> cVar = this.f4125b;
                    if (cVar == null) {
                        cVar = new e.a.y.h.c<>();
                        this.f4125b = cVar;
                    }
                    cVar.a(bVar);
                    return true;
                }
            }
        }
        bVar.b();
        return false;
    }

    public void c() {
        if (this.f4126c) {
            return;
        }
        synchronized (this) {
            if (this.f4126c) {
                return;
            }
            e.a.y.h.c<b> cVar = this.f4125b;
            this.f4125b = null;
            a(cVar);
        }
    }

    @Override // e.a.y.a.a
    public boolean c(b bVar) {
        e.a.y.b.b.a(bVar, "Disposable item is null");
        if (this.f4126c) {
            return false;
        }
        synchronized (this) {
            if (this.f4126c) {
                return false;
            }
            e.a.y.h.c<b> cVar = this.f4125b;
            if (cVar != null && cVar.b(bVar)) {
                return true;
            }
            return false;
        }
    }
}
