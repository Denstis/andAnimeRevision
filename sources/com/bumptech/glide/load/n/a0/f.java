package com.bumptech.glide.load.n.a0;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public class f implements e {
    @Override // com.bumptech.glide.load.n.a0.e
    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        return Bitmap.createBitmap(i2, i3, config);
    }

    @Override // com.bumptech.glide.load.n.a0.e
    public void a() {
    }

    @Override // com.bumptech.glide.load.n.a0.e
    public void a(int i2) {
    }

    @Override // com.bumptech.glide.load.n.a0.e
    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.bumptech.glide.load.n.a0.e
    public Bitmap b(int i2, int i3, Bitmap.Config config) {
        return a(i2, i3, config);
    }
}
