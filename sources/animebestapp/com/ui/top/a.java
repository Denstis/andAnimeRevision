package animebestapp.com.ui.top;

import animebestapp.com.models.Anime;
import c.b.a.c.d;
import e.a.t;
import e.a.x.d;
import g.p.b.f;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.c<c> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f2120d;

    /* JADX INFO: renamed from: animebestapp.com.ui.top.a$a, reason: collision with other inner class name */
    static final class C0089a<T> implements d<List<? extends Anime>> {

        /* JADX INFO: renamed from: animebestapp.com.ui.top.a$a$a, reason: collision with other inner class name */
        static final class C0090a<V> implements d.a<c> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f2122a;

            C0090a(List list) {
                this.f2122a = list;
            }

            @Override // c.b.a.c.d.a
            public final void a(c cVar) {
                f.b(cVar, "it");
                cVar.b(this.f2122a.subList(0, 11));
            }
        }

        /* JADX INFO: renamed from: animebestapp.com.ui.top.a$a$b */
        static final class b<V> implements d.a<c> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f2123a;

            b(List list) {
                this.f2123a = list;
            }

            @Override // c.b.a.c.d.a
            public final void a(c cVar) {
                f.b(cVar, "it");
                cVar.e(this.f2123a);
            }
        }

        C0089a() {
        }

        @Override // e.a.x.d
        public /* bridge */ /* synthetic */ void a(List<? extends Anime> list) {
            a2((List<Anime>) list);
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2(List<Anime> list) {
            List<Anime> listSubList = list.subList(10, list.size());
            a.this.a(new C0090a(list));
            a.this.a(new b(listSubList));
        }
    }

    static final class b<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f2124a = new b();

        b() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        f.b(aVar, "component");
        aVar.a(this);
    }

    public final void e() {
        animebestapp.com.d.a aVar = this.f2120d;
        if (aVar != null) {
            aVar.a(1).a((t<? super List<Anime>, ? extends R>) b()).a(new C0089a(), b.f2124a);
        } else {
            f.c("mainIteractor");
            throw null;
        }
    }
}
