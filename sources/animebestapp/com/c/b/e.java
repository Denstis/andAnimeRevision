package animebestapp.com.c.b;

/* JADX INFO: loaded from: classes.dex */
public final class e implements d.c.b<animebestapp.com.e.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f1485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f.a.a<animebestapp.com.e.a> f1486b;

    public e(b bVar, f.a.a<animebestapp.com.e.a> aVar) {
        this.f1485a = bVar;
        this.f1486b = aVar;
    }

    public static e a(b bVar, f.a.a<animebestapp.com.e.a> aVar) {
        return new e(bVar, aVar);
    }

    public static animebestapp.com.e.b a(b bVar, animebestapp.com.e.a aVar) {
        animebestapp.com.e.b bVarA = bVar.a(aVar);
        d.c.d.a(bVarA, "Cannot return null from a non-@Nullable @Provides method");
        return bVarA;
    }

    public static animebestapp.com.e.b b(b bVar, f.a.a<animebestapp.com.e.a> aVar) {
        return a(bVar, aVar.get());
    }

    @Override // f.a.a
    public animebestapp.com.e.b get() {
        return b(this.f1485a, this.f1486b);
    }
}
