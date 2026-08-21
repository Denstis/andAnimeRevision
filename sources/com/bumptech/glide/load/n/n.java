package com.bumptech.glide.load.n;

import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class n implements com.bumptech.glide.load.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3634d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Class<?> f3635e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Class<?> f3636f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.bumptech.glide.load.g f3637g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map<Class<?>, com.bumptech.glide.load.l<?>> f3638h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.bumptech.glide.load.i f3639i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3640j;

    n(Object obj, com.bumptech.glide.load.g gVar, int i2, int i3, Map<Class<?>, com.bumptech.glide.load.l<?>> map, Class<?> cls, Class<?> cls2, com.bumptech.glide.load.i iVar) {
        c.a.a.t.j.a(obj);
        this.f3632b = obj;
        c.a.a.t.j.a(gVar, "Signature must not be null");
        this.f3637g = gVar;
        this.f3633c = i2;
        this.f3634d = i3;
        c.a.a.t.j.a(map);
        this.f3638h = map;
        c.a.a.t.j.a(cls, "Resource class must not be null");
        this.f3635e = cls;
        c.a.a.t.j.a(cls2, "Transcode class must not be null");
        this.f3636f = cls2;
        c.a.a.t.j.a(iVar);
        this.f3639i = iVar;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f3632b.equals(nVar.f3632b) && this.f3637g.equals(nVar.f3637g) && this.f3634d == nVar.f3634d && this.f3633c == nVar.f3633c && this.f3638h.equals(nVar.f3638h) && this.f3635e.equals(nVar.f3635e) && this.f3636f.equals(nVar.f3636f) && this.f3639i.equals(nVar.f3639i);
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        if (this.f3640j == 0) {
            this.f3640j = this.f3632b.hashCode();
            this.f3640j = (this.f3640j * 31) + this.f3637g.hashCode();
            this.f3640j = (this.f3640j * 31) + this.f3633c;
            this.f3640j = (this.f3640j * 31) + this.f3634d;
            this.f3640j = (this.f3640j * 31) + this.f3638h.hashCode();
            this.f3640j = (this.f3640j * 31) + this.f3635e.hashCode();
            this.f3640j = (this.f3640j * 31) + this.f3636f.hashCode();
            this.f3640j = (this.f3640j * 31) + this.f3639i.hashCode();
        }
        return this.f3640j;
    }

    public String toString() {
        return "EngineKey{model=" + this.f3632b + ", width=" + this.f3633c + ", height=" + this.f3634d + ", resourceClass=" + this.f3635e + ", transcodeClass=" + this.f3636f + ", signature=" + this.f3637g + ", hashCode=" + this.f3640j + ", transformations=" + this.f3638h + ", options=" + this.f3639i + '}';
    }
}
