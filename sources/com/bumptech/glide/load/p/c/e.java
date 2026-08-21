package com.bumptech.glide.load.p.c;

import android.content.Context;
import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public abstract class e implements com.bumptech.glide.load.l<Bitmap> {
    protected abstract Bitmap a(com.bumptech.glide.load.n.a0.e eVar, Bitmap bitmap, int i2, int i3);

    @Override // com.bumptech.glide.load.l
    public final com.bumptech.glide.load.n.v<Bitmap> a(Context context, com.bumptech.glide.load.n.v<Bitmap> vVar, int i2, int i3) {
        if (!c.a.a.t.k.b(i2, i3)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i2 + " or height: " + i3 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        com.bumptech.glide.load.n.a0.e eVarC = c.a.a.c.b(context).c();
        Bitmap bitmap = vVar.get();
        if (i2 == Integer.MIN_VALUE) {
            i2 = bitmap.getWidth();
        }
        if (i3 == Integer.MIN_VALUE) {
            i3 = bitmap.getHeight();
        }
        Bitmap bitmapA = a(eVarC, bitmap, i2, i3);
        return bitmap.equals(bitmapA) ? vVar : d.a(bitmapA, eVarC);
    }
}
