package com.bumptech.glide.load.p.c;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public final class x implements com.bumptech.glide.load.j<Bitmap, Bitmap> {

    private static final class a implements com.bumptech.glide.load.n.v<Bitmap> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Bitmap f3859b;

        a(Bitmap bitmap) {
            this.f3859b = bitmap;
        }

        @Override // com.bumptech.glide.load.n.v
        public void a() {
        }

        @Override // com.bumptech.glide.load.n.v
        public int b() {
            return c.a.a.t.k.a(this.f3859b);
        }

        @Override // com.bumptech.glide.load.n.v
        public Class<Bitmap> c() {
            return Bitmap.class;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.bumptech.glide.load.n.v
        public Bitmap get() {
            return this.f3859b;
        }
    }

    @Override // com.bumptech.glide.load.j
    public com.bumptech.glide.load.n.v<Bitmap> a(Bitmap bitmap, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return new a(bitmap);
    }

    @Override // com.bumptech.glide.load.j
    public boolean a(Bitmap bitmap, com.bumptech.glide.load.i iVar) {
        return true;
    }
}
