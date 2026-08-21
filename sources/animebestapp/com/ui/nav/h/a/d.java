package animebestapp.com.ui.nav.h.a;

import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.models.Anime;
import c.b.a.c.d;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import e.a.h;
import e.a.k;
import e.a.l;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d extends animebestapp.com.ui.a.c<g> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f1957d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f1958e;

    static final class a<V> implements d.a<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f1959a;

        a(f fVar) {
            this.f1959a = fVar;
        }

        @Override // c.b.a.c.d.a
        public final void a(g gVar) {
            g.p.b.f.b(gVar, "it");
            gVar.a(this.f1959a.a(), this.f1959a.b());
        }
    }

    static final class b<T, R> implements e.a.x.e<T, k<? extends R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1961b;

        b(String str) {
            this.f1961b = str;
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final h<List<Anime>> apply(Integer num) {
            g.p.b.f.b(num, "page");
            return d.this.e().a(this.f1961b, num.intValue());
        }
    }

    static final class c<T> implements e.a.x.d<List<? extends Anime>> {

        static final class a<V> implements d.a<g> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f1963a;

            a(List list) {
                this.f1963a = list;
            }

            @Override // c.b.a.c.d.a
            public final void a(g gVar) {
                g.p.b.f.b(gVar, "it");
                List<Anime> list = this.f1963a;
                g.p.b.f.a((Object) list, "items");
                gVar.a(list);
            }
        }

        c() {
        }

        @Override // e.a.x.d
        public /* bridge */ /* synthetic */ void a(List<? extends Anime> list) {
            a2((List<Anime>) list);
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2(List<Anime> list) {
            d.this.a(new a(list));
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.a.d$d, reason: collision with other inner class name */
    static final class C0069d<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0069d f1964a = new C0069d();

        C0069d() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            th.printStackTrace();
        }
    }

    static final class e<V> implements d.a<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f1965a;

        e(f fVar) {
            this.f1965a = fVar;
        }

        @Override // c.b.a.c.d.a
        public final void a(g gVar) {
            g.p.b.f.b(gVar, "it");
            gVar.c(this.f1965a.b());
        }
    }

    public d(String str) {
        g.p.b.f.b(str, "key");
        this.f1958e = str;
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        g.p.b.f.b(aVar, "component");
        aVar.a(this);
    }

    public final void a(String str, RecyclerView recyclerView) {
        g.p.b.f.b(str, TtmlNode.ATTR_ID);
        g.p.b.f.b(recyclerView, "rvList");
        animebestapp.com.utils.h.f2130a.a(recyclerView, 0, 5).a().a(e.a.b0.b.a()).c(new b(str)).a((l<? super R, ? extends R>) d()).a(new c(), C0069d.f1964a);
    }

    public final animebestapp.com.d.a e() {
        animebestapp.com.d.a aVar = this.f1957d;
        if (aVar != null) {
            return aVar;
        }
        g.p.b.f.c("mainIteractor");
        throw null;
    }

    public final void f() {
        f fVarJ = animebestapp.com.menu.a.f1572b.a().get(this.f1958e);
        if (fVarJ == null) {
            fVarJ = animebestapp.com.menu.b.x.j();
        }
        a(new a(fVarJ));
    }

    public final void g() {
        f fVarJ = animebestapp.com.menu.a.f1572b.a().get(this.f1958e);
        if (fVarJ == null) {
            fVarJ = animebestapp.com.menu.b.x.j();
        }
        a(new e(fVarJ));
    }
}
