package com.bumptech.glide.load.p.h;

import android.graphics.Bitmap;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.n.v;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class a implements e<Bitmap, byte[]> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bitmap.CompressFormat f3917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3918b;

    public a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    public a(Bitmap.CompressFormat compressFormat, int i2) {
        this.f3917a = compressFormat;
        this.f3918b = i2;
    }

    @Override // com.bumptech.glide.load.p.h.e
    public v<byte[]> a(v<Bitmap> vVar, i iVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        vVar.get().compress(this.f3917a, this.f3918b, byteArrayOutputStream);
        vVar.a();
        return new com.bumptech.glide.load.p.d.b(byteArrayOutputStream.toByteArray());
    }
}
