package com.bumptech.glide.load.p.c;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public class d implements com.bumptech.glide.load.n.v<Bitmap>, com.bumptech.glide.load.n.r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bitmap f3799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.e f3800c;

    public d(Bitmap bitmap, com.bumptech.glide.load.n.a0.e eVar) {
        c.a.a.t.j.a(bitmap, "Bitmap must not be null");
        this.f3799b = bitmap;
        c.a.a.t.j.a(eVar, "BitmapPool must not be null");
        this.f3800c = eVar;
    }

    public static d a(Bitmap bitmap, com.bumptech.glide.load.n.a0.e eVar) {
        if (bitmap == null) {
            return null;
        }
        return new d(bitmap, eVar);
    }

    @Override // com.bumptech.glide.load.n.v
    public void a() {
        this.f3800c.a(this.f3799b);
    }

    @Override // com.bumptech.glide.load.n.v
    public int b() {
        return c.a.a.t.k.a(this.f3799b);
    }

    @Override // com.bumptech.glide.load.n.v
    public Class<Bitmap> c() {
        return Bitmap.class;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bumptech.glide.load.n.v
    public Bitmap get() {
        return this.f3799b;
    }

    @Override // com.bumptech.glide.load.n.r
    public void initialize() {
        this.f3799b.prepareToDraw();
    }
}
