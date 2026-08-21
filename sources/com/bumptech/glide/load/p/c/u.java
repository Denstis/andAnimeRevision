package com.bumptech.glide.load.p.c;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class u extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f3848c = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(com.bumptech.glide.load.g.f3378a);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3849b;

    public u(int i2) {
        c.a.a.t.j.a(i2 > 0, "roundingRadius must be greater than 0.");
        this.f3849b = i2;
    }

    @Override // com.bumptech.glide.load.p.c.e
    protected Bitmap a(com.bumptech.glide.load.n.a0.e eVar, Bitmap bitmap, int i2, int i3) {
        return w.b(eVar, bitmap, this.f3849b);
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        messageDigest.update(f3848c);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f3849b).array());
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        return (obj instanceof u) && this.f3849b == ((u) obj).f3849b;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return c.a.a.t.k.a("com.bumptech.glide.load.resource.bitmap.RoundedCorners".hashCode(), c.a.a.t.k.b(this.f3849b));
    }
}
