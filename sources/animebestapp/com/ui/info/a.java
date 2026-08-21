package animebestapp.com.ui.info;

import animebestapp.com.models.Anime;
import animebestapp.com.utils.i;
import c.b.a.c.d;
import e.a.t;
import g.l;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.c<animebestapp.com.ui.info.c> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.b.b.a f1706d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public animebestapp.com.d.a f1707e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private animebestapp.com.models.g f1708f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f1709g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Anime f1710h;

    /* JADX INFO: renamed from: animebestapp.com.ui.info.a$a, reason: collision with other inner class name */
    static final class C0048a<V> implements d.a<animebestapp.com.ui.info.c> {
        C0048a() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.c cVar) {
            g.p.b.f.b(cVar, "it");
            cVar.a(a.this.g().a(a.this.f1710h));
        }
    }

    static final class b<V> implements d.a<animebestapp.com.ui.info.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f1712a = new b();

        b() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.c cVar) {
            g.p.b.f.b(cVar, "it");
            cVar.d();
        }
    }

    static final class c<T> implements e.a.x.d<l> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1714b;

        /* JADX INFO: renamed from: animebestapp.com.ui.info.a$c$a, reason: collision with other inner class name */
        static final class C0049a<V> implements d.a<animebestapp.com.ui.info.c> {
            C0049a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.info.c cVar) {
                g.p.b.f.b(cVar, "it");
                cVar.f(c.this.f1714b);
            }
        }

        c(String str) {
            this.f1714b = str;
        }

        @Override // e.a.x.d
        public final void a(l lVar) {
            a.this.f1709g = this.f1714b;
            a.this.a(new C0049a());
        }
    }

    static final class d<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: animebestapp.com.ui.info.a$d$a, reason: collision with other inner class name */
        static final class C0050a<V> implements d.a<animebestapp.com.ui.info.c> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Throwable f1717a;

            C0050a(Throwable th) {
                this.f1717a = th;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.info.c cVar) {
                g.p.b.f.b(cVar, "it");
                String message = this.f1717a.getMessage();
                if (message != null) {
                    cVar.a(message);
                } else {
                    g.p.b.f.a();
                    throw null;
                }
            }
        }

        d() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            if (th instanceof i) {
                a.this.a(new C0050a(th));
            }
            th.printStackTrace();
        }
    }

    static final class e<V> implements d.a<animebestapp.com.ui.info.c> {
        e() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.c cVar) {
            g.p.b.f.b(cVar, "it");
            cVar.d(a.this.f1710h);
        }
    }

    static final class f<T> implements e.a.x.d<animebestapp.com.models.b> {

        /* JADX INFO: renamed from: animebestapp.com.ui.info.a$f$a, reason: collision with other inner class name */
        static final class C0051a<V> implements d.a<animebestapp.com.ui.info.c> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ animebestapp.com.models.b f1720a;

            C0051a(animebestapp.com.models.b bVar) {
                this.f1720a = bVar;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.info.c cVar) {
                g.p.b.f.b(cVar, "it");
                cVar.f(String.valueOf(this.f1720a.a()));
            }
        }

        f() {
        }

        @Override // e.a.x.d
        public final void a(animebestapp.com.models.b bVar) {
            if (bVar != null) {
                a.this.f1709g = String.valueOf(bVar.a());
                a.this.a(new C0051a(bVar));
            }
        }
    }

    static final class g<V> implements d.a<animebestapp.com.ui.info.c> {
        g() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.c cVar) {
            g.p.b.f.b(cVar, "it");
            cVar.b(a.this.f1710h);
        }
    }

    static final class h<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final h f1722a = new h();

        h() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            th.printStackTrace();
        }
    }

    public a(Anime anime) {
        g.p.b.f.b(anime, "anime");
        this.f1710h = anime;
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        g.p.b.f.b(aVar, "component");
        aVar.a(this);
    }

    public final void a(String str) {
        g.p.b.f.b(str, "type");
        animebestapp.com.d.a aVar = this.f1707e;
        if (aVar == null) {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
        long id = this.f1710h.getId();
        animebestapp.com.models.g gVar = this.f1708f;
        if (gVar != null) {
            aVar.a(id, gVar.c(), str).a((t<? super l, ? extends R>) b()).a(new c(str), new d<>());
        } else {
            g.p.b.f.a();
            throw null;
        }
    }

    public final void e() {
        a(new C0048a());
    }

    public final void f() {
        if (this.f1708f == null) {
            a(b.f1712a);
        }
    }

    public final animebestapp.com.b.b.a g() {
        animebestapp.com.b.b.a aVar = this.f1706d;
        if (aVar != null) {
            return aVar;
        }
        g.p.b.f.c("mRepository");
        throw null;
    }

    public final void h() {
        a(new e());
    }

    public final void i() {
        animebestapp.com.d.a aVar = this.f1707e;
        if (aVar == null) {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
        this.f1708f = aVar.f();
        a(new g());
        if (this.f1708f != null) {
            animebestapp.com.d.a aVar2 = this.f1707e;
            if (aVar2 == null) {
                g.p.b.f.c("mainIteractor");
                throw null;
            }
            long id = this.f1710h.getId();
            animebestapp.com.models.g gVar = this.f1708f;
            if (gVar != null) {
                aVar2.a(id, gVar.c()).a((t<? super animebestapp.com.models.b, ? extends R>) b()).a(new f(), h.f1722a);
            } else {
                g.p.b.f.a();
                throw null;
            }
        }
    }
}
