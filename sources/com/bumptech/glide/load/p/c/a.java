package com.bumptech.glide.load.p.c;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* JADX INFO: loaded from: classes.dex */
public class a<DataType> implements com.bumptech.glide.load.j<DataType, BitmapDrawable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bumptech.glide.load.j<DataType, Bitmap> f3792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f3793b;

    public a(Resources resources, com.bumptech.glide.load.j<DataType, Bitmap> jVar) {
        c.a.a.t.j.a(resources);
        this.f3793b = resources;
        c.a.a.t.j.a(jVar);
        this.f3792a = jVar;
    }

    @Override // com.bumptech.glide.load.j
    public com.bumptech.glide.load.n.v<BitmapDrawable> a(DataType datatype, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return r.a(this.f3793b, this.f3792a.a(datatype, i2, i3, iVar));
    }

    @Override // com.bumptech.glide.load.j
    public boolean a(DataType datatype, com.bumptech.glide.load.i iVar) {
        return this.f3792a.a(datatype, iVar);
    }
}
