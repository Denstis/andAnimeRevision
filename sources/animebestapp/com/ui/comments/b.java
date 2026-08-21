package animebestapp.com.ui.comments;

import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.e.c.j;
import animebestapp.com.models.Comment;
import c.b.a.c.d;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import e.a.k;
import g.m.l;
import g.m.t;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b extends animebestapp.com.ui.a.c<animebestapp.com.ui.comments.d> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public animebestapp.com.d.a f1680d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Comment> f1681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1682f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f1683g;

    static final class a<T> implements e.a.x.d<List<? extends Comment>> {

        /* JADX INFO: renamed from: animebestapp.com.ui.comments.b$a$a, reason: collision with other inner class name */
        static final class C0044a<V> implements d.a<animebestapp.com.ui.comments.d> {
            C0044a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.comments.d dVar) {
                g.p.b.f.b(dVar, "it");
                List list = b.this.f1681e;
                HashSet hashSet = new HashSet();
                ArrayList arrayList = new ArrayList();
                for (T t : list) {
                    if (hashSet.add(((Comment) t).getId())) {
                        arrayList.add(t);
                    }
                }
                dVar.d(arrayList);
            }
        }

        /* JADX INFO: renamed from: animebestapp.com.ui.comments.b$a$b, reason: collision with other inner class name */
        static final class C0045b<V> implements d.a<animebestapp.com.ui.comments.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final C0045b f1686a = new C0045b();

            C0045b() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.comments.d dVar) {
                g.p.b.f.b(dVar, "it");
                dVar.h();
            }
        }

        a() {
        }

        @Override // e.a.x.d
        public /* bridge */ /* synthetic */ void a(List<? extends Comment> list) {
            a2((List<Comment>) list);
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2(List<Comment> list) {
            b bVar = b.this;
            g.p.b.f.a((Object) list, "items");
            bVar.f1681e = t.b(list, b.this.f1681e);
            b.this.a(new C0044a());
            b.this.a(C0045b.f1686a);
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.comments.b$b, reason: collision with other inner class name */
    static final class C0046b<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: animebestapp.com.ui.comments.b$b$a */
        static final class a<V> implements d.a<animebestapp.com.ui.comments.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f1688a = new a();

            a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.comments.d dVar) {
                g.p.b.f.b(dVar, "it");
                dVar.d(l.a());
            }
        }

        C0046b() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            if (b.this.f()) {
                b.this.a(a.f1688a);
            }
            th.printStackTrace();
        }
    }

    static final class c<T, R> implements e.a.x.e<T, k<? extends R>> {
        c() {
        }

        @Override // e.a.x.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e.a.h<List<Comment>> apply(Integer num) {
            g.p.b.f.b(num, "page");
            b.this.a(num.intValue() == 1);
            return b.this.e().b(b.this.f1683g, (num.intValue() - 1) * 5);
        }
    }

    static final class d<T> implements e.a.x.d<List<? extends Comment>> {

        static final class a<V> implements d.a<animebestapp.com.ui.comments.d> {
            a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.comments.d dVar) {
                g.p.b.f.b(dVar, "it");
                dVar.d(b.this.f1681e);
            }
        }

        d() {
        }

        @Override // e.a.x.d
        public /* bridge */ /* synthetic */ void a(List<? extends Comment> list) {
            a2((List<Comment>) list);
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2(List<Comment> list) {
            b bVar = b.this;
            List list2 = bVar.f1681e;
            g.p.b.f.a((Object) list, "items");
            bVar.f1681e = t.b(list2, list);
            b.this.a(new a());
        }
    }

    static final class e<T> implements e.a.x.d<Throwable> {

        static final class a<V> implements d.a<animebestapp.com.ui.comments.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f1693a = new a();

            a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.comments.d dVar) {
                g.p.b.f.b(dVar, "it");
                dVar.d(l.a());
            }
        }

        e() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            if (b.this.f()) {
                b.this.a(a.f1693a);
            }
            th.printStackTrace();
        }
    }

    static final class f<V> implements d.a<animebestapp.com.ui.comments.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f1694a = new f();

        f() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.comments.d dVar) {
            g.p.b.f.b(dVar, "it");
            dVar.a("Текст Вашего комментария слишком короткий и по мнению администрации сайта не несёт полезной информации.");
        }
    }

    static final class g<T> implements e.a.x.d<g.l> {
        g() {
        }

        @Override // e.a.x.d
        public final void a(g.l lVar) {
            b.this.g();
        }
    }

    static final class h<T> implements e.a.x.d<Throwable> {

        static final class a<V> implements d.a<animebestapp.com.ui.comments.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ j f1697a;

            a(j jVar) {
                this.f1697a = jVar;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.comments.d dVar) {
                g.p.b.f.b(dVar, "it");
                String message = this.f1697a.getMessage();
                if (message == null) {
                    message = "";
                }
                dVar.a(message);
            }
        }

        /* JADX INFO: renamed from: animebestapp.com.ui.comments.b$h$b, reason: collision with other inner class name */
        static final class C0047b<V> implements d.a<animebestapp.com.ui.comments.d> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Throwable f1698a;

            C0047b(Throwable th) {
                this.f1698a = th;
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.comments.d dVar) {
                g.p.b.f.b(dVar, "it");
                String message = this.f1698a.getMessage();
                if (message == null) {
                    message = "";
                }
                dVar.a(message);
            }
        }

        h() {
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
                animebestapp.com.ui.comments.b r1 = animebestapp.com.ui.comments.b.this
                animebestapp.com.ui.comments.b$h$a r2 = new animebestapp.com.ui.comments.b$h$a
                r2.<init>(r0)
                animebestapp.com.ui.comments.b.a(r1, r2)
                goto L46
            L3c:
                animebestapp.com.ui.comments.b r0 = animebestapp.com.ui.comments.b.this
                animebestapp.com.ui.comments.b$h$b r1 = new animebestapp.com.ui.comments.b$h$b
                r1.<init>(r4)
                animebestapp.com.ui.comments.b.a(r0, r1)
            L46:
                r4.printStackTrace()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.ui.comments.b.h.a(java.lang.Throwable):void");
        }
    }

    public b(String str) {
        g.p.b.f.b(str, TtmlNode.ATTR_ID);
        this.f1683g = str;
        this.f1681e = l.a();
        this.f1682f = true;
    }

    public final void a(RecyclerView recyclerView) {
        g.p.b.f.b(recyclerView, "rvList");
        c();
        animebestapp.com.utils.h.f2130a.a(recyclerView, 0, 5).a().a(e.a.b0.b.a()).c(new c()).a((e.a.l<? super R, ? extends R>) d()).a(new d(), new e());
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        g.p.b.f.b(aVar, "component");
        aVar.a(this);
    }

    public final void a(String str, String str2) {
        g.p.b.f.b(str, MimeTypes.BASE_TYPE_TEXT);
        g.p.b.f.b(str2, "ipv4HostAddress");
        if (str.length() < 10) {
            a(f.f1694a);
            return;
        }
        animebestapp.com.d.a aVar = this.f1680d;
        if (aVar != null) {
            aVar.b(str, this.f1683g, str2).a((e.a.t<? super g.l, ? extends R>) b()).a(new g(), new h<>());
        } else {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
    }

    public final void a(boolean z) {
        this.f1682f = z;
    }

    public final animebestapp.com.d.a e() {
        animebestapp.com.d.a aVar = this.f1680d;
        if (aVar != null) {
            return aVar;
        }
        g.p.b.f.c("mainIteractor");
        throw null;
    }

    public final boolean f() {
        return this.f1682f;
    }

    public final void g() {
        animebestapp.com.d.a aVar = this.f1680d;
        if (aVar != null) {
            aVar.b(this.f1683g, 0).a((e.a.l<? super List<Comment>, ? extends R>) d()).a(new a(), new C0046b<>());
        } else {
            g.p.b.f.c("mainIteractor");
            throw null;
        }
    }
}
