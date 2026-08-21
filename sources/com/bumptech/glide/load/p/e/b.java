package com.bumptech.glide.load.p.e;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import c.a.a.t.j;
import com.bumptech.glide.load.n.r;
import com.bumptech.glide.load.n.v;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<T extends Drawable> implements v<T>, r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final T f3871b;

    public b(T t) {
        j.a(t);
        this.f3871b = t;
    }

    @Override // com.bumptech.glide.load.n.v
    public final T get() {
        Drawable.ConstantState constantState = this.f3871b.getConstantState();
        return constantState == null ? this.f3871b : (T) constantState.newDrawable();
    }

    @Override // com.bumptech.glide.load.n.r
    public void initialize() {
        Bitmap bitmapC;
        T t = this.f3871b;
        if (t instanceof BitmapDrawable) {
            bitmapC = ((BitmapDrawable) t).getBitmap();
        } else if (!(t instanceof com.bumptech.glide.load.p.g.c)) {
            return;
        } else {
            bitmapC = ((com.bumptech.glide.load.p.g.c) t).c();
        }
        bitmapC.prepareToDraw();
    }
}
