package animebestapp.com.ui.a;

import animebestapp.com.ui.a.f.a;
import e.a.h;
import e.a.l;
import e.a.o;
import e.a.t;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class c<V extends animebestapp.com.ui.a.f.a> extends c.b.a.c.d<V> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e.a.v.a f1619c = new e.a.v.a();

    /* JADX INFO: Add missing generic type declarations: [T] */
    static final class a<Upstream, Downstream, T> implements t<T, T> {

        /* JADX INFO: renamed from: animebestapp.com.ui.a.c$a$a, reason: collision with other inner class name */
        static final class C0037a<T> implements e.a.x.d<e.a.v.b> {
            C0037a() {
            }

            @Override // e.a.x.d
            public final void a(e.a.v.b bVar) {
                c cVar = c.this;
                f.a((Object) bVar, "it");
                cVar.a(bVar);
            }
        }

        a() {
        }

        @Override // e.a.t
        public final o<T> a(o<T> oVar) {
            f.b(oVar, "upstream");
            return oVar.b(e.a.b0.b.a()).a(e.a.u.b.a.a()).a(new C0037a());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    static final class b<Upstream, Downstream, T> implements l<T, T> {

        static final class a<T> implements e.a.x.d<e.a.v.b> {
            a() {
            }

            @Override // e.a.x.d
            public final void a(e.a.v.b bVar) {
                c cVar = c.this;
                f.a((Object) bVar, "it");
                cVar.a(bVar);
            }
        }

        b() {
        }

        @Override // e.a.l
        public final h<T> a(h<T> hVar) {
            f.b(hVar, "upstream");
            return hVar.b(e.a.b0.b.a()).a(e.a.u.b.a.a()).b(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(e.a.v.b bVar) {
        this.f1619c.b(bVar);
    }

    public abstract void a(animebestapp.com.c.a.a aVar);

    public final <T> t<T, T> b() {
        return new a();
    }

    public final void c() {
        this.f1619c.c();
    }

    public final <T> l<T, T> d() {
        return new b();
    }
}
