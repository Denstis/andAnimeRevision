package animebestapp.com.e;

import animebestapp.com.e.a;
import animebestapp.com.e.c.t;
import animebestapp.com.models.AdBanner;
import animebestapp.com.models.Anime;
import animebestapp.com.models.BannerInfo;
import animebestapp.com.models.Comment;
import animebestapp.com.models.News;
import animebestapp.com.models.UserHash;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.common.Scopes;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import e.a.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AdBanner f1511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final animebestapp.com.e.a f1512b;

    static final class a<T, R> implements e.a.x.e<T, s<? extends R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1514b;

        a(String str) {
            this.f1514b = str;
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e.a.o<t> apply(animebestapp.com.e.c.c cVar) throws animebestapp.com.utils.i {
            g.p.b.f.b(cVar, "it");
            if (g.p.b.f.a((Object) cVar.getStatus(), (Object) FirebaseAnalytics.Param.SUCCESS)) {
                return b.this.f1512b.a(new animebestapp.com.e.c.s(this.f1514b));
            }
            if (cVar.getMessage().equals("Авторизация временно недоступна!")) {
                throw new animebestapp.com.utils.i("Введите свой логин, чтобы авторизоватся");
            }
            throw new animebestapp.com.utils.i(cVar.getMessage());
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.e.b$b, reason: collision with other inner class name */
    static final class C0030b<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0030b f1515a = new C0030b();

        C0030b() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final animebestapp.com.models.g apply(t tVar) {
            g.p.b.f.b(tVar, "it");
            return tVar.getResult();
        }
    }

    static final class c<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f1516a = new c();

        c() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final animebestapp.com.models.b apply(animebestapp.com.e.c.e eVar) {
            g.p.b.f.b(eVar, "it");
            return eVar.getResult();
        }
    }

    static final class d<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f1517a = new d();

        d() {
        }

        public final void a(animebestapp.com.e.c.c cVar) throws animebestapp.com.utils.i {
            g.p.b.f.b(cVar, "it");
            if (!g.p.b.f.a((Object) cVar.getStatus(), (Object) FirebaseAnalytics.Param.SUCCESS)) {
                throw new animebestapp.com.utils.i(cVar.getMessage());
            }
        }

        @Override // e.a.x.e
        public /* bridge */ /* synthetic */ Object apply(Object obj) throws animebestapp.com.utils.i {
            a((animebestapp.com.e.c.c) obj);
            return g.l.f4367a;
        }
    }

    static final class e<T> implements e.a.r<T> {
        e() {
        }

        @Override // e.a.r
        public final void a(e.a.p<AdBanner> pVar) {
            g.p.b.f.b(pVar, "it");
            AdBanner adBanner = b.this.f1511a;
            if (adBanner != null) {
                pVar.onSuccess(adBanner);
            } else {
                g.p.b.f.a();
                throw null;
            }
        }
    }

    static final class f<T, R> implements e.a.x.e<T, R> {
        f() {
        }

        public final AdBanner a(AdBanner adBanner) {
            g.p.b.f.b(adBanner, "it");
            b.this.f1511a = adBanner;
            return adBanner;
        }

        @Override // e.a.x.e
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            AdBanner adBanner = (AdBanner) obj;
            a(adBanner);
            return adBanner;
        }
    }

    static final class g<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f1520a = new g();

        g() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ArrayList<Anime> apply(animebestapp.com.e.c.o oVar) {
            g.p.b.f.b(oVar, "it");
            return oVar.getResult();
        }
    }

    static final class h<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final h f1521a = new h();

        h() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ArrayList<Comment> apply(animebestapp.com.e.c.g gVar) {
            g.p.b.f.b(gVar, "it");
            return gVar.getResult();
        }
    }

    static final class i<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final i f1522a = new i();

        i() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Anime> apply(animebestapp.com.e.c.l lVar) {
            g.p.b.f.b(lVar, "it");
            return lVar.getResult();
        }
    }

    static final class j<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final j f1523a = new j();

        j() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<News> apply(animebestapp.com.e.c.n nVar) {
            g.p.b.f.b(nVar, "it");
            return g.m.t.c((Iterable) nVar.getResult());
        }
    }

    static final class k<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final k f1524a = new k();

        k() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Anime> apply(animebestapp.com.e.c.o oVar) {
            g.p.b.f.b(oVar, "it");
            return g.m.t.c((Iterable) oVar.getResult());
        }
    }

    static final class l<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final l f1525a = new l();

        l() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ArrayList<Anime> apply(animebestapp.com.e.c.o oVar) {
            g.p.b.f.b(oVar, "it");
            return oVar.getResult();
        }
    }

    static final class m<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final m f1526a = new m();

        m() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final animebestapp.com.models.g apply(t tVar) {
            g.p.b.f.b(tVar, "it");
            return tVar.getResult();
        }
    }

    static final class n<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final n f1527a = new n();

        n() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ArrayList<Anime> apply(animebestapp.com.e.c.o oVar) {
            g.p.b.f.b(oVar, "it");
            return oVar.getResult();
        }
    }

    static final class o<T, R> implements e.a.x.e<T, s<? extends R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1529b;

        o(String str) {
            this.f1529b = str;
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e.a.o<t> apply(animebestapp.com.e.c.c cVar) throws animebestapp.com.utils.i {
            g.p.b.f.b(cVar, "it");
            if (g.p.b.f.a((Object) cVar.getStatus(), (Object) FirebaseAnalytics.Param.SUCCESS)) {
                return b.this.f1512b.a(new animebestapp.com.e.c.s(this.f1529b));
            }
            throw new animebestapp.com.utils.i(cVar.getMessage());
        }
    }

    static final class p<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final p f1530a = new p();

        p() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final animebestapp.com.models.g apply(t tVar) {
            g.p.b.f.b(tVar, "it");
            return tVar.getResult();
        }
    }

    static final class q<T, R> implements e.a.x.e<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final q f1531a = new q();

        q() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ArrayList<Anime> apply(animebestapp.com.e.c.o oVar) {
            g.p.b.f.b(oVar, "it");
            return oVar.getResult();
        }
    }

    static final class r<T, R> implements e.a.x.e<T, s<? extends R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1533b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f1534c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f1535d;

        static final class a<T, R> implements e.a.x.e<T, s<? extends R>> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ animebestapp.com.models.c f1537b;

            /* JADX INFO: renamed from: animebestapp.com.e.b$r$a$a, reason: collision with other inner class name */
            static final class C0031a<T, R> implements e.a.x.e<T, R> {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final C0031a f1538a = new C0031a();

                C0031a() {
                }

                public final void a(animebestapp.com.e.c.c cVar) {
                    g.p.b.f.b(cVar, "it");
                }

                @Override // e.a.x.e
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    a((animebestapp.com.e.c.c) obj);
                    return g.l.f4367a;
                }
            }

            a(animebestapp.com.models.c cVar) {
                this.f1537b = cVar;
            }

            @Override // e.a.x.e
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final e.a.o<g.l> apply(UserHash userHash) {
                g.p.b.f.b(userHash, "it");
                animebestapp.com.e.a aVar = b.this.f1512b;
                r rVar = r.this;
                return a.C0029a.a(aVar, rVar.f1534c, rVar.f1535d, rVar.f1533b, userHash.getHash(), this.f1537b.a(), null, 32, null).b(C0031a.f1538a);
            }
        }

        r(String str, String str2, String str3) {
            this.f1533b = str;
            this.f1534c = str2;
            this.f1535d = str3;
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e.a.o<g.l> apply(animebestapp.com.models.c cVar) {
            g.p.b.f.b(cVar, "ip");
            return b.this.f1512b.a(cVar.a(), this.f1533b).a(new a(cVar));
        }
    }

    public b(animebestapp.com.e.a aVar) {
        g.p.b.f.b(aVar, "api");
        this.f1512b = aVar;
    }

    public final e.a.o<AdBanner> a() {
        String str;
        e.a.o oVarB;
        if (this.f1511a != null) {
            str = "Single.create { it.onSuccess(adBanner!!) }";
            oVarB = e.a.o.a(new e());
        } else {
            str = "api.getBannerAd().map {\n…\n            it\n        }";
            oVarB = this.f1512b.b().b(new f());
        }
        g.p.b.f.a((Object) oVarB, str);
        return oVarB;
    }

    public final e.a.o<List<Anime>> a(int i2) {
        new ArrayList().add("category regexp '[[:<:]](4)[[:>:]]'");
        e.a.o oVarB = this.f1512b.c().b(l.f1525a);
        g.p.b.f.a((Object) oVarB, "api.getTopAnime(\n//     …      ).map { it.result }");
        return oVarB;
    }

    public final e.a.o<List<Anime>> a(long j2) {
        animebestapp.com.e.a aVar = this.f1512b;
        List listA = g.m.k.a("id=" + j2);
        if (listA == null) {
            throw new g.j("null cannot be cast to non-null type java.util.Collection<T>");
        }
        Object[] array = listA.toArray(new String[0]);
        if (array == null) {
            throw new g.j("null cannot be cast to non-null type kotlin.Array<T>");
        }
        e.a.o oVarB = aVar.a(new animebestapp.com.e.c.q(null, null, 0, 0, null, null, 0, (String[]) array, 127, null)).b(n.f1527a);
        g.p.b.f.a((Object) oVarB, "api.search(SearchRequest…       .map { it.result }");
        return oVarB;
    }

    public final e.a.o<animebestapp.com.models.b> a(long j2, long j3) {
        return this.f1512b.a(new animebestapp.com.e.c.d(j2, j3)).b(c.f1516a);
    }

    public final e.a.o<g.l> a(long j2, long j3, String str) {
        g.p.b.f.b(str, "type");
        e.a.o oVarB = this.f1512b.a(new animebestapp.com.e.c.i(j2, j3, str)).b(d.f1517a);
        g.p.b.f.a((Object) oVarB, "api.setElement(ElementRe…it.message)\n            }");
        return oVarB;
    }

    public final e.a.o<animebestapp.com.models.g> a(String str) {
        g.p.b.f.b(str, TtmlNode.ATTR_ID);
        e.a.o oVarB = this.f1512b.a(new animebestapp.com.e.c.r(str)).b(m.f1526a);
        g.p.b.f.a((Object) oVarB, "api.getUserInfo2(UserInf…       .map { it.result }");
        return oVarB;
    }

    public final e.a.o<List<Anime>> a(String str, int i2) {
        animebestapp.com.e.a aVar = this.f1512b;
        int i3 = (i2 - 1) * 5;
        List listA = g.m.k.a("category regexp '[[:<:]](" + str + ")[[:>:]]' AND category not regexp '[[:<:]](5|64|7|8|56)[[:>:]]' AND approve=1");
        if (listA == null) {
            throw new g.j("null cannot be cast to non-null type java.util.Collection<T>");
        }
        Object[] array = listA.toArray(new String[0]);
        if (array == null) {
            throw new g.j("null cannot be cast to non-null type kotlin.Array<T>");
        }
        e.a.o oVarB = aVar.a(new animebestapp.com.e.c.q(null, null, i3, 0, null, null, 0, (String[]) array, 123, null)).b(g.f1520a);
        g.p.b.f.a((Object) oVarB, "api.search(\n            …       .map { it.result }");
        return oVarB;
    }

    public final e.a.o<animebestapp.com.models.g> a(String str, String str2) {
        g.p.b.f.b(str, FirebaseAnalytics.Event.LOGIN);
        g.p.b.f.b(str2, "pass");
        System.out.println((Object) ("auth " + new Gson().toJson(new animebestapp.com.e.c.a(str, str2, null, null, 12, null))));
        e.a.o<animebestapp.com.models.g> oVarB = this.f1512b.a(new animebestapp.com.e.c.a(str, str2, null, null, 12, null)).a(new a(str)).b(C0030b.f1515a);
        g.p.b.f.a((Object) oVarB, "api.auth(AuthRequest(log…       .map { it.result }");
        return oVarB;
    }

    public final e.a.o<animebestapp.com.models.g> a(String str, String str2, String str3) {
        g.p.b.f.b(str, FirebaseAnalytics.Event.LOGIN);
        g.p.b.f.b(str2, "pass");
        g.p.b.f.b(str3, Scopes.EMAIL);
        e.a.o<animebestapp.com.models.g> oVarB = this.f1512b.a(new animebestapp.com.e.c.p(str, str3, str2)).a(new o(str)).b(p.f1530a);
        g.p.b.f.a((Object) oVarB, "api.reg(RegRequest(login…       .map { it.result }");
        return oVarB;
    }

    public final e.a.o<g.l> a(String str, String str2, String str3, String str4) {
        g.p.b.f.b(str, MimeTypes.BASE_TYPE_TEXT);
        g.p.b.f.b(str2, "postId");
        g.p.b.f.b(str3, "userId");
        g.p.b.f.b(str4, "ipv4HostAddress");
        e.a.o oVarA = this.f1512b.e().a(new r(str3, str, str2));
        g.p.b.f.a((Object) oVarA, "api.getIp().flatMap { ip…p.query).map { Unit } } }");
        return oVarA;
    }

    public final e.a.h<List<Comment>> b(String str, int i2) {
        g.p.b.f.b(str, TtmlNode.ATTR_ID);
        e.a.h hVarB = this.f1512b.a(str, i2).b(h.f1521a);
        g.p.b.f.a((Object) hVarB, "api.geComments(id, start).map { it.result }");
        return hVarB;
    }

    public final e.a.o<BannerInfo> b() {
        return this.f1512b.f();
    }

    public final e.a.o<List<Anime>> b(String str, String str2) {
        g.p.b.f.b(str, "userId");
        g.p.b.f.b(str2, "type");
        e.a.o oVarB = this.f1512b.a(new animebestapp.com.e.c.k(str, str2)).b(i.f1522a);
        g.p.b.f.a((Object) oVarB, "api.getFavorites(GetFavo…       .map { it.result }");
        return oVarB;
    }

    public final e.a.o<animebestapp.com.ui.nav.d> c() {
        return this.f1512b.d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final e.a.o<java.util.List<animebestapp.com.models.d>> c(java.lang.String r23, int r24) {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.e.b.c(java.lang.String, int):e.a.o");
    }

    public final e.a.o<HashMap<String, List<animebestapp.com.models.e>>> d() {
        return this.f1512b.a();
    }

    public final e.a.o<List<Anime>> d(String str, int i2) {
        g.p.b.f.b(str, SearchIntents.EXTRA_QUERY);
        StringBuilder sb = new StringBuilder();
        for (String str2 : g.s.n.a((CharSequence) str, new String[]{" "}, false, 0, 6, (Object) null)) {
            if (str2.length() > 0) {
                sb.append("((SUBSTRING_INDEX(SUBSTRING_INDEX(xfields, 'names|', -1), '||', 1) LIKE '%" + str2 + "%') OR title like ('%" + str2 + "%')) AND ");
            }
        }
        sb.append("approve = 1 AND category not in ('5','7','8','56','64')");
        animebestapp.com.e.a aVar = this.f1512b;
        int i3 = (i2 - 1) * 5;
        List listA = g.m.k.a(sb.toString());
        if (listA == null) {
            throw new g.j("null cannot be cast to non-null type java.util.Collection<T>");
        }
        Object[] array = listA.toArray(new String[0]);
        if (array == null) {
            throw new g.j("null cannot be cast to non-null type kotlin.Array<T>");
        }
        e.a.o oVarB = aVar.a(new animebestapp.com.e.c.q(null, null, i3, 0, null, null, 0, (String[]) array, 123, null)).b(q.f1531a);
        g.p.b.f.a((Object) oVarB, "api.search(\n            …       .map { it.result }");
        return oVarB;
    }
}
