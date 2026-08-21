package animebestapp.com.ui.nav.h.c;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import c.b.a.c.d;
import e.a.h;
import e.a.k;
import e.a.l;
import e.a.x.e;
import g.p.b.f;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b extends animebestapp.com.ui.a.c<d> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f2002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f2004f;

    static final class a<T, R> implements e<T, k<? extends R>> {
        a() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final h<List<animebestapp.com.models.d>> apply(Integer num) {
            f.b(num, "page");
            b.this.f2003e = num.intValue() == 1;
            return b.this.e().c(b.this.f2004f, num.intValue());
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.c.b$b, reason: collision with other inner class name */
    static final class C0076b<T> implements e.a.x.d<List<? extends animebestapp.com.models.d>> {

        /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.c.b$b$a */
        static final class a<V> implements d.a<d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f2007a;

            a(List list) {
                this.f2007a = list;
            }

            @Override // c.b.a.c.d.a
            public final void a(d dVar) {
                f.b(dVar, "it");
                List<? extends animebestapp.com.models.d> list = this.f2007a;
                f.a((Object) list, "items");
                dVar.a(list);
            }
        }

        /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.c.b$b$b, reason: collision with other inner class name */
        static final class C0077b<V> implements d.a<d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final C0077b f2008a = new C0077b();

            C0077b() {
            }

            @Override // c.b.a.c.d.a
            public final void a(d dVar) {
                f.b(dVar, "it");
                dVar.f();
            }
        }

        C0076b() {
        }

        @Override // e.a.x.d
        public final void a(List<? extends animebestapp.com.models.d> list) {
            b.this.a(new a(list));
            if (b.this.f2003e) {
                b.this.a(C0077b.f2008a);
            }
        }
    }

    static final class c<T> implements e.a.x.d<Throwable> {
        c() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            Log.e("MainPresenter", b.this.f2004f + ' ' + th.getMessage());
            th.printStackTrace();
        }
    }

    public b(String str) {
        this.f2004f = str;
    }

    public final void a(RecyclerView recyclerView) {
        f.b(recyclerView, "rvList");
        c();
        animebestapp.com.utils.h.f2130a.a(recyclerView, 0, 5).a().a(e.a.b0.b.a()).c(new a()).a((l<? super R, ? extends R>) d()).a(new C0076b(), new c());
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        f.b(aVar, "component");
        aVar.a(this);
    }

    public final animebestapp.com.d.a e() {
        animebestapp.com.d.a aVar = this.f2002d;
        if (aVar != null) {
            return aVar;
        }
        f.c("mainIteractor");
        throw null;
    }
}
