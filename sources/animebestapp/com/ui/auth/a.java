package animebestapp.com.ui.auth;

import animebestapp.com.R;
import animebestapp.com.e.c.j;
import animebestapp.com.models.g;
import c.b.a.c.d;
import com.google.android.gms.common.Scopes;
import com.google.firebase.analytics.FirebaseAnalytics;
import e.a.t;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.c<animebestapp.com.ui.auth.c> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f1652d;

    /* JADX INFO: renamed from: animebestapp.com.ui.auth.a$a, reason: collision with other inner class name */
    static final class C0039a<V> implements d.a<animebestapp.com.ui.auth.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0039a f1653a = new C0039a();

        C0039a() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.auth.c cVar) {
            f.b(cVar, "it");
            cVar.b(R.string.error_login_empty);
        }
    }

    static final class b<V> implements d.a<animebestapp.com.ui.auth.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f1654a = new b();

        b() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.auth.c cVar) {
            f.b(cVar, "it");
            cVar.a(R.string.error_pass_empty);
        }
    }

    static final class c<V> implements d.a<animebestapp.com.ui.auth.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f1655a = new c();

        c() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.auth.c cVar) {
            f.b(cVar, "it");
            cVar.c(R.string.error_email_empty);
        }
    }

    static final class d<T> implements e.a.x.d<g> {

        /* JADX INFO: renamed from: animebestapp.com.ui.auth.a$d$a, reason: collision with other inner class name */
        static final class C0040a<V> implements d.a<animebestapp.com.ui.auth.c> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final C0040a f1657a = new C0040a();

            C0040a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.auth.c cVar) {
                f.b(cVar, "it");
                cVar.c();
            }
        }

        d() {
        }

        @Override // e.a.x.d
        public final void a(g gVar) {
            a.this.a(C0040a.f1657a);
        }
    }

    static final class e<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: animebestapp.com.ui.auth.a$e$a, reason: collision with other inner class name */
        static final class C0041a<V> implements d.a<animebestapp.com.ui.auth.c> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ j f1659a;

            C0041a(j jVar) {
                this.f1659a = jVar;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.auth.c cVar) {
                f.b(cVar, "it");
                String message = this.f1659a.getMessage();
                if (message == null) {
                    message = "";
                }
                cVar.a(message);
            }
        }

        static final class b<V> implements d.a<animebestapp.com.ui.auth.c> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Throwable f1660a;

            b(Throwable th) {
                this.f1660a = th;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.auth.c cVar) {
                f.b(cVar, "it");
                String message = this.f1660a.getMessage();
                if (message == null) {
                    message = "";
                }
                cVar.a(message);
            }
        }

        e() {
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
                animebestapp.com.ui.auth.a r1 = animebestapp.com.ui.auth.a.this
                animebestapp.com.ui.auth.a$e$a r2 = new animebestapp.com.ui.auth.a$e$a
                r2.<init>(r0)
                animebestapp.com.ui.auth.a.a(r1, r2)
                goto L46
            L3c:
                animebestapp.com.ui.auth.a r0 = animebestapp.com.ui.auth.a.this
                animebestapp.com.ui.auth.a$e$b r1 = new animebestapp.com.ui.auth.a$e$b
                r1.<init>(r4)
                animebestapp.com.ui.auth.a.a(r0, r1)
            L46:
                r4.printStackTrace()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.ui.auth.a.e.a(java.lang.Throwable):void");
        }
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        f.b(aVar, "component");
        aVar.a(this);
    }

    public final void a(String str, String str2, String str3) {
        f.b(str, FirebaseAnalytics.Event.LOGIN);
        f.b(str2, "pass");
        f.b(str3, Scopes.EMAIL);
        if (str.length() == 0) {
            a(C0039a.f1653a);
            return;
        }
        if (str2.length() == 0) {
            a(b.f1654a);
            return;
        }
        if (str3.length() == 0) {
            a(c.f1655a);
            return;
        }
        animebestapp.com.d.a aVar = this.f1652d;
        if (aVar != null) {
            aVar.a(str, str2, str3).a((t<? super g, ? extends R>) b()).a(new d(), new e<>());
        } else {
            f.c("mainIteractor");
            throw null;
        }
    }
}
