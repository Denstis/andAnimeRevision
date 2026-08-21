package animebestapp.com.c.a;

/* JADX INFO: loaded from: classes.dex */
public final class d implements d.c.b<animebestapp.com.d.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f1479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f.a.a<animebestapp.com.b.b.a> f1480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f.a.a<animebestapp.com.e.b> f1481c;

    public d(c cVar, f.a.a<animebestapp.com.b.b.a> aVar, f.a.a<animebestapp.com.e.b> aVar2) {
        this.f1479a = cVar;
        this.f1480b = aVar;
        this.f1481c = aVar2;
    }

    public static d a(c cVar, f.a.a<animebestapp.com.b.b.a> aVar, f.a.a<animebestapp.com.e.b> aVar2) {
        return new d(cVar, aVar, aVar2);
    }

    public static animebestapp.com.d.a a(c cVar, animebestapp.com.b.b.a aVar, animebestapp.com.e.b bVar) {
        animebestapp.com.d.a aVarA = cVar.a(aVar, bVar);
        d.c.d.a(aVarA, "Cannot return null from a non-@Nullable @Provides method");
        return aVarA;
    }

    public static animebestapp.com.d.a b(c cVar, f.a.a<animebestapp.com.b.b.a> aVar, f.a.a<animebestapp.com.e.b> aVar2) {
        return a(cVar, aVar.get(), aVar2.get());
    }

    @Override // f.a.a
    public animebestapp.com.d.a get() {
        return b(this.f1479a, this.f1480b, this.f1481c);
    }
}
