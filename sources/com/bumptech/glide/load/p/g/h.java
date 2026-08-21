package com.bumptech.glide.load.p.g;

import android.graphics.Bitmap;
import com.bumptech.glide.load.n.v;

/* JADX INFO: loaded from: classes.dex */
public final class h implements com.bumptech.glide.load.j<c.a.a.n.a, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.e f3911a;

    public h(com.bumptech.glide.load.n.a0.e eVar) {
        this.f3911a = eVar;
    }

    @Override // com.bumptech.glide.load.j
    public v<Bitmap> a(c.a.a.n.a aVar, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return com.bumptech.glide.load.p.c.d.a(aVar.a(), this.f3911a);
    }

    @Override // com.bumptech.glide.load.j
    public boolean a(c.a.a.n.a aVar, com.bumptech.glide.load.i iVar) {
        return true;
    }
}
