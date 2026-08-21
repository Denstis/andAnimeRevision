package animebestapp.com.b.b;

import android.app.Application;
import animebestapp.com.b.a.b;
import animebestapp.com.models.Anime;
import animebestapp.com.models.g;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f1469a;

    public a(Application application) {
        f.b(application, "app");
        this.f1469a = new b(application);
    }

    public final int a() {
        return this.f1469a.e();
    }

    public final g a(g gVar) {
        f.b(gVar, "userInfo");
        this.f1469a.a(gVar);
        return gVar;
    }

    public final Integer a(long j2) {
        return this.f1469a.a(j2);
    }

    public final void a(int i2) {
        this.f1469a.b(i2);
    }

    public final void a(long j2, int i2) {
        this.f1469a.b(j2, i2);
    }

    public final void a(long j2, int i2, long j3) {
        this.f1469a.a(j2, i2, j3);
    }

    public final boolean a(Anime anime) {
        f.b(anime, "anime");
        return this.f1469a.a(anime);
    }

    public final long b() {
        return this.f1469a.g();
    }

    public final long b(long j2, int i2) {
        return this.f1469a.a(j2, i2);
    }

    public final void b(int i2) {
        this.f1469a.a(i2);
        this.f1469a.i();
    }

    public final g c() {
        return this.f1469a.h();
    }

    public final boolean d() {
        return this.f1469a.f();
    }

    public final void e() {
        this.f1469a.a();
    }

    public final void f() {
        this.f1469a.b(true);
        this.f1469a.i();
    }

    public final void g() {
        this.f1469a.b(System.currentTimeMillis());
    }
}
