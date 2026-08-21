package animebestapp.com.ui.info.player;

import android.util.Log;
import animebestapp.com.models.Anime;
import animebestapp.com.models.XFields;
import animebestapp.com.models.g;
import c.b.a.c.d;
import com.google.android.gms.common.internal.ImagesContract;
import g.m.j;
import g.p.b.i;
import g.s.n;
import h.a0;
import h.c0;
import h.d0;
import h.x;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.c<animebestapp.com.ui.info.player.c> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedHashMap<String, String> f1839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public animebestapp.com.b.b.a f1840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public x f1841f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public animebestapp.com.d.a f1842g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap<Integer, String> f1843h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Anime f1844i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f1845j;

    /* JADX INFO: renamed from: animebestapp.com.ui.info.player.a$a, reason: collision with other inner class name */
    public static final class C0060a implements h.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i f1847b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f1848c;

        /* JADX INFO: renamed from: animebestapp.com.ui.info.player.a$a$a, reason: collision with other inner class name */
        static final class C0061a<V> implements d.a<animebestapp.com.ui.info.player.c> {
            C0061a() {
            }

            @Override // c.b.a.c.d.a
            public final void a(animebestapp.com.ui.info.player.c cVar) {
                g.p.b.f.b(cVar, "it");
                String str = (String) a.this.f1843h.get(Integer.valueOf(C0060a.this.f1848c));
                if (str != null) {
                    g.p.b.f.a((Object) str, "it1");
                    Set setKeySet = a.this.f1839d.keySet();
                    g.p.b.f.a((Object) setKeySet, "series.keys");
                    Object objB = j.b(setKeySet, C0060a.this.f1848c);
                    g.p.b.f.a(objB, "series.keys.elementAt(index)");
                    cVar.a(str, (String) objB, a.this.f().b(a.this.f1844i.getId(), C0060a.this.f1848c));
                }
            }
        }

        C0060a(i iVar, int i2) {
            this.f1847b = iVar;
            this.f1848c = i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // h.f
        public void a(h.e eVar, c0 c0Var) {
            g.p.b.f.b(eVar, "call");
            g.p.b.f.b(c0Var, "response");
            i iVar = this.f1847b;
            d0 d0VarJ = c0Var.j();
            iVar.f4389b = d0VarJ != null ? d0VarJ.n() : 0;
            String str = (String) this.f1847b.f4389b;
            if (str != null) {
                int iB = n.b((CharSequence) str, "file:\"", 0, false, 6, (Object) null) + 6;
                int iA = n.a((CharSequence) str, "\"", n.b((CharSequence) str, "file:\"", 0, false, 6, (Object) null) + 6, false, 4, (Object) null);
                if (str == null) {
                    throw new g.j("null cannot be cast to non-null type java.lang.String");
                }
                String strSubstring = str.substring(iB, iA);
                g.p.b.f.a((Object) strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                a.this.f1843h.put(Integer.valueOf(this.f1848c), strSubstring);
                if (a.this.f1843h.get(Integer.valueOf(this.f1848c)) != null) {
                    a.this.a(new C0061a());
                }
            }
        }

        @Override // h.f
        public void a(h.e eVar, IOException iOException) {
            g.p.b.f.b(eVar, "call");
            g.p.b.f.b(iOException, "e");
            iOException.printStackTrace();
        }
    }

    static final class b<V> implements d.a<animebestapp.com.ui.info.player.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f1850a;

        b(int i2) {
            this.f1850a = i2;
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.player.c cVar) {
            g.p.b.f.b(cVar, "it");
            cVar.c(this.f1850a > 0);
        }
    }

    static final class c<V> implements d.a<animebestapp.com.ui.info.player.c> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1852b;

        c(int i2) {
            this.f1852b = i2;
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.player.c cVar) {
            g.p.b.f.b(cVar, "it");
            cVar.b(this.f1852b < a.this.f1839d.keySet().size() - 1);
        }
    }

    static final class d<V> implements d.a<animebestapp.com.ui.info.player.c> {
        d() {
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.player.c cVar) {
            g.p.b.f.b(cVar, "it");
            cVar.a(a.this.f1839d);
        }
    }

    static final class e<V> implements d.a<animebestapp.com.ui.info.player.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f1854a;

        e(int i2) {
            this.f1854a = i2;
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.player.c cVar) {
            g.p.b.f.b(cVar, "it");
            cVar.d(this.f1854a);
        }
    }

    static final class f<V> implements d.a<animebestapp.com.ui.info.player.c> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1856b;

        f(int i2) {
            this.f1856b = i2;
        }

        @Override // c.b.a.c.d.a
        public final void a(animebestapp.com.ui.info.player.c cVar) {
            g.p.b.f.b(cVar, "it");
            String str = (String) a.this.f1843h.get(Integer.valueOf(this.f1856b));
            if (str != null) {
                g.p.b.f.a((Object) str, "it1");
                Set setKeySet = a.this.f1839d.keySet();
                g.p.b.f.a((Object) setKeySet, "series.keys");
                Object objB = j.b(setKeySet, this.f1856b);
                g.p.b.f.a(objB, "series.keys.elementAt(index)");
                cVar.a(str, (String) objB, a.this.f().b(a.this.f1844i.getId(), this.f1856b));
            }
        }
    }

    public a(Anime anime, int i2) {
        g.p.b.f.b(anime, "anime");
        this.f1844i = anime;
        this.f1845j = i2;
        XFields xfields = this.f1844i.getXfields();
        LinkedHashMap<String, String> series_list = xfields != null ? xfields.getSeries_list() : null;
        if (series_list == null) {
            g.p.b.f.a();
            throw null;
        }
        this.f1839d = series_list;
        this.f1843h = new HashMap<>();
    }

    public static /* synthetic */ void a(a aVar, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = aVar.f1845j;
        }
        aVar.a(i2);
    }

    public final void a(int i2) {
        Log.d("LOGS", "index: " + i2);
        a(new b(i2));
        a(new c(i2));
        a(new d());
        a(new e(i2));
        animebestapp.com.b.b.a aVar = this.f1840e;
        if (aVar == null) {
            g.p.b.f.c("mRepository");
            throw null;
        }
        aVar.a(this.f1844i.getId(), i2);
        if (this.f1843h.get(Integer.valueOf(i2)) != null) {
            a(new f(i2));
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("https:");
        LinkedHashMap<String, String> linkedHashMap = this.f1839d;
        Set<String> setKeySet = linkedHashMap.keySet();
        g.p.b.f.a((Object) setKeySet, "series.keys");
        sb.append(linkedHashMap.get(j.b(setKeySet, i2)));
        a(sb.toString(), i2);
    }

    public final void a(long j2) {
        Log.d("LOGS", "savePositionPlayer: " + j2 + ' ' + this.f1845j);
        animebestapp.com.b.b.a aVar = this.f1840e;
        if (aVar != null) {
            aVar.a(this.f1844i.getId(), this.f1845j, j2);
        } else {
            g.p.b.f.c("mRepository");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.a.c
    public void a(animebestapp.com.c.a.a aVar) {
        g.p.b.f.b(aVar, "component");
        aVar.a(this);
    }

    public final void a(String str, int i2) {
        g.p.b.f.b(str, ImagesContract.URL);
        i iVar = new i();
        iVar.f4389b = "";
        a0.a aVar = new a0.a();
        aVar.b(str);
        a0 a0VarA = aVar.a();
        x xVar = this.f1841f;
        if (xVar != null) {
            xVar.a(a0VarA).a(new C0060a(iVar, i2));
        } else {
            g.p.b.f.c("client");
            throw null;
        }
    }

    public final void e() {
        this.f1845j--;
        if (this.f1845j < 0) {
            this.f1845j = 0;
        }
        animebestapp.com.b.b.a aVar = this.f1840e;
        if (aVar == null) {
            g.p.b.f.c("mRepository");
            throw null;
        }
        aVar.a(this.f1844i.getId(), this.f1845j);
        a(this, 0, 1, null);
    }

    public final animebestapp.com.b.b.a f() {
        animebestapp.com.b.b.a aVar = this.f1840e;
        if (aVar != null) {
            return aVar;
        }
        g.p.b.f.c("mRepository");
        throw null;
    }

    public final g g() {
        animebestapp.com.d.a aVar = this.f1842g;
        if (aVar != null) {
            return aVar.f();
        }
        g.p.b.f.c("mainIteractor");
        throw null;
    }

    public final void h() {
        this.f1845j++;
        if (this.f1845j > this.f1839d.keySet().size() - 1) {
            this.f1845j = this.f1839d.keySet().size() - 1;
        }
        animebestapp.com.b.b.a aVar = this.f1840e;
        if (aVar == null) {
            g.p.b.f.c("mRepository");
            throw null;
        }
        aVar.a(this.f1844i.getId(), this.f1845j);
        a(this, 0, 1, null);
    }
}
