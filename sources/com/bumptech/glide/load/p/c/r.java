package com.bumptech.glide.load.p.c;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* JADX INFO: loaded from: classes.dex */
public final class r implements com.bumptech.glide.load.n.v<BitmapDrawable>, com.bumptech.glide.load.n.r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f3838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.n.v<Bitmap> f3839c;

    private r(Resources resources, com.bumptech.glide.load.n.v<Bitmap> vVar) {
        c.a.a.t.j.a(resources);
        this.f3838b = resources;
        c.a.a.t.j.a(vVar);
        this.f3839c = vVar;
    }

    public static com.bumptech.glide.load.n.v<BitmapDrawable> a(Resources resources, com.bumptech.glide.load.n.v<Bitmap> vVar) {
        if (vVar == null) {
            return null;
        }
        return new r(resources, vVar);
    }

    @Override // com.bumptech.glide.load.n.v
    public void a() {
        this.f3839c.a();
    }

    @Override // com.bumptech.glide.load.n.v
    public int b() {
        return this.f3839c.b();
    }

    @Override // com.bumptech.glide.load.n.v
    public Class<BitmapDrawable> c() {
        return BitmapDrawable.class;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bumptech.glide.load.n.v
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f3838b, this.f3839c.get());
    }

    @Override // com.bumptech.glide.load.n.r
    public void initialize() {
        com.bumptech.glide.load.n.v<Bitmap> vVar = this.f3839c;
        if (vVar instanceof com.bumptech.glide.load.n.r) {
            ((com.bumptech.glide.load.n.r) vVar).initialize();
        }
    }
}
