package com.bumptech.glide.load.p.h;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.n.v;

/* JADX INFO: loaded from: classes.dex */
public final class c implements e<Drawable, byte[]> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.e f3920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e<Bitmap, byte[]> f3921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e<com.bumptech.glide.load.p.g.c, byte[]> f3922c;

    public c(com.bumptech.glide.load.n.a0.e eVar, e<Bitmap, byte[]> eVar2, e<com.bumptech.glide.load.p.g.c, byte[]> eVar3) {
        this.f3920a = eVar;
        this.f3921b = eVar2;
        this.f3922c = eVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static v<com.bumptech.glide.load.p.g.c> a(v<Drawable> vVar) {
        return vVar;
    }

    @Override // com.bumptech.glide.load.p.h.e
    public v<byte[]> a(v<Drawable> vVar, i iVar) {
        Drawable drawable = vVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f3921b.a(com.bumptech.glide.load.p.c.d.a(((BitmapDrawable) drawable).getBitmap(), this.f3920a), iVar);
        }
        if (!(drawable instanceof com.bumptech.glide.load.p.g.c)) {
            return null;
        }
        e<com.bumptech.glide.load.p.g.c, byte[]> eVar = this.f3922c;
        a(vVar);
        return eVar.a(vVar, iVar);
    }
}
