package com.bumptech.glide.load.p.c;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class t implements com.bumptech.glide.load.j<Uri, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bumptech.glide.load.p.e.d f3846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.e f3847b;

    public t(com.bumptech.glide.load.p.e.d dVar, com.bumptech.glide.load.n.a0.e eVar) {
        this.f3846a = dVar;
        this.f3847b = eVar;
    }

    @Override // com.bumptech.glide.load.j
    public com.bumptech.glide.load.n.v<Bitmap> a(Uri uri, int i2, int i3, com.bumptech.glide.load.i iVar) {
        com.bumptech.glide.load.n.v<Drawable> vVarA = this.f3846a.a(uri, i2, i3, iVar);
        if (vVarA == null) {
            return null;
        }
        return m.a(this.f3847b, vVarA.get(), i2, i3);
    }

    @Override // com.bumptech.glide.load.j
    public boolean a(Uri uri, com.bumptech.glide.load.i iVar) {
        return "android.resource".equals(uri.getScheme());
    }
}
