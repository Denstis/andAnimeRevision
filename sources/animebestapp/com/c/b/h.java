package animebestapp.com.c.b;

import k.n;

/* JADX INFO: loaded from: classes.dex */
public final class h implements d.c.b<animebestapp.com.e.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f1497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f.a.a<n> f1498b;

    public h(g gVar, f.a.a<n> aVar) {
        this.f1497a = gVar;
        this.f1498b = aVar;
    }

    public static h a(g gVar, f.a.a<n> aVar) {
        return new h(gVar, aVar);
    }

    public static animebestapp.com.e.a a(g gVar, n nVar) {
        animebestapp.com.e.a aVarA = gVar.a(nVar);
        d.c.d.a(aVarA, "Cannot return null from a non-@Nullable @Provides method");
        return aVarA;
    }

    public static animebestapp.com.e.a b(g gVar, f.a.a<n> aVar) {
        return a(gVar, aVar.get());
    }

    @Override // f.a.a
    public animebestapp.com.e.a get() {
        return b(this.f1497a, this.f1498b);
    }
}
