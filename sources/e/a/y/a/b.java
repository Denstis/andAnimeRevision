package e.a.y.a;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public enum b implements e.a.v.b {
    DISPOSED;

    public static boolean a(e.a.v.b bVar) {
        return bVar == DISPOSED;
    }

    public static boolean a(e.a.v.b bVar, e.a.v.b bVar2) {
        if (bVar2 == null) {
            e.a.a0.a.b(new NullPointerException("next is null"));
            return false;
        }
        if (bVar == null) {
            return true;
        }
        bVar2.b();
        c();
        return false;
    }

    public static boolean a(AtomicReference<e.a.v.b> atomicReference) {
        e.a.v.b andSet;
        e.a.v.b bVar = atomicReference.get();
        b bVar2 = DISPOSED;
        if (bVar == bVar2 || (andSet = atomicReference.getAndSet(bVar2)) == bVar2) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.b();
        return true;
    }

    public static boolean a(AtomicReference<e.a.v.b> atomicReference, e.a.v.b bVar) {
        e.a.v.b bVar2;
        do {
            bVar2 = atomicReference.get();
            if (bVar2 == DISPOSED) {
                if (bVar == null) {
                    return false;
                }
                bVar.b();
                return false;
            }
        } while (!atomicReference.compareAndSet(bVar2, bVar));
        return true;
    }

    public static boolean b(AtomicReference<e.a.v.b> atomicReference, e.a.v.b bVar) {
        e.a.v.b bVar2;
        do {
            bVar2 = atomicReference.get();
            if (bVar2 == DISPOSED) {
                if (bVar == null) {
                    return false;
                }
                bVar.b();
                return false;
            }
        } while (!atomicReference.compareAndSet(bVar2, bVar));
        if (bVar2 == null) {
            return true;
        }
        bVar2.b();
        return true;
    }

    public static void c() {
        e.a.a0.a.b(new e.a.w.d("Disposable already set!"));
    }

    public static boolean c(AtomicReference<e.a.v.b> atomicReference, e.a.v.b bVar) {
        e.a.y.b.b.a(bVar, "d is null");
        if (atomicReference.compareAndSet(null, bVar)) {
            return true;
        }
        bVar.b();
        if (atomicReference.get() == DISPOSED) {
            return false;
        }
        c();
        return false;
    }

    @Override // e.a.v.b
    public boolean a() {
        return true;
    }

    @Override // e.a.v.b
    public void b() {
    }
}
