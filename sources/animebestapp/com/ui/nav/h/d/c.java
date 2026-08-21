package animebestapp.com.ui.nav.h.d;

import animebestapp.com.models.Anime;
import c.b.a.c.d;
import e.a.t;
import g.p.b.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class c extends animebestapp.com.ui.a.c<e> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f2059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap<Long, Anime> f2060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayList<animebestapp.com.models.e> f2061f;

    static final class a<V> implements d.a<e> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f2063b;

        a(long j2) {
            this.f2063b = j2;
        }

        @Override // c.b.a.c.d.a
        public final void a(e eVar) {
            f.b(eVar, "it");
            Object obj = c.this.f2060e.get(Long.valueOf(this.f2063b));
            if (obj == null) {
                f.a();
                throw null;
            }
            f.a(obj, "map[id]!!");
            eVar.a((Anime) obj);
        }
    }

    static final class b<V> implements d.a<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f2064a = new b();

        b() {
        }

        @Override // c.b.a.c.d.a
        public final void a(e eVar) {
            f.b(eVar, "it");
            eVar.a();
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.d.c$c, reason: collision with other inner class name */
    static final class C0082c<T> implements e.a.x.d<List<? extends Anime>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f2066b;

        /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.d.c$c$a */
        static final class a<V> implements d.a<e> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f2067a;

            a(List list) {
                this.f2067a = list;
            }

            @Override // c.b.a.c.d.a
            public final void a(e eVar) {
                f.b(eVar, "it");
                eVar.a((Anime) this.f2067a.get(0));
            }
        }

        /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.d.c$c$b */
        static final class b<V> implements d.a<e> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final b f2068a = new b();

            b() {
            }

            @Override // c.b.a.c.d.a
            public final void a(e eVar) {
                f.b(eVar, "it");
                eVar.b();
            }
        }

        C0082c(long j2) {
            this.f2066b = j2;
        }

        @Override // e.a.x.d
        public /* bridge */ /* synthetic */ void a(List<? extends Anime> list) {
            a2((List<Anime>) list);
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2(List<Anime> list) {
            c.this.f2060e.put(Long.valueOf(this.f2066b), list.get(0));
            c.this.a(new a(list));
            c.this.a(b.f2068a);
        }
    }

    static final class d<T> implements e.a.x.d<Throwable> {

        static final class a<V> implements d.a<e> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f2070a = new a();

            a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(e eVar) {
                f.b(eVar, "it");
                eVar.b();
            }
        }

        d() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            c.this.a(a.f2070a);
            th.printStackTrace();
        }
    }

    public c(ArrayList<animebestapp.com.models.e> arrayList) {
        f.b(arrayList, "list");
        this.f2061f = arrayList;
        this.f2060e = new HashMap<>();
    }

    public final void a(int i2) {
        long jA = this.f2061f.get(i2).a();
        if (this.f2060e.get(Long.valueOf(jA)) != null) {
            a(new a(jA));
            return;
        }
        a(b.f2064a);
        animebestapp.com.d.a aVar = this.f2059d;
        if (aVar != null) {
            aVar.a(jA).a((t<? super List<Anime>, ? extends R>) b()).a(new C0082c(jA), new d<>());
        } else {
            f.c("mainIteractor");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        f.b(aVar, "component");
        aVar.a(this);
    }
}
