package animebestapp.com.c.b;

import com.google.gson.Gson;
import h.f0;
import h.i0.a;
import h.k;
import h.x;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
import k.n;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }
    }

    static {
        new a(null);
    }

    public final animebestapp.com.e.a a(n nVar) {
        g.p.b.f.b(nVar, "retrofit");
        Object objA = nVar.a((Class<Object>) animebestapp.com.e.a.class);
        g.p.b.f.a(objA, "retrofit.create(MainApi::class.java)");
        return (animebestapp.com.e.a) objA;
    }

    public final x a() {
        x.b bVar = new x.b();
        k.a aVar = new k.a(k.f4858g);
        aVar.a(true);
        aVar.a(f0.TLS_1_2, f0.TLS_1_1, f0.TLS_1_0);
        aVar.a(h.h.s, h.h.u, h.h.l, h.h.o, h.h.n, h.h.q, h.h.r, h.h.m, h.h.p, h.h.f4521g, h.h.f4520f, h.h.f4523i);
        bVar.a(Collections.singletonList(aVar.a()));
        h.i0.a aVar2 = new h.i0.a();
        aVar2.a(a.EnumC0190a.NONE);
        bVar.a(aVar2);
        bVar.a(true);
        bVar.b(30L, TimeUnit.SECONDS);
        bVar.a(30L, TimeUnit.SECONDS);
        bVar.c(30L, TimeUnit.SECONDS);
        x xVarA = bVar.a();
        g.p.b.f.a((Object) xVarA, "builder.build()");
        return xVarA;
    }

    public final n a(x xVar, Gson gson) {
        g.p.b.f.b(xVar, "okHttpClient");
        g.p.b.f.b(gson, "gson");
        n.b bVar = new n.b();
        bVar.a("https://anirise.org/");
        bVar.a(xVar);
        bVar.a(k.q.a.h.a());
        bVar.a(k.r.a.a.a(gson));
        n nVarA = bVar.a();
        g.p.b.f.a((Object) nVarA, "Retrofit.Builder()\n     …                 .build()");
        return nVarA;
    }
}
