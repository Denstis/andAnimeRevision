package com.bumptech.glide.load.p.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f3810a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f3811b = new d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k f3812c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final k f3813d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final k f3814e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final com.bumptech.glide.load.h<k> f3815f;

    private static class a extends k {
        a() {
        }

        @Override // com.bumptech.glide.load.p.c.k
        public g a(int i2, int i3, int i4, int i5) {
            return g.QUALITY;
        }

        @Override // com.bumptech.glide.load.p.c.k
        public float b(int i2, int i3, int i4, int i5) {
            if (Math.min(i3 / i5, i2 / i4) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r1);
        }
    }

    private static class b extends k {
        b() {
        }

        @Override // com.bumptech.glide.load.p.c.k
        public g a(int i2, int i3, int i4, int i5) {
            return g.MEMORY;
        }

        @Override // com.bumptech.glide.load.p.c.k
        public float b(int i2, int i3, int i4, int i5) {
            int iCeil = (int) Math.ceil(Math.max(i3 / i5, i2 / i4));
            return 1.0f / (r2 << (Math.max(1, Integer.highestOneBit(iCeil)) >= iCeil ? 0 : 1));
        }
    }

    private static class c extends k {
        c() {
        }

        @Override // com.bumptech.glide.load.p.c.k
        public g a(int i2, int i3, int i4, int i5) {
            return g.QUALITY;
        }

        @Override // com.bumptech.glide.load.p.c.k
        public float b(int i2, int i3, int i4, int i5) {
            return Math.min(1.0f, k.f3810a.b(i2, i3, i4, i5));
        }
    }

    private static class d extends k {
        d() {
        }

        @Override // com.bumptech.glide.load.p.c.k
        public g a(int i2, int i3, int i4, int i5) {
            return g.QUALITY;
        }

        @Override // com.bumptech.glide.load.p.c.k
        public float b(int i2, int i3, int i4, int i5) {
            return Math.max(i4 / i2, i5 / i3);
        }
    }

    private static class e extends k {
        e() {
        }

        @Override // com.bumptech.glide.load.p.c.k
        public g a(int i2, int i3, int i4, int i5) {
            return g.QUALITY;
        }

        @Override // com.bumptech.glide.load.p.c.k
        public float b(int i2, int i3, int i4, int i5) {
            return Math.min(i4 / i2, i5 / i3);
        }
    }

    private static class f extends k {
        f() {
        }

        @Override // com.bumptech.glide.load.p.c.k
        public g a(int i2, int i3, int i4, int i5) {
            return g.QUALITY;
        }

        @Override // com.bumptech.glide.load.p.c.k
        public float b(int i2, int i3, int i4, int i5) {
            return 1.0f;
        }
    }

    public enum g {
        MEMORY,
        QUALITY
    }

    static {
        new a();
        new b();
        f3812c = new c();
        f3813d = new f();
        f3814e = f3811b;
        f3815f = com.bumptech.glide.load.h.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", f3814e);
    }

    public abstract g a(int i2, int i3, int i4, int i5);

    public abstract float b(int i2, int i3, int i4, int i5);
}
