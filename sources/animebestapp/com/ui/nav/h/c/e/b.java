package animebestapp.com.ui.nav.h.c.e;

import android.annotation.SuppressLint;
import animebestapp.com.models.Anime;
import animebestapp.com.models.BannerInfo;
import c.b.a.c.d;
import e.a.t;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"CheckResult"})
public final class b extends animebestapp.com.ui.a.c<animebestapp.com.ui.nav.h.c.e.d> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f2026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<animebestapp.com.models.e> f2027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f2028f = 43200000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap<Long, Anime> f2029g = new HashMap<>();

    static final class a<V> implements d.a<animebestapp.com.ui.nav.h.c.e.d> {
        a() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.nav.h.c.e.d dVar) {
            g.p.b.f.b(dVar, "it");
            List<animebestapp.com.models.e> list = b.this.f2027e;
            if (list != null) {
                dVar.c(list);
            } else {
                g.p.b.f.a();
                throw null;
            }
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.c.e.b$b, reason: collision with other inner class name */
    static final class C0079b<T> implements e.a.x.d<HashMap<String, List<? extends animebestapp.com.models.e>>> {
        C0079b() {
        }

        @Override // e.a.x.d
        public /* bridge */ /* synthetic */ void a(HashMap<String, List<? extends animebestapp.com.models.e>> map) {
            a2((HashMap<String, List<animebestapp.com.models.e>>) map);
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2(HashMap<String, List<animebestapp.com.models.e>> map) {
            b bVar = b.this;
            g.p.b.f.a((Object) map, "items");
            bVar.a(map);
        }
    }

    static final class c<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f2032a = new c();

        c() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            th.printStackTrace();
        }
    }

    static final class d<T> implements e.a.x.d<BannerInfo> {

        static final class a<V> implements d.a<animebestapp.com.ui.nav.h.c.e.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ BannerInfo f2034a;

            a(BannerInfo bannerInfo) {
                this.f2034a = bannerInfo;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.h.c.e.d dVar) {
                g.p.b.f.b(dVar, "it");
                BannerInfo bannerInfo = this.f2034a;
                g.p.b.f.a((Object) bannerInfo, "banner");
                dVar.a(bannerInfo);
            }
        }

        d() {
        }

        @Override // e.a.x.d
        public final void a(BannerInfo bannerInfo) {
            long jE = b.this.e().e();
            if (bannerInfo.getBtn().length() > 0) {
                if (bannerInfo.getTitle().length() > 0) {
                    if (!(bannerInfo.getUrl().length() > 0) || jE + ((long) b.this.f2028f) >= System.currentTimeMillis()) {
                        return;
                    }
                    b.this.a(new a(bannerInfo));
                }
            }
        }
    }

    static final class e<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e f2035a = new e();

        e() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            th.printStackTrace();
        }
    }

    static final class f<V> implements d.a<animebestapp.com.ui.nav.h.c.e.d> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f2037b;

        f(long j2) {
            this.f2037b = j2;
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.nav.h.c.e.d dVar) {
            g.p.b.f.b(dVar, "it");
            Object obj = b.this.f2029g.get(Long.valueOf(this.f2037b));
            if (obj == null) {
                g.p.b.f.a();
                throw null;
            }
            g.p.b.f.a(obj, "map[id]!!");
            dVar.a((Anime) obj);
        }
    }

    static final class g<V> implements d.a<animebestapp.com.ui.nav.h.c.e.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f2038a = new g();

        g() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.nav.h.c.e.d dVar) {
            g.p.b.f.b(dVar, "it");
            dVar.a();
        }
    }

    static final class h<T> implements e.a.x.d<List<? extends Anime>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f2040b;

        static final class a<V> implements d.a<animebestapp.com.ui.nav.h.c.e.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f2041a;

            a(List list) {
                this.f2041a = list;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.h.c.e.d dVar) {
                g.p.b.f.b(dVar, "it");
                dVar.a((Anime) this.f2041a.get(0));
            }
        }

        /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.c.e.b$h$b, reason: collision with other inner class name */
        static final class C0080b<V> implements d.a<animebestapp.com.ui.nav.h.c.e.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final C0080b f2042a = new C0080b();

            C0080b() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.h.c.e.d dVar) {
                g.p.b.f.b(dVar, "it");
                dVar.b();
            }
        }

        h(long j2) {
            this.f2040b = j2;
        }

        @Override // e.a.x.d
        public /* bridge */ /* synthetic */ void a(List<? extends Anime> list) {
            a2((List<Anime>) list);
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2(List<Anime> list) {
            b.this.f2029g.put(Long.valueOf(this.f2040b), list.get(0));
            b.this.a(new a(list));
            b.this.a(C0080b.f2042a);
        }
    }

    static final class i<T> implements e.a.x.d<Throwable> {

        static final class a<V> implements d.a<animebestapp.com.ui.nav.h.c.e.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f2044a = new a();

            a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.h.c.e.d dVar) {
                g.p.b.f.b(dVar, "it");
                dVar.b();
            }
        }

        i() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            b.this.a(a.f2044a);
            th.printStackTrace();
        }
    }

    public final void a(int i2) {
        List<animebestapp.com.models.e> list = this.f2027e;
        if (list == null) {
            return;
        }
        if (list == null) {
            g.p.b.f.a();
            throw null;
        }
        long jA = list.get(i2).a();
        if (this.f2029g.get(Long.valueOf(jA)) != null) {
            a(new f(jA));
            return;
        }
        a(g.f2038a);
        animebestapp.com.d.a aVar = this.f2026d;
        if (aVar != null) {
            aVar.a(jA).a((t<? super List<Anime>, ? extends R>) b()).a(new h(jA), new i<>());
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

    public final void a(HashMap<String, List<animebestapp.com.models.e>> map) {
        String str;
        List<animebestapp.com.models.e> list;
        g.p.b.f.b(map, "items");
        switch (Calendar.getInstance().get(7)) {
            case 1:
                str = "Sun";
                list = map.get(str);
                break;
            case 2:
                str = "Mon";
                list = map.get(str);
                break;
            case 3:
                str = "Tue";
                list = map.get(str);
                break;
            case 4:
                str = "Wed";
                list = map.get(str);
                break;
            case 5:
                str = "Thu";
                list = map.get(str);
                break;
            case 6:
                str = "Fri";
                list = map.get(str);
                break;
            case 7:
                str = "Sat";
                list = map.get(str);
                break;
            default:
                list = null;
                break;
        }
        this.f2027e = list;
        if (this.f2027e != null) {
            a(new a());
        }
    }

    public final animebestapp.com.d.a e() {
        animebestapp.com.d.a aVar = this.f2026d;
        if (aVar != null) {
            return aVar;
        }
        g.p.b.f.c("mainIteractor");
        throw null;
    }

    public final void f() {
        animebestapp.com.d.a aVar = this.f2026d;
        if (aVar != null) {
            aVar.k();
        } else {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
    }

    public final void g() {
        animebestapp.com.d.a aVar = this.f2026d;
        if (aVar == null) {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
        aVar.d().a((t<? super HashMap<String, List<animebestapp.com.models.e>>, ? extends R>) b()).a(new C0079b(), c.f2032a);
        animebestapp.com.d.a aVar2 = this.f2026d;
        if (aVar2 != null) {
            aVar2.b().a((t<? super BannerInfo, ? extends R>) b()).a(new d(), e.f2035a);
        } else {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
    }
}
