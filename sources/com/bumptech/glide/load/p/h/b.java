package com.bumptech.glide.load.p.h;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import c.a.a.t.j;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.n.v;
import com.bumptech.glide.load.p.c.r;

/* JADX INFO: loaded from: classes.dex */
public class b implements e<Bitmap, BitmapDrawable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f3919a;

    public b(Resources resources) {
        j.a(resources);
        this.f3919a = resources;
    }

    @Override // com.bumptech.glide.load.p.h.e
    public v<BitmapDrawable> a(v<Bitmap> vVar, i iVar) {
        return r.a(this.f3919a, vVar);
    }
}
