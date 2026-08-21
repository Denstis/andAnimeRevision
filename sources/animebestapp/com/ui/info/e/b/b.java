package animebestapp.com.ui.info.e.b;

import animebestapp.com.models.AdBanner;
import animebestapp.com.models.Anime;
import animebestapp.com.models.XFields;
import animebestapp.com.ui.info.e.b.d;
import c.b.a.c.d;
import com.google.android.exoplayer2.util.MimeTypes;
import e.a.t;
import java.util.LinkedHashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class b extends animebestapp.com.ui.a.c<animebestapp.com.ui.info.e.b.d> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.b.b.a f1785d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public animebestapp.com.d.a f1786e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final LinkedHashMap<String, String> f1787f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private d.a f1788g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Anime f1789h;

    static final class a<V> implements d.a<animebestapp.com.ui.info.e.b.d> {
        a() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            dVar.e(b.this.f1788g.a());
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.info.e.b.b$b, reason: collision with other inner class name */
    static final class C0058b<V> implements d.a<animebestapp.com.ui.info.e.b.d> {
        C0058b() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            dVar.e(b.this.f1788g.a());
        }
    }

    static final class c extends g.p.b.g implements g.p.a.b<d.a, d.a> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1792b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(int i2) {
            super(1);
            this.f1792b = i2;
        }

        @Override // g.p.a.b
        public final d.a a(d.a aVar) {
            g.p.b.f.b(aVar, "it");
            return d.a.a(aVar, this.f1792b, this.f1792b >= 0, 0, null, false, false, false, 124, null);
        }
    }

    static final class d<V> implements d.a<animebestapp.com.ui.info.e.b.d> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1794b;

        d(int i2) {
            this.f1794b = i2;
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            dVar.a(b.this.f1787f, this.f1794b);
        }
    }

    static final class e<V> implements d.a<animebestapp.com.ui.info.e.b.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f1795a;

        e(int i2) {
            this.f1795a = i2;
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            dVar.e(this.f1795a);
        }
    }

    static final class f<T> implements e.a.x.d<AdBanner> {

        static final class a extends g.p.b.g implements g.p.a.b<d.a, d.a> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AdBanner f1797b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(AdBanner adBanner) {
                super(1);
                this.f1797b = adBanner;
            }

            @Override // g.p.a.b
            public final d.a a(d.a aVar) {
                g.p.b.f.b(aVar, "it");
                String url = this.f1797b.getUrl();
                if (url.length() == 0) {
                    url = "https://animebestapp.org/donate.html";
                }
                return d.a.a(aVar, 0, false, 0, url, this.f1797b.isEnabled(), false, false, 103, null);
            }
        }

        f() {
        }

        @Override // e.a.x.d
        public final void a(AdBanner adBanner) {
            b.this.a(new a(adBanner));
        }
    }

    static final class g<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f1798a = new g();

        g() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            th.printStackTrace();
        }
    }

    static final class h extends g.p.b.g implements g.p.a.b<d.a, d.a> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1799b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(int i2) {
            super(1);
            this.f1799b = i2;
        }

        @Override // g.p.a.b
        public final d.a a(d.a aVar) {
            g.p.b.f.b(aVar, "it");
            return d.a.a(aVar, 0, false, this.f1799b, null, false, false, false, 123, null);
        }
    }

    static final class i<V> implements d.a<animebestapp.com.ui.info.e.b.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final i f1800a = new i();

        i() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            dVar.i();
        }
    }

    static final class j extends g.p.b.g implements g.p.a.b<d.a, d.a> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final j f1801b = new j();

        j() {
            super(1);
        }

        @Override // g.p.a.b
        public final d.a a(d.a aVar) {
            g.p.b.f.b(aVar, "it");
            return d.a.a(aVar, 3, false, 0, null, false, false, false, 126, null);
        }
    }

    static final class k extends g.p.b.g implements g.p.a.b<d.a, d.a> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final k f1802b = new k();

        k() {
            super(1);
        }

        @Override // g.p.a.b
        public final d.a a(d.a aVar) {
            g.p.b.f.b(aVar, "it");
            return d.a.a(aVar, 2, false, 0, null, false, false, false, 126, null);
        }
    }

    static final class l<V> implements d.a<animebestapp.com.ui.info.e.b.d> {
        l() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            dVar.a(b.this.f1788g.a(), b.this.f1789h, b.this.f1788g.c());
        }
    }

    static final class m<V> implements d.a<animebestapp.com.ui.info.e.b.d> {
        m() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            StringBuilder sb = new StringBuilder();
            sb.append("https:");
            LinkedHashMap linkedHashMap = b.this.f1787f;
            Set setKeySet = b.this.f1787f.keySet();
            g.p.b.f.a((Object) setKeySet, "list.keys");
            sb.append((String) linkedHashMap.get(g.m.j.b(setKeySet, b.this.f1788g.c())));
            dVar.b(sb.toString());
        }
    }

    static final class n<V> implements d.a<animebestapp.com.ui.info.e.b.d> {
        n() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            if (b.this.f1788g.f()) {
                StringBuilder sb = new StringBuilder();
                sb.append("https:");
                XFields xfields = b.this.f1789h.getXfields();
                if (xfields == null) {
                    g.p.b.f.a();
                    throw null;
                }
                String kodik = xfields.getKodik();
                if (kodik == null) {
                    g.p.b.f.a();
                    throw null;
                }
                sb.append(kodik);
                dVar.a(sb.toString(), true);
            }
        }
    }

    static final class o<V> implements d.a<animebestapp.com.ui.info.e.b.d> {
        o() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            if (b.this.f1788g.e()) {
                XFields xfields = b.this.f1789h.getXfields();
                if (xfields == null) {
                    g.p.b.f.a();
                    throw null;
                }
                String bazon = xfields.getBazon();
                if (bazon != null) {
                    dVar.a(bazon, false);
                } else {
                    g.p.b.f.a();
                    throw null;
                }
            }
        }
    }

    static final class p<V> implements d.a<animebestapp.com.ui.info.e.b.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f1807a;

        p(int i2) {
            this.f1807a = i2;
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            dVar.e(this.f1807a);
        }
    }

    static final class q extends g.p.b.g implements g.p.a.b<d.a, d.a> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1808b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(int i2) {
            super(1);
            this.f1808b = i2;
        }

        @Override // g.p.a.b
        public final d.a a(d.a aVar) {
            g.p.b.f.b(aVar, "it");
            return d.a.a(aVar, this.f1808b, false, 0, null, false, false, false, 126, null);
        }
    }

    static final class r<V> implements d.a<animebestapp.com.ui.info.e.b.d> {
        r() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.e.b.d dVar) {
            g.p.b.f.b(dVar, "it");
            dVar.a(b.this.f1788g);
        }
    }

    public b(Anime anime) {
        LinkedHashMap<String, String> series_list;
        g.p.b.f.b(anime, "anime");
        this.f1789h = anime;
        XFields xfields = this.f1789h.getXfields();
        this.f1787f = (xfields == null || (series_list = xfields.getSeries_list()) == null) ? new LinkedHashMap<>() : series_list;
        XFields xfields2 = this.f1789h.getXfields();
        boolean z = (xfields2 != null ? xfields2.getBazon() : null) != null;
        XFields xfields3 = this.f1789h.getXfields();
        this.f1788g = new d.a(0, false, 0, null, false, (xfields3 != null ? xfields3.getKodik() : null) != null, z, 31, null);
    }

    public static /* synthetic */ void a(b bVar, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z = true;
        }
        bVar.a(i2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(g.p.a.b<? super d.a, d.a> bVar) {
        this.f1788g = bVar.a(this.f1788g);
        a(new r());
    }

    private final void h() {
        d.a c0058b;
        if (animebestapp.com.e.c.f.INSTANCE.check()) {
            c0058b = new a();
        } else {
            if (!this.f1788g.d()) {
                g();
                return;
            }
            c0058b = new C0058b();
        }
        a(c0058b);
    }

    private final void i() {
        animebestapp.com.b.b.a aVar = this.f1785d;
        if (aVar == null) {
            g.p.b.f.c("mRepository");
            throw null;
        }
        a(new c(aVar.a()));
        animebestapp.com.b.b.a aVar2 = this.f1785d;
        if (aVar2 == null) {
            g.p.b.f.c("mRepository");
            throw null;
        }
        Integer numA = aVar2.a(this.f1789h.getId());
        int iIntValue = numA != null ? numA.intValue() : 0;
        a(new d(iIntValue));
        a(new e(iIntValue));
    }

    private final void j() {
        animebestapp.com.d.a aVar = this.f1786e;
        if (aVar != null) {
            aVar.a().a((t<? super AdBanner, ? extends R>) b()).a(new f(), g.f1798a);
        } else {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
    }

    public final void a(int i2) {
        a(new h(i2));
        animebestapp.com.b.b.a aVar = this.f1785d;
        if (aVar == null) {
            g.p.b.f.c("mRepository");
            throw null;
        }
        aVar.a(this.f1789h.getId(), i2);
        animebestapp.com.b.b.a aVar2 = this.f1785d;
        if (aVar2 == null) {
            g.p.b.f.c("mRepository");
            throw null;
        }
        if (aVar2.a() == -1) {
            a(i.f1800a);
        } else {
            h();
        }
    }

    public final void a(int i2, boolean z) {
        if (z) {
            animebestapp.com.b.b.a aVar = this.f1785d;
            if (aVar == null) {
                g.p.b.f.c("mRepository");
                throw null;
            }
            aVar.a(i2);
        }
        a(new q(i2));
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        g.p.b.f.b(aVar, "component");
        aVar.a(this);
        i();
        j();
    }

    public final void a(CharSequence charSequence) {
        g.p.b.f.b(charSequence, MimeTypes.BASE_TYPE_TEXT);
        if (g.s.m.a(charSequence)) {
            return;
        }
        XFields xfields = this.f1789h.getXfields();
        if (xfields == null) {
            g.p.b.f.a();
            throw null;
        }
        LinkedHashMap<String, String> series_list = xfields.getSeries_list();
        if (series_list == null) {
            g.p.b.f.a();
            throw null;
        }
        Set<String> setKeySet = series_list.keySet();
        g.p.b.f.a((Object) setKeySet, "anime.xfields!!.series_list!!.keys");
        int i2 = 0;
        for (Object obj : setKeySet) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                g.m.j.b();
                throw null;
            }
            String str = (String) obj;
            g.p.b.f.a((Object) str, "item");
            if (g.s.n.a((CharSequence) str, charSequence, false, 2, (Object) null)) {
                a(new p(i2));
                return;
            }
            i2 = i3;
        }
    }

    public final void a(boolean z) {
        a(0, z);
        h();
    }

    public final void b(boolean z) {
        a(1, z);
        h();
    }

    public final void e() {
        a(j.f1801b);
        h();
    }

    public final void f() {
        a(k.f1802b);
        h();
    }

    public final void g() {
        d.a lVar;
        int iB = this.f1788g.b();
        if (iB == 0) {
            lVar = new l();
        } else if (iB == 1) {
            lVar = new m();
        } else if (iB == 2) {
            lVar = new n();
        } else if (iB != 3) {
            return;
        } else {
            lVar = new o();
        }
        a(lVar);
    }
}
