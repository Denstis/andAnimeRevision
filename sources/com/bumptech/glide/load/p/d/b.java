package com.bumptech.glide.load.p.d;

import c.a.a.t.j;
import com.bumptech.glide.load.n.v;

/* JADX INFO: loaded from: classes.dex */
public class b implements v<byte[]> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f3869b;

    public b(byte[] bArr) {
        j.a(bArr);
        this.f3869b = bArr;
    }

    @Override // com.bumptech.glide.load.n.v
    public void a() {
    }

    @Override // com.bumptech.glide.load.n.v
    public int b() {
        return this.f3869b.length;
    }

    @Override // com.bumptech.glide.load.n.v
    public Class<byte[]> c() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.n.v
    public byte[] get() {
        return this.f3869b;
    }
}
