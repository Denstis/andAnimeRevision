package animebestapp.com.ui.nav;

import android.annotation.SuppressLint;
import android.os.CountDownTimer;
import android.util.Log;
import animebestapp.com.R;
import c.b.a.c.d;
import com.google.firebase.analytics.FirebaseAnalytics;
import e.a.t;
import g.g;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"CheckResult"})
public final class e extends animebestapp.com.ui.a.c<animebestapp.com.ui.nav.g> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.b.b.a f1916d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public animebestapp.com.d.a f1917e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1919g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1918f = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CountDownTimer f1920h = new m(1140000, 1140000);

    static final class a<V> implements d.a<animebestapp.com.ui.nav.g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f1921a = new a();

        a() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.nav.g gVar) {
            g.p.b.f.b(gVar, "it");
            gVar.g();
        }
    }

    static final class b<V> implements d.a<animebestapp.com.ui.nav.g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f1922a = new b();

        b() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.nav.g gVar) {
            g.p.b.f.b(gVar, "it");
            gVar.b(R.string.error_login_empty);
        }
    }

    static final class c<V> implements d.a<animebestapp.com.ui.nav.g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f1923a = new c();

        c() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.nav.g gVar) {
            g.p.b.f.b(gVar, "it");
            gVar.a(R.string.error_pass_empty);
        }
    }

    static final class d<T> implements e.a.x.d<animebestapp.com.models.g> {

        static final class a<V> implements d.a<animebestapp.com.ui.nav.g> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ animebestapp.com.models.g f1925a;

            a(animebestapp.com.models.g gVar) {
                this.f1925a = gVar;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.g gVar) {
                g.p.b.f.b(gVar, "it");
                animebestapp.com.models.g gVar2 = this.f1925a;
                g.p.b.f.a((Object) gVar2, "user");
                gVar.a(gVar2);
            }
        }

        d() {
        }

        @Override // e.a.x.d
        public final void a(animebestapp.com.models.g gVar) {
            e.this.a(new a(gVar));
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.e$e, reason: collision with other inner class name */
    static final class C0065e<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: animebestapp.com.ui.nav.e$e$a */
        static final class a<V> implements d.a<animebestapp.com.ui.nav.g> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ animebestapp.com.e.c.j f1927a;

            a(animebestapp.com.e.c.j jVar) {
                this.f1927a = jVar;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.g gVar) {
                g.p.b.f.b(gVar, "it");
                String message = this.f1927a.getMessage();
                if (message == null) {
                    message = "";
                }
                gVar.d(message);
            }
        }

        /* JADX INFO: renamed from: animebestapp.com.ui.nav.e$e$b */
        static final class b<V> implements d.a<animebestapp.com.ui.nav.g> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Throwable f1928a;

            b(Throwable th) {
                this.f1928a = th;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.g gVar) {
                g.p.b.f.b(gVar, "it");
                String message = this.f1928a.getMessage();
                if (message == null) {
                    message = "";
                }
                gVar.a(message);
            }
        }

        C0065e() {
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
        @Override // e.a.x.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void a(java.lang.Throwable r4) {
            /*
                r3 = this;
                boolean r0 = r4 instanceof k.h
                if (r0 == 0) goto L3c
                r0 = r4
                k.h r0 = (k.h) r0
                k.m r1 = r0.a()
                h.d0 r1 = r1.c()
                if (r1 == 0) goto L3c
                com.google.gson.Gson r1 = new com.google.gson.Gson
                r1.<init>()
                k.m r0 = r0.a()
                h.d0 r0 = r0.c()
                if (r0 == 0) goto L27
                java.lang.String r0 = r0.n()
                if (r0 == 0) goto L27
                goto L29
            L27:
                java.lang.String r0 = ""
            L29:
                java.lang.Class<animebestapp.com.e.c.j> r2 = animebestapp.com.e.c.j.class
                java.lang.Object r0 = r1.fromJson(r0, r2)
                animebestapp.com.e.c.j r0 = (animebestapp.com.e.c.j) r0
                animebestapp.com.ui.nav.e r1 = animebestapp.com.ui.nav.e.this
                animebestapp.com.ui.nav.e$e$a r2 = new animebestapp.com.ui.nav.e$e$a
                r2.<init>(r0)
                animebestapp.com.ui.nav.e.a(r1, r2)
                goto L46
            L3c:
                animebestapp.com.ui.nav.e r0 = animebestapp.com.ui.nav.e.this
                animebestapp.com.ui.nav.e$e$b r1 = new animebestapp.com.ui.nav.e$e$b
                r1.<init>(r4)
                animebestapp.com.ui.nav.e.a(r0, r1)
            L46:
                r4.printStackTrace()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.ui.nav.e.C0065e.a(java.lang.Throwable):void");
        }
    }

    static final class f<T> implements e.a.x.d<animebestapp.com.ui.nav.d> {

        static final class a<V> implements d.a<animebestapp.com.ui.nav.g> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ animebestapp.com.ui.nav.d f1930a;

            a(animebestapp.com.ui.nav.d dVar) {
                this.f1930a = dVar;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.g gVar) {
                g.p.b.f.b(gVar, "it");
                animebestapp.com.ui.nav.d dVar = this.f1930a;
                g.p.b.f.a((Object) dVar, "info");
                gVar.a(dVar);
            }
        }

        f() {
        }

        @Override // e.a.x.d
        public final void a(animebestapp.com.ui.nav.d dVar) {
            e.this.a(new a(dVar));
        }
    }

    static final class g<T> implements e.a.x.d<Throwable> {

        static final class a<V> implements d.a<animebestapp.com.ui.nav.g> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f1932a = new a();

            a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.g gVar) {
                g.p.b.f.b(gVar, "it");
                gVar.e();
            }
        }

        g() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            e.this.a(a.f1932a);
        }
    }

    static final class h<T> implements e.a.x.d<animebestapp.com.models.g> {

        static final class a<V> implements d.a<animebestapp.com.ui.nav.g> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ animebestapp.com.models.g f1934a;

            a(animebestapp.com.models.g gVar) {
                this.f1934a = gVar;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.g gVar) {
                g.p.b.f.b(gVar, "it");
                animebestapp.com.models.g gVar2 = this.f1934a;
                g.p.b.f.a((Object) gVar2, "user");
                gVar.a(gVar2);
            }
        }

        h() {
        }

        @Override // e.a.x.d
        public final void a(animebestapp.com.models.g gVar) {
            Log.e("NAvPresenter", "Success");
            e.this.a(new a(gVar));
        }
    }

    static final class i<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final i f1935a = new i();

        i() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            Log.e("NAvPresenter", th.getMessage());
        }
    }

    static final class j<V> implements d.a<animebestapp.com.ui.nav.g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ animebestapp.com.models.g f1936a;

        j(animebestapp.com.models.g gVar) {
            this.f1936a = gVar;
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.nav.g gVar) {
            g.p.b.f.b(gVar, "it");
            gVar.a(this.f1936a);
        }
    }

    static final class k<V> implements d.a<animebestapp.com.ui.nav.g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final k f1937a = new k();

        k() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.nav.g gVar) {
            g.p.b.f.b(gVar, "it");
            gVar.k();
        }
    }

    static final class l<V> implements d.a<animebestapp.com.ui.nav.g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1938a;

        l(String str) {
            this.f1938a = str;
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.nav.g gVar) {
            g.p.b.f.b(gVar, "it");
            gVar.a("genre", this.f1938a);
        }
    }

    public static final class m extends CountDownTimer {

        static final class a<V> implements d.a<animebestapp.com.ui.nav.g> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f1940a = new a();

            a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.nav.g gVar) {
                g.p.b.f.b(gVar, "it");
                gVar.g();
            }
        }

        m(long j2, long j3) {
            super(j2, j3);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (!e.this.f1918f) {
                e.this.f1919g = true;
            } else {
                e.this.e().j();
                e.this.a(a.f1940a);
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j2) {
        }
    }

    public final void a(int i2) {
        androidx.appcompat.app.f.d(i2);
        animebestapp.com.d.a aVar = this.f1917e;
        if (aVar != null) {
            aVar.b(i2);
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

    public final void a(String str) {
        g.p.b.f.b(str, "key");
        a(new l(str));
    }

    public final void a(String str, String str2) {
        g.p.b.f.b(str, FirebaseAnalytics.Event.LOGIN);
        g.p.b.f.b(str2, "pass");
        if (str.length() == 0) {
            a(b.f1922a);
        }
        if (str2.length() == 0) {
            a(c.f1923a);
        }
        animebestapp.com.d.a aVar = this.f1917e;
        if (aVar != null) {
            aVar.a(str, str2).a((t<? super animebestapp.com.models.g, ? extends R>) b()).a(new d(), new C0065e<>());
        } else {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
    }

    public final void a(boolean z) {
        if (this.f1919g) {
            a(a.f1921a);
            animebestapp.com.d.a aVar = this.f1917e;
            if (aVar == null) {
                g.p.b.f.c("mainIteractor");
                throw null;
            }
            aVar.j();
            this.f1919g = false;
        }
        this.f1918f = z;
    }

    public final void b(boolean z) {
        animebestapp.com.b.b.a aVar = this.f1916d;
        if (aVar != null) {
            aVar.a(!z ? 1 : 0);
        } else {
            g.p.b.f.c("mRepository");
            throw null;
        }
    }

    @Override // c.b.a.c.d, c.b.a.c.c
    public void destroy() {
        this.f1920h.cancel();
        super.destroy();
    }

    public final animebestapp.com.d.a e() {
        animebestapp.com.d.a aVar = this.f1917e;
        if (aVar != null) {
            return aVar;
        }
        g.p.b.f.c("mainIteractor");
        throw null;
    }

    public final void f() {
        animebestapp.com.d.a aVar = this.f1917e;
        if (aVar != null) {
            aVar.c().a((t<? super animebestapp.com.ui.nav.d, ? extends R>) b()).a(new f(), new g<>());
        } else {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
    }

    public final void g() {
        animebestapp.com.d.a aVar;
        animebestapp.com.d.a aVar2 = this.f1917e;
        if (aVar2 == null) {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
        animebestapp.com.models.g gVarF = aVar2.f();
        if (gVarF != null) {
            try {
                g.a aVar3 = g.g.f4365b;
                aVar = this.f1917e;
            } catch (Throwable th) {
                g.a aVar4 = g.g.f4365b;
                g.g.a(g.h.a(th));
            }
            if (aVar == null) {
                g.p.b.f.c("mainIteractor");
                throw null;
            }
            g.g.a(aVar.g().a((t<? super animebestapp.com.models.g, ? extends R>) b()).a(new h(), i.f1935a));
            a(new j(gVarF));
        } else {
            a(k.f1937a);
        }
        animebestapp.com.d.a aVar5 = this.f1917e;
        if (aVar5 == null) {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
        if (aVar5.h()) {
            return;
        }
        this.f1920h.start();
    }

    public final boolean h() {
        animebestapp.com.b.b.a aVar = this.f1916d;
        if (aVar != null) {
            return aVar.a() == 0;
        }
        g.p.b.f.c("mRepository");
        throw null;
    }

    public final void i() {
        animebestapp.com.d.a aVar = this.f1917e;
        if (aVar != null) {
            aVar.i();
        } else {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
    }
}
