package e.a.y.a;

import e.a.m;
import e.a.q;

/* JADX INFO: loaded from: classes.dex */
public enum c implements e.a.y.c.d<Object> {
    INSTANCE,
    NEVER;

    public static void a(m<?> mVar) {
        mVar.a((e.a.v.b) INSTANCE);
        mVar.onComplete();
    }

    public static void a(Throwable th, m<?> mVar) {
        mVar.a((e.a.v.b) INSTANCE);
        mVar.a(th);
    }

    public static void a(Throwable th, q<?> qVar) {
        qVar.a(INSTANCE);
        qVar.a(th);
    }

    @Override // e.a.y.c.e
    public int a(int i2) {
        return i2 & 2;
    }

    @Override // e.a.v.b
    public boolean a() {
        return this == INSTANCE;
    }

    @Override // e.a.v.b
    public void b() {
    }

    @Override // e.a.y.c.h
    public boolean b(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // e.a.y.c.h
    public Object c() {
        return null;
    }

    @Override // e.a.y.c.h
    public void clear() {
    }

    @Override // e.a.y.c.h
    public boolean isEmpty() {
        return true;
    }
}
