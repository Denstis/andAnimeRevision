package c.a.a;

import android.content.Context;
import c.a.a.o.l;
import com.bumptech.glide.load.n.b0.a;
import com.bumptech.glide.load.n.b0.i;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.bumptech.glide.load.n.k f3080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.bumptech.glide.load.n.a0.e f3081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bumptech.glide.load.n.a0.b f3082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.bumptech.glide.load.n.b0.h f3083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bumptech.glide.load.n.c0.a f3084f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.bumptech.glide.load.n.c0.a f3085g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a.InterfaceC0137a f3086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.bumptech.glide.load.n.b0.i f3087i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private c.a.a.o.d f3088j;
    private l.b m;
    private com.bumptech.glide.load.n.c0.a n;
    private boolean o;
    private List<c.a.a.r.e<Object>> p;
    private boolean q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, l<?, ?>> f3079a = new b.e.a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f3089k = 4;
    private c.a.a.r.f l = new c.a.a.r.f();

    c a(Context context) {
        if (this.f3084f == null) {
            this.f3084f = com.bumptech.glide.load.n.c0.a.d();
        }
        if (this.f3085g == null) {
            this.f3085g = com.bumptech.glide.load.n.c0.a.c();
        }
        if (this.n == null) {
            this.n = com.bumptech.glide.load.n.c0.a.b();
        }
        if (this.f3087i == null) {
            this.f3087i = new i.a(context).a();
        }
        if (this.f3088j == null) {
            this.f3088j = new c.a.a.o.f();
        }
        if (this.f3081c == null) {
            int iB = this.f3087i.b();
            if (iB > 0) {
                this.f3081c = new com.bumptech.glide.load.n.a0.k(iB);
            } else {
                this.f3081c = new com.bumptech.glide.load.n.a0.f();
            }
        }
        if (this.f3082d == null) {
            this.f3082d = new com.bumptech.glide.load.n.a0.j(this.f3087i.a());
        }
        if (this.f3083e == null) {
            this.f3083e = new com.bumptech.glide.load.n.b0.g(this.f3087i.c());
        }
        if (this.f3086h == null) {
            this.f3086h = new com.bumptech.glide.load.n.b0.f(context);
        }
        if (this.f3080b == null) {
            this.f3080b = new com.bumptech.glide.load.n.k(this.f3083e, this.f3086h, this.f3085g, this.f3084f, com.bumptech.glide.load.n.c0.a.e(), com.bumptech.glide.load.n.c0.a.b(), this.o);
        }
        List<c.a.a.r.e<Object>> list = this.p;
        this.p = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        c.a.a.o.l lVar = new c.a.a.o.l(this.m);
        com.bumptech.glide.load.n.k kVar = this.f3080b;
        com.bumptech.glide.load.n.b0.h hVar = this.f3083e;
        com.bumptech.glide.load.n.a0.e eVar = this.f3081c;
        com.bumptech.glide.load.n.a0.b bVar = this.f3082d;
        c.a.a.o.d dVar = this.f3088j;
        int i2 = this.f3089k;
        c.a.a.r.f fVar = this.l;
        fVar.F();
        return new c(context, kVar, hVar, eVar, bVar, lVar, dVar, i2, fVar, this.f3079a, this.p, this.q);
    }

    void a(l.b bVar) {
        this.m = bVar;
    }
}
