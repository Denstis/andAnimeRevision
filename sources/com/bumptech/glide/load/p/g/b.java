package com.bumptech.glide.load.p.g;

import android.graphics.Bitmap;
import c.a.a.n.a;

/* JADX INFO: loaded from: classes.dex */
public final class b implements a.InterfaceC0128a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.e f3881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.b f3882b;

    public b(com.bumptech.glide.load.n.a0.e eVar, com.bumptech.glide.load.n.a0.b bVar) {
        this.f3881a = eVar;
        this.f3882b = bVar;
    }

    @Override // c.a.a.n.a.InterfaceC0128a
    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        return this.f3881a.b(i2, i3, config);
    }

    @Override // c.a.a.n.a.InterfaceC0128a
    public void a(Bitmap bitmap) {
        this.f3881a.a(bitmap);
    }

    @Override // c.a.a.n.a.InterfaceC0128a
    public void a(byte[] bArr) {
        com.bumptech.glide.load.n.a0.b bVar = this.f3882b;
        if (bVar == null) {
            return;
        }
        bVar.a(bArr);
    }

    @Override // c.a.a.n.a.InterfaceC0128a
    public void a(int[] iArr) {
        com.bumptech.glide.load.n.a0.b bVar = this.f3882b;
        if (bVar == null) {
            return;
        }
        bVar.a(iArr);
    }

    @Override // c.a.a.n.a.InterfaceC0128a
    public int[] a(int i2) {
        com.bumptech.glide.load.n.a0.b bVar = this.f3882b;
        return bVar == null ? new int[i2] : (int[]) bVar.b(i2, int[].class);
    }

    @Override // c.a.a.n.a.InterfaceC0128a
    public byte[] b(int i2) {
        com.bumptech.glide.load.n.a0.b bVar = this.f3882b;
        return bVar == null ? new byte[i2] : (byte[]) bVar.b(i2, byte[].class);
    }
}
