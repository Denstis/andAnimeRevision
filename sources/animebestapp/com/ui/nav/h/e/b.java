package animebestapp.com.ui.nav.h.e;

import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.models.Anime;
import c.b.a.c.d;
import com.google.android.gms.actions.SearchIntents;
import e.a.h;
import e.a.k;
import e.a.l;
import e.a.x.e;
import g.p.b.f;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b extends animebestapp.com.ui.a.c<d> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f2089d;

    static final class a<T, R> implements e<T, k<? extends R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f2091b;

        a(String str) {
            this.f2091b = str;
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final h<List<Anime>> apply(Integer num) {
            f.b(num, "page");
            return b.this.e().d(this.f2091b, num.intValue());
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.e.b$b, reason: collision with other inner class name */
    static final class C0087b<T> implements e.a.x.d<List<? extends Anime>> {

        /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.e.b$b$a */
        static final class a<V> implements d.a<d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f2093a;

            a(List list) {
                this.f2093a = list;
            }

            @Override // c.b.a.c.d.a
            public final void a(d dVar) {
                f.b(dVar, "it");
                List<Anime> list = this.f2093a;
                f.a((Object) list, "items");
                dVar.a(list);
            }
        }

        C0087b() {
        }

        @Override // e.a.x.d
        public /* bridge */ /* synthetic */ void a(List<? extends Anime> list) {
            a2((List<Anime>) list);
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2(List<Anime> list) {
            b.this.a(new a(list));
        }
    }

    static final class c<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f2094a = new c();

        c() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(RecyclerView recyclerView, String str) {
        f.b(recyclerView, "rvList");
        f.b(str, SearchIntents.EXTRA_QUERY);
        animebestapp.com.utils.h.f2130a.a(recyclerView, 0, 5).a().a(e.a.b0.b.a()).c(new a(str)).a((l<? super R, ? extends R>) d()).a(new C0087b(), c.f2094a);
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        f.b(aVar, "component");
        aVar.a(this);
    }

    public final animebestapp.com.d.a e() {
        animebestapp.com.d.a aVar = this.f2089d;
        if (aVar != null) {
            return aVar;
        }
        f.c("mainIteractor");
        throw null;
    }
}
