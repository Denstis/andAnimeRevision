package com.bumptech.glide.load.p.c;

import android.graphics.Bitmap;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class i extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f3804b = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1".getBytes(com.bumptech.glide.load.g.f3378a);

    @Override // com.bumptech.glide.load.p.c.e
    protected Bitmap a(com.bumptech.glide.load.n.a0.e eVar, Bitmap bitmap, int i2, int i3) {
        return w.c(eVar, bitmap, i2, i3);
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        messageDigest.update(f3804b);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        return obj instanceof i;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.CircleCrop.1".hashCode();
    }
}
