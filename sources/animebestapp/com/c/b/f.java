package animebestapp.com.c.b;

import android.app.Application;
import animebestapp.com.c.b.a;
import com.google.gson.Gson;
import h.x;
import k.n;

/* JADX INFO: loaded from: classes.dex */
public final class f implements animebestapp.com.c.b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f.a.a<Gson> f1487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f.a.a<Application> f1488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f.a.a<animebestapp.com.b.b.a> f1489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f.a.a<x> f1490d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f.a.a<n> f1491e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private f.a.a<animebestapp.com.e.a> f1492f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f.a.a<animebestapp.com.e.b> f1493g;

    private static final class b implements a.InterfaceC0027a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private animebestapp.com.c.b.b f1494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private g f1495b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Application f1496c;

        private b() {
        }

        @Override // animebestapp.com.c.b.a.InterfaceC0027a
        public /* bridge */ /* synthetic */ a.InterfaceC0027a a(Application application) {
            a(application);
            return this;
        }

        @Override // animebestapp.com.c.b.a.InterfaceC0027a
        public animebestapp.com.c.b.a a() {
            if (this.f1494a == null) {
                this.f1494a = new animebestapp.com.c.b.b();
            }
            if (this.f1495b == null) {
                this.f1495b = new g();
            }
            if (this.f1496c != null) {
                return new f(this);
            }
            throw new IllegalStateException(Application.class.getCanonicalName() + " must be set");
        }

        @Override // animebestapp.com.c.b.a.InterfaceC0027a
        public b a(Application application) {
            d.c.d.a(application);
            this.f1496c = application;
            return this;
        }
    }

    private f(b bVar) {
        a(bVar);
    }

    private void a(b bVar) {
        this.f1487a = d.c.a.a(c.a(bVar.f1494a));
        this.f1488b = d.c.c.a(bVar.f1496c);
        this.f1489c = d.c.a.a(d.a(bVar.f1494a, this.f1488b));
        this.f1490d = d.c.a.a(i.a(bVar.f1495b));
        this.f1491e = d.c.a.a(j.a(bVar.f1495b, this.f1490d, this.f1487a));
        this.f1492f = d.c.a.a(h.a(bVar.f1495b, this.f1491e));
        this.f1493g = d.c.a.a(e.a(bVar.f1494a, this.f1492f));
    }

    public static a.InterfaceC0027a d() {
        return new b();
    }

    @Override // animebestapp.com.c.b.a
    public animebestapp.com.e.b a() {
        return this.f1493g.get();
    }

    @Override // animebestapp.com.c.b.a
    public x b() {
        return this.f1490d.get();
    }

    @Override // animebestapp.com.c.b.a
    public animebestapp.com.b.b.a c() {
        return this.f1489c.get();
    }
}
