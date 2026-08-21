package animebestapp.com.b.a;

import android.content.Context;
import android.content.SharedPreferences;
import animebestapp.com.models.Anime;
import animebestapp.com.models.g;
import com.google.gson.Gson;
import g.p.b.d;
import g.p.b.f;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f1462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private animebestapp.com.b.a.a f1463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1467f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1468g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(d dVar) {
            this();
        }
    }

    static {
        new a(null);
    }

    public b(Context context) {
        f.b(context, "context");
        this.f1464c = true;
        this.f1467f = -1;
        SharedPreferences sharedPreferences = context.getSharedPreferences("storage", 0);
        f.a((Object) sharedPreferences, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)");
        this.f1462a = sharedPreferences;
        j();
    }

    private final void j() {
        animebestapp.com.b.a.a aVar;
        this.f1468g = this.f1462a.getInt("001", 2);
        this.f1464c = this.f1462a.getBoolean("003", true);
        this.f1465d = this.f1462a.getBoolean("004", false);
        this.f1467f = this.f1462a.getInt("005", -1);
        this.f1466e = this.f1462a.getLong("007", -1L);
        try {
            Object objFromJson = new Gson().fromJson(this.f1462a.getString("002", "{}"), (Class<Object>) animebestapp.com.b.a.a.class);
            f.a(objFromJson, "Gson().fromJson(sp.getSt… \"{}\"), Cash::class.java)");
            aVar = (animebestapp.com.b.a.a) objFromJson;
        } catch (Throwable unused) {
            aVar = new animebestapp.com.b.a.a();
        }
        this.f1463b = aVar;
    }

    public final long a(long j2, int i2) {
        animebestapp.com.b.a.a aVar = this.f1463b;
        if (aVar != null) {
            return aVar.a(j2, i2);
        }
        f.c("cash");
        throw null;
    }

    public final Integer a(long j2) {
        animebestapp.com.b.a.a aVar = this.f1463b;
        if (aVar == null) {
            f.c("cash");
            throw null;
        }
        if (aVar.b().get(Long.valueOf(j2)) != null) {
            animebestapp.com.b.a.a aVar2 = this.f1463b;
            if (aVar2 == null) {
                f.c("cash");
                throw null;
            }
            Integer num = aVar2.b().get(Long.valueOf(j2));
            if (num == null) {
                f.a();
                throw null;
            }
            if (f.a(num.intValue(), 0) >= 0) {
                animebestapp.com.b.a.a aVar3 = this.f1463b;
                if (aVar3 != null) {
                    return aVar3.b().get(Long.valueOf(j2));
                }
                f.c("cash");
                throw null;
            }
        }
        return 0;
    }

    public final void a() {
        animebestapp.com.b.a.a aVar = this.f1463b;
        if (aVar == null) {
            f.c("cash");
            throw null;
        }
        aVar.a((g) null);
        animebestapp.com.b.a.a aVar2 = this.f1463b;
        if (aVar2 == null) {
            f.c("cash");
            throw null;
        }
        aVar2.a(new LinkedHashMap<>());
        animebestapp.com.b.a.a aVar3 = this.f1463b;
        if (aVar3 == null) {
            f.c("cash");
            throw null;
        }
        aVar3.b(new LinkedHashMap<>());
        animebestapp.com.b.a.a aVar4 = this.f1463b;
        if (aVar4 == null) {
            f.c("cash");
            throw null;
        }
        aVar4.c(new LinkedHashMap<>());
        i();
    }

    public final void a(int i2) {
        this.f1468g = i2;
    }

    public final void a(long j2, int i2, long j3) {
        animebestapp.com.b.a.a aVar = this.f1463b;
        if (aVar == null) {
            f.c("cash");
            throw null;
        }
        aVar.a(j2, i2, j3);
        i();
    }

    public final void a(g gVar) {
        f.b(gVar, "userInfo");
        animebestapp.com.b.a.a aVar = this.f1463b;
        if (aVar == null) {
            f.c("cash");
            throw null;
        }
        aVar.a(gVar);
        i();
    }

    public final void a(boolean z) {
        this.f1464c = z;
    }

    public final boolean a(Anime anime) {
        f.b(anime, "anime");
        animebestapp.com.b.a.a aVar = this.f1463b;
        if (aVar != null) {
            return aVar.a().get(Long.valueOf(anime.getId())) != null;
        }
        f.c("cash");
        throw null;
    }

    public final void b(int i2) {
        this.f1467f = i2;
        i();
    }

    public final void b(long j2) {
        this.f1462a.edit().putLong("008", j2).apply();
    }

    public final void b(long j2, int i2) {
        animebestapp.com.b.a.a aVar = this.f1463b;
        if (aVar == null) {
            f.c("cash");
            throw null;
        }
        aVar.b().put(Long.valueOf(j2), Integer.valueOf(i2));
        i();
    }

    public final void b(boolean z) {
        this.f1465d = z;
    }

    public final boolean b() {
        return this.f1464c;
    }

    public final long c() {
        return this.f1466e;
    }

    public final void c(long j2) {
        this.f1466e = j2;
        i();
    }

    public final int d() {
        return this.f1468g;
    }

    public final int e() {
        return this.f1467f;
    }

    public final boolean f() {
        return this.f1465d;
    }

    public final long g() {
        return this.f1462a.getLong("008", 0L);
    }

    public final g h() {
        animebestapp.com.b.a.a aVar = this.f1463b;
        if (aVar != null) {
            return aVar.c();
        }
        f.c("cash");
        throw null;
    }

    public final void i() {
        SharedPreferences.Editor editorEdit = this.f1462a.edit();
        editorEdit.putInt("001", this.f1468g);
        editorEdit.putBoolean("003", this.f1464c);
        editorEdit.putBoolean("004", this.f1465d);
        editorEdit.putInt("005", this.f1467f);
        editorEdit.putLong("007", this.f1466e);
        Gson gson = new Gson();
        animebestapp.com.b.a.a aVar = this.f1463b;
        if (aVar == null) {
            f.c("cash");
            throw null;
        }
        editorEdit.putString("002", gson.toJson(aVar));
        editorEdit.apply();
    }
}
