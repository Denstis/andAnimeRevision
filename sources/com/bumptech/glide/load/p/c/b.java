package com.bumptech.glide.load.p.c;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class b implements com.bumptech.glide.load.k<BitmapDrawable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.e f3794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.k<Bitmap> f3795b;

    public b(com.bumptech.glide.load.n.a0.e eVar, com.bumptech.glide.load.k<Bitmap> kVar) {
        this.f3794a = eVar;
        this.f3795b = kVar;
    }

    @Override // com.bumptech.glide.load.k
    public com.bumptech.glide.load.c a(com.bumptech.glide.load.i iVar) {
        return this.f3795b.a(iVar);
    }

    @Override // com.bumptech.glide.load.d
    public boolean a(com.bumptech.glide.load.n.v<BitmapDrawable> vVar, File file, com.bumptech.glide.load.i iVar) {
        return this.f3795b.a((Bitmap) new d(vVar.get().getBitmap(), this.f3794a), file, iVar);
    }
}
