package com.bumptech.glide.load.p.e;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.n.v;

/* JADX INFO: loaded from: classes.dex */
final class c extends b<Drawable> {
    private c(Drawable drawable) {
        super(drawable);
    }

    static v<Drawable> a(Drawable drawable) {
        if (drawable != null) {
            return new c(drawable);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.n.v
    public void a() {
    }

    @Override // com.bumptech.glide.load.n.v
    public int b() {
        return Math.max(1, this.f3871b.getIntrinsicWidth() * this.f3871b.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.n.v
    public Class<Drawable> c() {
        return this.f3871b.getClass();
    }
}
