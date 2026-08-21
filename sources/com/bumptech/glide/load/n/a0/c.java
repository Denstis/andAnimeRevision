package com.bumptech.glide.load.n.a0;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
class c implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f3437a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h<a, Bitmap> f3438b = new h<>();

    static class a implements m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f3439a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f3440b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f3441c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Bitmap.Config f3442d;

        public a(b bVar) {
            this.f3439a = bVar;
        }

        @Override // com.bumptech.glide.load.n.a0.m
        public void a() {
            this.f3439a.a(this);
        }

        public void a(int i2, int i3, Bitmap.Config config) {
            this.f3440b = i2;
            this.f3441c = i3;
            this.f3442d = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f3440b == aVar.f3440b && this.f3441c == aVar.f3441c && this.f3442d == aVar.f3442d;
        }

        public int hashCode() {
            int i2 = ((this.f3440b * 31) + this.f3441c) * 31;
            Bitmap.Config config = this.f3442d;
            return i2 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return c.c(this.f3440b, this.f3441c, this.f3442d);
        }
    }

    static class b extends d<a> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.load.n.a0.d
        public a a() {
            return new a(this);
        }

        a a(int i2, int i3, Bitmap.Config config) {
            a aVarB = b();
            aVarB.a(i2, i3, config);
            return aVarB;
        }
    }

    c() {
    }

    static String c(int i2, int i3, Bitmap.Config config) {
        return "[" + i2 + "x" + i3 + "], " + config;
    }

    private static String d(Bitmap bitmap) {
        return c(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public Bitmap a() {
        return this.f3438b.a();
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        return this.f3438b.a(this.f3437a.a(i2, i3, config));
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public void a(Bitmap bitmap) {
        this.f3438b.a(this.f3437a.a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public int b(Bitmap bitmap) {
        return c.a.a.t.k.a(bitmap);
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public String b(int i2, int i3, Bitmap.Config config) {
        return c(i2, i3, config);
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public String c(Bitmap bitmap) {
        return d(bitmap);
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f3438b;
    }
}
