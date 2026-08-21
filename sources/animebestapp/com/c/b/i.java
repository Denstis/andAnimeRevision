package animebestapp.com.c.b;

import h.x;

/* JADX INFO: loaded from: classes.dex */
public final class i implements d.c.b<x> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f1499a;

    public i(g gVar) {
        this.f1499a = gVar;
    }

    public static i a(g gVar) {
        return new i(gVar);
    }

    public static x b(g gVar) {
        return c(gVar);
    }

    public static x c(g gVar) {
        x xVarA = gVar.a();
        d.c.d.a(xVarA, "Cannot return null from a non-@Nullable @Provides method");
        return xVarA;
    }

    @Override // f.a.a
    public x get() {
        return b(this.f1499a);
    }
}
