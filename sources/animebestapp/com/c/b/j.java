package animebestapp.com.c.b;

import com.google.gson.Gson;
import h.x;
import k.n;

/* JADX INFO: loaded from: classes.dex */
public final class j implements d.c.b<n> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f1500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f.a.a<x> f1501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f.a.a<Gson> f1502c;

    public j(g gVar, f.a.a<x> aVar, f.a.a<Gson> aVar2) {
        this.f1500a = gVar;
        this.f1501b = aVar;
        this.f1502c = aVar2;
    }

    public static j a(g gVar, f.a.a<x> aVar, f.a.a<Gson> aVar2) {
        return new j(gVar, aVar, aVar2);
    }

    public static n a(g gVar, x xVar, Gson gson) {
        n nVarA = gVar.a(xVar, gson);
        d.c.d.a(nVarA, "Cannot return null from a non-@Nullable @Provides method");
        return nVarA;
    }

    public static n b(g gVar, f.a.a<x> aVar, f.a.a<Gson> aVar2) {
        return a(gVar, aVar.get(), aVar2.get());
    }

    @Override // f.a.a
    public n get() {
        return b(this.f1500a, this.f1501b, this.f1502c);
    }
}
