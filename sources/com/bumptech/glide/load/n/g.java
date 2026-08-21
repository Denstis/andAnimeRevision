package com.bumptech.glide.load.n;

import com.bumptech.glide.load.n.h;
import com.bumptech.glide.load.o.n;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class g<Transcode> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<n.a<?>> f3539a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<com.bumptech.glide.load.g> f3540b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c.a.a.e f3541c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f3542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3544f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Class<?> f3545g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private h.e f3546h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.bumptech.glide.load.i f3547i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map<Class<?>, com.bumptech.glide.load.l<?>> f3548j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Class<Transcode> f3549k;
    private boolean l;
    private boolean m;
    private com.bumptech.glide.load.g n;
    private c.a.a.h o;
    private j p;
    private boolean q;
    private boolean r;

    g() {
    }

    <X> com.bumptech.glide.load.d<X> a(X x) {
        return this.f3541c.f().c(x);
    }

    <Z> com.bumptech.glide.load.k<Z> a(v<Z> vVar) {
        return this.f3541c.f().a((v) vVar);
    }

    <Data> t<Data, ?, Transcode> a(Class<Data> cls) {
        return this.f3541c.f().a(cls, this.f3545g, this.f3549k);
    }

    List<com.bumptech.glide.load.o.n<File, ?>> a(File file) {
        return this.f3541c.f().a(file);
    }

    void a() {
        this.f3541c = null;
        this.f3542d = null;
        this.n = null;
        this.f3545g = null;
        this.f3549k = null;
        this.f3547i = null;
        this.o = null;
        this.f3548j = null;
        this.p = null;
        this.f3539a.clear();
        this.l = false;
        this.f3540b.clear();
        this.m = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    <R> void a(c.a.a.e eVar, Object obj, com.bumptech.glide.load.g gVar, int i2, int i3, j jVar, Class<?> cls, Class<R> cls2, c.a.a.h hVar, com.bumptech.glide.load.i iVar, Map<Class<?>, com.bumptech.glide.load.l<?>> map, boolean z, boolean z2, h.e eVar2) {
        this.f3541c = eVar;
        this.f3542d = obj;
        this.n = gVar;
        this.f3543e = i2;
        this.f3544f = i3;
        this.p = jVar;
        this.f3545g = cls;
        this.f3546h = eVar2;
        this.f3549k = cls2;
        this.o = hVar;
        this.f3547i = iVar;
        this.f3548j = map;
        this.q = z;
        this.r = z2;
    }

    boolean a(com.bumptech.glide.load.g gVar) {
        List<n.a<?>> listG = g();
        int size = listG.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (listG.get(i2).f3737a.equals(gVar)) {
                return true;
            }
        }
        return false;
    }

    <Z> com.bumptech.glide.load.l<Z> b(Class<Z> cls) {
        com.bumptech.glide.load.l<Z> lVar = (com.bumptech.glide.load.l) this.f3548j.get(cls);
        if (lVar == null) {
            Iterator<Map.Entry<Class<?>, com.bumptech.glide.load.l<?>>> it = this.f3548j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, com.bumptech.glide.load.l<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    lVar = (com.bumptech.glide.load.l) next.getValue();
                    break;
                }
            }
        }
        if (lVar != null) {
            return lVar;
        }
        if (!this.f3548j.isEmpty() || !this.q) {
            return com.bumptech.glide.load.p.b.a();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    com.bumptech.glide.load.n.a0.b b() {
        return this.f3541c.a();
    }

    boolean b(v<?> vVar) {
        return this.f3541c.f().b(vVar);
    }

    List<com.bumptech.glide.load.g> c() {
        if (!this.m) {
            this.m = true;
            this.f3540b.clear();
            List<n.a<?>> listG = g();
            int size = listG.size();
            for (int i2 = 0; i2 < size; i2++) {
                n.a<?> aVar = listG.get(i2);
                if (!this.f3540b.contains(aVar.f3737a)) {
                    this.f3540b.add(aVar.f3737a);
                }
                for (int i3 = 0; i3 < aVar.f3738b.size(); i3++) {
                    if (!this.f3540b.contains(aVar.f3738b.get(i3))) {
                        this.f3540b.add(aVar.f3738b.get(i3));
                    }
                }
            }
        }
        return this.f3540b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    boolean c(Class<?> cls) {
        return a((Class) cls) != null;
    }

    com.bumptech.glide.load.n.b0.a d() {
        return this.f3546h.a();
    }

    j e() {
        return this.p;
    }

    int f() {
        return this.f3544f;
    }

    List<n.a<?>> g() {
        if (!this.l) {
            this.l = true;
            this.f3539a.clear();
            List listA = this.f3541c.f().a(this.f3542d);
            int size = listA.size();
            for (int i2 = 0; i2 < size; i2++) {
                n.a<?> aVarA = ((com.bumptech.glide.load.o.n) listA.get(i2)).a(this.f3542d, this.f3543e, this.f3544f, this.f3547i);
                if (aVarA != null) {
                    this.f3539a.add(aVarA);
                }
            }
        }
        return this.f3539a;
    }

    Class<?> h() {
        return this.f3542d.getClass();
    }

    com.bumptech.glide.load.i i() {
        return this.f3547i;
    }

    c.a.a.h j() {
        return this.o;
    }

    List<Class<?>> k() {
        return this.f3541c.f().b(this.f3542d.getClass(), this.f3545g, this.f3549k);
    }

    com.bumptech.glide.load.g l() {
        return this.n;
    }

    Class<?> m() {
        return this.f3549k;
    }

    int n() {
        return this.f3543e;
    }

    boolean o() {
        return this.r;
    }
}
