package animebestapp.com.ui.info.e.a;

import animebestapp.com.models.Anime;
import c.b.a.c.d;
import e.a.t;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class c extends animebestapp.com.ui.a.c<e> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f1737d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Anime f1738e;

    static final class a<V> implements d.a<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f1739a = new a();

        a() {
        }

        @Override // c.b.a.c.d.a
        public final void a(e eVar) {
            g.p.b.f.b(eVar, "it");
            eVar.a();
        }
    }

    static final class b<T> implements e.a.x.d<List<? extends Anime>> {

        static final class a<V> implements d.a<e> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f1741a;

            a(List list) {
                this.f1741a = list;
            }

            @Override // c.b.a.c.d.a
            public final void a(e eVar) {
                g.p.b.f.b(eVar, "it");
                eVar.a((Anime) this.f1741a.get(0));
            }
        }

        /* JADX INFO: renamed from: animebestapp.com.ui.info.e.a.c$b$b, reason: collision with other inner class name */
        static final class C0054b<V> implements d.a<e> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final C0054b f1742a = new C0054b();

            C0054b() {
            }

            @Override // c.b.a.c.d.a
            public final void a(e eVar) {
                g.p.b.f.b(eVar, "it");
                eVar.b();
            }
        }

        b() {
        }

        @Override // e.a.x.d
        public /* bridge */ /* synthetic */ void a(List<? extends Anime> list) {
            a2((List<Anime>) list);
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2(List<Anime> list) {
            c.this.a(new a(list));
            c.this.a(C0054b.f1742a);
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.info.e.a.c$c, reason: collision with other inner class name */
    static final class C0055c<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: animebestapp.com.ui.info.e.a.c$c$a */
        static final class a<V> implements d.a<e> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f1744a = new a();

            a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(e eVar) {
                g.p.b.f.b(eVar, "it");
                eVar.b();
            }
        }

        C0055c() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            c.this.a(a.f1744a);
            th.printStackTrace();
        }
    }

    static final class d<V> implements d.a<e> {
        d() {
        }

        @Override // c.b.a.c.d.a
        public final void a(e eVar) {
            g.p.b.f.b(eVar, "it");
            eVar.c(c.this.f1738e);
        }
    }

    public c(Anime anime) {
        g.p.b.f.b(anime, "anime");
        this.f1738e = anime;
    }

    public final void a(long j2) {
        a(a.f1739a);
        animebestapp.com.d.a aVar = this.f1737d;
        if (aVar != null) {
            aVar.a(j2).a((t<? super List<Anime>, ? extends R>) b()).a(new b(), new C0055c<>());
        } else {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        g.p.b.f.b(aVar, "component");
        aVar.a(this);
    }

    public final void e() {
        a(new d());
    }
}
