package animebestapp.com.ui.nav.h.d.f;

import animebestapp.com.models.e;
import c.b.a.c.d;
import e.a.t;
import g.p.b.f;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b extends animebestapp.com.ui.a.c<d> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f2076d;

    static final class a<T> implements e.a.x.d<HashMap<String, List<? extends e>>> {

        /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.d.f.b$a$a, reason: collision with other inner class name */
        static final class C0084a<V> implements d.a<d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ HashMap f2078a;

            C0084a(HashMap map) {
                this.f2078a = map;
            }

            @Override // c.b.a.c.d.a
            public final void a(d dVar) {
                f.b(dVar, "it");
                HashMap<String, List<e>> map = this.f2078a;
                f.a((Object) map, "items");
                dVar.a(map);
            }
        }

        a() {
        }

        @Override // e.a.x.d
        public /* bridge */ /* synthetic */ void a(HashMap<String, List<? extends e>> map) {
            a2((HashMap<String, List<e>>) map);
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2(HashMap<String, List<e>> map) {
            b.this.a(new C0084a(map));
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.d.f.b$b, reason: collision with other inner class name */
    static final class C0085b<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0085b f2079a = new C0085b();

        C0085b() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        f.b(aVar, "component");
        aVar.a(this);
    }

    public final void e() {
        animebestapp.com.d.a aVar = this.f2076d;
        if (aVar != null) {
            aVar.d().a((t<? super HashMap<String, List<e>>, ? extends R>) b()).a(new a(), C0085b.f2079a);
        } else {
            f.c("mainIteractor");
            throw null;
        }
    }
}
