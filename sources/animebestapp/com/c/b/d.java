package animebestapp.com.c.b;

import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
public final class d implements d.c.b<animebestapp.com.b.b.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f1483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f.a.a<Application> f1484b;

    public d(b bVar, f.a.a<Application> aVar) {
        this.f1483a = bVar;
        this.f1484b = aVar;
    }

    public static animebestapp.com.b.b.a a(b bVar, Application application) {
        animebestapp.com.b.b.a aVarA = bVar.a(application);
        d.c.d.a(aVarA, "Cannot return null from a non-@Nullable @Provides method");
        return aVarA;
    }

    public static d a(b bVar, f.a.a<Application> aVar) {
        return new d(bVar, aVar);
    }

    public static animebestapp.com.b.b.a b(b bVar, f.a.a<Application> aVar) {
        return a(bVar, aVar.get());
    }

    @Override // f.a.a
    public animebestapp.com.b.b.a get() {
        return b(this.f1483a, this.f1484b);
    }
}
