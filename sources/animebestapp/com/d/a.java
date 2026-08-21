package animebestapp.com.d;

import android.util.Log;
import animebestapp.com.models.AdBanner;
import animebestapp.com.models.Anime;
import animebestapp.com.models.BannerInfo;
import animebestapp.com.models.Comment;
import animebestapp.com.models.g;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.Scopes;
import com.google.firebase.analytics.FirebaseAnalytics;
import e.a.h;
import e.a.o;
import g.l;
import g.p.b.f;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final animebestapp.com.b.b.a f1503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final animebestapp.com.e.b f1504b;

    /* JADX INFO: renamed from: animebestapp.com.d.a$a, reason: collision with other inner class name */
    static final class C0028a<T, R> implements e.a.x.e<T, R> {
        C0028a() {
        }

        public final g a(g gVar) {
            f.b(gVar, "it");
            a.this.f1503a.a(gVar);
            return gVar;
        }

        @Override // e.a.x.e
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            g gVar = (g) obj;
            a(gVar);
            return gVar;
        }
    }

    static final class b<T, R> implements e.a.x.e<T, R> {
        b() {
        }

        /* JADX WARN: Removed duplicated region for block: B:4:0x0019  */
        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final animebestapp.com.models.AdBanner apply(animebestapp.com.models.AdBanner r5) {
            /*
                r4 = this;
                java.lang.String r0 = "it"
                g.p.b.f.b(r5, r0)
                animebestapp.com.d.a r0 = animebestapp.com.d.a.this
                animebestapp.com.b.b.a r0 = animebestapp.com.d.a.a(r0)
                animebestapp.com.models.g r0 = r0.c()
                animebestapp.com.e.c.f r1 = animebestapp.com.e.c.f.INSTANCE
                boolean r1 = r1.check()
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L1b
            L19:
                r2 = 1
                goto L36
            L1b:
                boolean r1 = r5.isEnabled()
                if (r1 != 0) goto L22
                goto L36
            L22:
                animebestapp.com.external.a r1 = animebestapp.com.external.a.f1540b
                if (r0 == 0) goto L2d
                java.lang.String r0 = r0.e()
                if (r0 == 0) goto L2d
                goto L2f
            L2d:
                java.lang.String r0 = ""
            L2f:
                boolean r0 = r1.a(r0)
                if (r0 != 0) goto L36
                goto L19
            L36:
                r0 = 2
                r1 = 0
                animebestapp.com.models.AdBanner r5 = animebestapp.com.models.AdBanner.copy$default(r5, r2, r1, r0, r1)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.d.a.b.apply(animebestapp.com.models.AdBanner):animebestapp.com.models.AdBanner");
        }
    }

    static final class c<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1507a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1508b;

        c(String str, int i2) {
            this.f1507a = str;
            this.f1508b = i2;
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            Log.e("LOGS", "category: " + this.f1507a + " page: " + this.f1508b);
        }
    }

    static final class d<T, R> implements e.a.x.e<T, R> {
        d() {
        }

        public final g a(g gVar) {
            f.b(gVar, "it");
            a.this.f1503a.a(gVar);
            return gVar;
        }

        @Override // e.a.x.e
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            g gVar = (g) obj;
            a(gVar);
            return gVar;
        }
    }

    static final class e<T, R> implements e.a.x.e<T, R> {
        e() {
        }

        public final g a(g gVar) {
            f.b(gVar, "it");
            a.this.f1503a.a(gVar);
            return gVar;
        }

        @Override // e.a.x.e
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            g gVar = (g) obj;
            a(gVar);
            return gVar;
        }
    }

    public a(animebestapp.com.b.b.a aVar, animebestapp.com.e.b bVar) {
        f.b(aVar, "localRepository");
        f.b(bVar, "networkRepository");
        this.f1503a = aVar;
        this.f1504b = bVar;
    }

    public final h<List<Anime>> a(String str, int i2) {
        f.b(str, "category");
        h<List<Anime>> hVarA = this.f1504b.a(str, i2).a();
        f.a((Object) hVarA, "networkRepository.getCat…ory, page).toObservable()");
        return hVarA;
    }

    public final o<AdBanner> a() {
        o oVarB = this.f1504b.a().b(new b());
        f.a((Object) oVarB, "networkRepository.getAdB… ?: \"\").not() )\n        }");
        return oVarB;
    }

    public final o<List<Anime>> a(int i2) {
        return this.f1504b.a(i2);
    }

    public final o<List<Anime>> a(long j2) {
        return this.f1504b.a(j2);
    }

    public final o<animebestapp.com.models.b> a(long j2, long j3) {
        return this.f1504b.a(j2, j3);
    }

    public final o<l> a(long j2, long j3, String str) {
        f.b(str, "type");
        return this.f1504b.a(j2, j3, str);
    }

    public final o<g> a(String str, String str2) {
        f.b(str, FirebaseAnalytics.Event.LOGIN);
        f.b(str2, "pass");
        o oVarB = this.f1504b.a(str, str2).b(new C0028a());
        f.a((Object) oVarB, "networkRepository.auth(l…lRepository.setUser(it) }");
        return oVarB;
    }

    public final o<g> a(String str, String str2, String str3) {
        f.b(str, FirebaseAnalytics.Event.LOGIN);
        f.b(str2, "pass");
        f.b(str3, Scopes.EMAIL);
        o oVarB = this.f1504b.a(str, str2, str3).b(new e());
        f.a((Object) oVarB, "networkRepository.reg(lo…lRepository.setUser(it) }");
        return oVarB;
    }

    public final h<List<Comment>> b(String str, int i2) {
        f.b(str, TtmlNode.ATTR_ID);
        return this.f1504b.b(str, i2);
    }

    public final o<BannerInfo> b() {
        return this.f1504b.b();
    }

    public final o<List<Anime>> b(String str, String str2) {
        f.b(str, "userId");
        f.b(str2, "type");
        return this.f1504b.b(str, str2);
    }

    public final o<l> b(String str, String str2, String str3) {
        String strValueOf;
        f.b(str, MimeTypes.BASE_TYPE_TEXT);
        f.b(str2, "postId");
        f.b(str3, "ipv4HostAddress");
        animebestapp.com.e.b bVar = this.f1504b;
        g gVarC = this.f1503a.c();
        if (gVarC == null || (strValueOf = String.valueOf(gVarC.c())) == null) {
            strValueOf = "0";
        }
        return bVar.a(str, str2, strValueOf, str3);
    }

    public final void b(int i2) {
        this.f1503a.b(i2);
    }

    public final h<List<animebestapp.com.models.d>> c(String str, int i2) {
        h<List<animebestapp.com.models.d>> hVarA = this.f1504b.c(str, i2).a().a(new c(str, i2));
        f.a((Object) hVarA, "networkRepository.getLas…$category page: $page\") }");
        return hVarA;
    }

    public final o<animebestapp.com.ui.nav.d> c() {
        return this.f1504b.c();
    }

    public final h<List<Anime>> d(String str, int i2) {
        f.b(str, FirebaseAnalytics.Event.SEARCH);
        h<List<Anime>> hVarA = this.f1504b.d(str, i2).a();
        f.a((Object) hVarA, "networkRepository.search…rch, page).toObservable()");
        return hVarA;
    }

    public final o<HashMap<String, List<animebestapp.com.models.e>>> d() {
        return this.f1504b.d();
    }

    public final long e() {
        return this.f1503a.b();
    }

    public final g f() {
        return this.f1503a.c();
    }

    public final o<g> g() {
        g gVarF = f();
        if (gVarF == null) {
            f.a();
            throw null;
        }
        o oVarB = this.f1504b.a(String.valueOf(gVarF.c())).b(new d());
        f.a((Object) oVarB, "networkRepository.getUse…lRepository.setUser(it) }");
        return oVarB;
    }

    public final boolean h() {
        return this.f1503a.d();
    }

    public final void i() {
        this.f1503a.e();
    }

    public final void j() {
        this.f1503a.f();
    }

    public final void k() {
        this.f1503a.g();
    }
}
