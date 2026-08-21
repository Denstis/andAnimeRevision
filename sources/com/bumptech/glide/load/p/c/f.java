package com.bumptech.glide.load.p.c;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class f implements com.bumptech.glide.load.j<ByteBuffer, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f3801a;

    public f(l lVar) {
        this.f3801a = lVar;
    }

    @Override // com.bumptech.glide.load.j
    public com.bumptech.glide.load.n.v<Bitmap> a(ByteBuffer byteBuffer, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return this.f3801a.a(c.a.a.t.a.c(byteBuffer), i2, i3, iVar);
    }

    @Override // com.bumptech.glide.load.j
    public boolean a(ByteBuffer byteBuffer, com.bumptech.glide.load.i iVar) {
        return this.f3801a.a(byteBuffer);
    }
}
