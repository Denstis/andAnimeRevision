package animebestapp.com.c.a;

import android.app.Activity;
import animebestapp.com.c.a.a;
import animebestapp.com.ui.nav.e;
import animebestapp.com.ui.nav.f;
import h.x;

/* JADX INFO: loaded from: classes.dex */
public final class b implements animebestapp.com.c.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private animebestapp.com.c.b.a f1470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f1471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f1472c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f.a.a<animebestapp.com.d.a> f1473d;

    /* JADX INFO: renamed from: animebestapp.com.c.a.b$b, reason: collision with other inner class name */
    private static final class C0026b implements a.InterfaceC0025a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private animebestapp.com.c.a.c f1474a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private animebestapp.com.c.b.a f1475b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Activity f1476c;

        private C0026b() {
        }

        @Override // animebestapp.com.c.a.a.InterfaceC0025a
        public /* bridge */ /* synthetic */ a.InterfaceC0025a a(Activity activity) {
            a(activity);
            return this;
        }

        @Override // animebestapp.com.c.a.a.InterfaceC0025a
        public /* bridge */ /* synthetic */ a.InterfaceC0025a a(animebestapp.com.c.b.a aVar) {
            a(aVar);
            return this;
        }

        @Override // animebestapp.com.c.a.a.InterfaceC0025a
        public animebestapp.com.c.a.a a() {
            if (this.f1474a == null) {
                this.f1474a = new animebestapp.com.c.a.c();
            }
            if (this.f1475b == null) {
                throw new IllegalStateException(animebestapp.com.c.b.a.class.getCanonicalName() + " must be set");
            }
            if (this.f1476c != null) {
                return new b(this);
            }
            throw new IllegalStateException(Activity.class.getCanonicalName() + " must be set");
        }

        @Override // animebestapp.com.c.a.a.InterfaceC0025a
        public C0026b a(Activity activity) {
            d.c.d.a(activity);
            this.f1476c = activity;
            return this;
        }

        @Override // animebestapp.com.c.a.a.InterfaceC0025a
        public C0026b a(animebestapp.com.c.b.a aVar) {
            d.c.d.a(aVar);
            this.f1475b = aVar;
            return this;
        }
    }

    private static class c implements f.a.a<animebestapp.com.b.b.a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final animebestapp.com.c.b.a f1477a;

        c(animebestapp.com.c.b.a aVar) {
            this.f1477a = aVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // f.a.a
        public animebestapp.com.b.b.a get() {
            animebestapp.com.b.b.a aVarC = this.f1477a.c();
            d.c.d.a(aVarC, "Cannot return null from a non-@Nullable component method");
            return aVarC;
        }
    }

    private static class d implements f.a.a<animebestapp.com.e.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final animebestapp.com.c.b.a f1478a;

        d(animebestapp.com.c.b.a aVar) {
            this.f1478a = aVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // f.a.a
        public animebestapp.com.e.b get() {
            animebestapp.com.e.b bVarA = this.f1478a.a();
            d.c.d.a(bVarA, "Cannot return null from a non-@Nullable component method");
            return bVarA;
        }
    }

    private b(C0026b c0026b) {
        a(c0026b);
    }

    public static a.InterfaceC0025a a() {
        return new C0026b();
    }

    private void a(C0026b c0026b) {
        this.f1470a = c0026b.f1475b;
        this.f1471b = new c(c0026b.f1475b);
        this.f1472c = new d(c0026b.f1475b);
        this.f1473d = d.c.a.a(animebestapp.com.c.a.d.a(c0026b.f1474a, this.f1471b, this.f1472c));
    }

    private animebestapp.com.ui.auth.a b(animebestapp.com.ui.auth.a aVar) {
        animebestapp.com.ui.auth.b.a(aVar, this.f1473d.get());
        return aVar;
    }

    private animebestapp.com.ui.comments.b b(animebestapp.com.ui.comments.b bVar) {
        animebestapp.com.ui.comments.c.a(bVar, this.f1473d.get());
        return bVar;
    }

    private animebestapp.com.ui.info.a b(animebestapp.com.ui.info.a aVar) {
        animebestapp.com.b.b.a aVarC = this.f1470a.c();
        d.c.d.a(aVarC, "Cannot return null from a non-@Nullable component method");
        animebestapp.com.ui.info.b.a(aVar, aVarC);
        animebestapp.com.ui.info.b.a(aVar, this.f1473d.get());
        return aVar;
    }

    private animebestapp.com.ui.info.e.a.c b(animebestapp.com.ui.info.e.a.c cVar) {
        animebestapp.com.ui.info.e.a.d.a(cVar, this.f1473d.get());
        return cVar;
    }

    private animebestapp.com.ui.info.e.b.b b(animebestapp.com.ui.info.e.b.b bVar) {
        animebestapp.com.b.b.a aVarC = this.f1470a.c();
        d.c.d.a(aVarC, "Cannot return null from a non-@Nullable component method");
        animebestapp.com.ui.info.e.b.c.a(bVar, aVarC);
        animebestapp.com.ui.info.e.b.c.a(bVar, this.f1473d.get());
        return bVar;
    }

    private animebestapp.com.ui.info.player.a b(animebestapp.com.ui.info.player.a aVar) {
        animebestapp.com.b.b.a aVarC = this.f1470a.c();
        d.c.d.a(aVarC, "Cannot return null from a non-@Nullable component method");
        animebestapp.com.ui.info.player.b.a(aVar, aVarC);
        x xVarB = this.f1470a.b();
        d.c.d.a(xVarB, "Cannot return null from a non-@Nullable component method");
        animebestapp.com.ui.info.player.b.a(aVar, xVarB);
        animebestapp.com.ui.info.player.b.a(aVar, this.f1473d.get());
        return aVar;
    }

    private e b(e eVar) {
        animebestapp.com.b.b.a aVarC = this.f1470a.c();
        d.c.d.a(aVarC, "Cannot return null from a non-@Nullable component method");
        f.a(eVar, aVarC);
        f.a(eVar, this.f1473d.get());
        return eVar;
    }

    private animebestapp.com.ui.nav.h.a.d b(animebestapp.com.ui.nav.h.a.d dVar) {
        animebestapp.com.ui.nav.h.a.e.a(dVar, this.f1473d.get());
        return dVar;
    }

    private animebestapp.com.ui.nav.h.b.b b(animebestapp.com.ui.nav.h.b.b bVar) {
        animebestapp.com.ui.nav.h.b.c.a(bVar, this.f1473d.get());
        return bVar;
    }

    private animebestapp.com.ui.nav.h.c.b b(animebestapp.com.ui.nav.h.c.b bVar) {
        animebestapp.com.ui.nav.h.c.c.a(bVar, this.f1473d.get());
        return bVar;
    }

    private animebestapp.com.ui.nav.h.c.e.b b(animebestapp.com.ui.nav.h.c.e.b bVar) {
        animebestapp.com.ui.nav.h.c.e.c.a(bVar, this.f1473d.get());
        return bVar;
    }

    private animebestapp.com.ui.nav.h.d.c b(animebestapp.com.ui.nav.h.d.c cVar) {
        animebestapp.com.ui.nav.h.d.d.a(cVar, this.f1473d.get());
        return cVar;
    }

    private animebestapp.com.ui.nav.h.d.f.b b(animebestapp.com.ui.nav.h.d.f.b bVar) {
        animebestapp.com.ui.nav.h.d.f.c.a(bVar, this.f1473d.get());
        return bVar;
    }

    private animebestapp.com.ui.nav.h.e.b b(animebestapp.com.ui.nav.h.e.b bVar) {
        animebestapp.com.ui.nav.h.e.c.a(bVar, this.f1473d.get());
        return bVar;
    }

    private animebestapp.com.ui.presentation.b b(animebestapp.com.ui.presentation.b bVar) {
        animebestapp.com.ui.presentation.c.a(bVar, this.f1473d.get());
        return bVar;
    }

    private animebestapp.com.ui.top.a b(animebestapp.com.ui.top.a aVar) {
        animebestapp.com.ui.top.b.a(aVar, this.f1473d.get());
        return aVar;
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.auth.a aVar) {
        b(aVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.comments.b bVar) {
        b(bVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.dubbers.a aVar) {
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.info.a aVar) {
        b(aVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.info.e.a.c cVar) {
        b(cVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.info.e.b.b bVar) {
        b(bVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.info.player.a aVar) {
        b(aVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(e eVar) {
        b(eVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.nav.h.a.d dVar) {
        b(dVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.nav.h.b.b bVar) {
        b(bVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.nav.h.c.b bVar) {
        b(bVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.nav.h.c.e.b bVar) {
        b(bVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.nav.h.d.c cVar) {
        b(cVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.nav.h.d.f.b bVar) {
        b(bVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.nav.h.e.b bVar) {
        b(bVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.news.a aVar) {
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.presentation.b bVar) {
        b(bVar);
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.reviews.a aVar) {
    }

    @Override // animebestapp.com.c.a.a
    public void a(animebestapp.com.ui.top.a aVar) {
        b(aVar);
    }
}
