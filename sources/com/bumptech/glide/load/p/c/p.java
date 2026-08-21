package com.bumptech.glide.load.p.c;

import android.graphics.Bitmap;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class p extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f3833b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(com.bumptech.glide.load.g.f3378a);

    @Override // com.bumptech.glide.load.p.c.e
    protected Bitmap a(com.bumptech.glide.load.n.a0.e eVar, Bitmap bitmap, int i2, int i3) {
        return w.d(eVar, bitmap, i2, i3);
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        messageDigest.update(f3833b);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        return obj instanceof p;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return "com.bumptech.glide.load.resource.bitmap.FitCenter".hashCode();
    }
}
