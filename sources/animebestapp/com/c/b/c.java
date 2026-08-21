package animebestapp.com.c.b;

import com.google.gson.Gson;

/* JADX INFO: loaded from: classes.dex */
public final class c implements d.c.b<Gson> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f1482a;

    public c(b bVar) {
        this.f1482a = bVar;
    }

    public static c a(b bVar) {
        return new c(bVar);
    }

    public static Gson b(b bVar) {
        return c(bVar);
    }

    public static Gson c(b bVar) {
        Gson gsonA = bVar.a();
        d.c.d.a(gsonA, "Cannot return null from a non-@Nullable @Provides method");
        return gsonA;
    }

    @Override // f.a.a
    public Gson get() {
        return b(this.f1482a);
    }
}
