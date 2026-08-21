package animebestapp.com.c.b;

import android.app.Application;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public final animebestapp.com.b.b.a a(Application application) {
        g.p.b.f.b(application, "app");
        return new animebestapp.com.b.b.a(application);
    }

    public final animebestapp.com.e.b a(animebestapp.com.e.a aVar) {
        g.p.b.f.b(aVar, "commonApi");
        return new animebestapp.com.e.b(aVar);
    }

    public final Gson a() {
        Gson gsonCreate = new GsonBuilder().setLenient().create();
        g.p.b.f.a((Object) gsonCreate, "GsonBuilder()\n          …t()\n            .create()");
        return gsonCreate;
    }
}
