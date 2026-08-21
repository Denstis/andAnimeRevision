package animebestapp.com.ui.presentation;

import animebestapp.com.R;
import animebestapp.com.models.g;
import c.b.a.c.d;
import com.google.android.gms.common.Scopes;
import com.google.firebase.analytics.FirebaseAnalytics;
import e.a.t;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class b extends animebestapp.com.ui.a.c<animebestapp.com.ui.presentation.d> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f2107d;

    static final class a<V> implements d.a<animebestapp.com.ui.presentation.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f2108a = new a();

        a() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.presentation.d dVar) {
            f.b(dVar, "it");
            dVar.b(R.string.error_login_empty);
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.presentation.b$b, reason: collision with other inner class name */
    static final class C0088b<V> implements d.a<animebestapp.com.ui.presentation.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0088b f2109a = new C0088b();

        C0088b() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.presentation.d dVar) {
            f.b(dVar, "it");
            dVar.a(R.string.error_pass_empty);
        }
    }

    static final class c<V> implements d.a<animebestapp.com.ui.presentation.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f2110a = new c();

        c() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.presentation.d dVar) {
            f.b(dVar, "it");
            dVar.c(R.string.error_email_empty);
        }
    }

    static final class d<T> implements e.a.x.d<g> {

        static final class a<V> implements d.a<animebestapp.com.ui.presentation.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f2112a = new a();

            a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.presentation.d dVar) {
                f.b(dVar, "it");
                dVar.c();
            }
        }

        d() {
        }

        @Override // e.a.x.d
        public final void a(g gVar) {
            b.this.a(a.f2112a);
        }
    }

    static final class e<T> implements e.a.x.d<Throwable> {

        static final class a<V> implements d.a<animebestapp.com.ui.presentation.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Throwable f2114a;

            a(Throwable th) {
                this.f2114a = th;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.presentation.d dVar) {
                f.b(dVar, "it");
                String message = this.f2114a.getMessage();
                if (message == null) {
                    message = "";
                }
                dVar.a(message);
            }
        }

        e() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            b.this.a(new a(th));
            th.printStackTrace();
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
            a(a.f2108a);
            return;
        }
        if (str2.length() == 0) {
            a(C0088b.f2109a);
            return;
        }
        if (str3.length() == 0) {
            a(c.f2110a);
            return;
        }
        animebestapp.com.d.a aVar = this.f2107d;
        if (aVar != null) {
            aVar.a(str, str2, str3).a((t<? super g, ? extends R>) b()).a(new d(), new e<>());
        } else {
            f.c("mainIteractor");
            throw null;
        }
    }
}
