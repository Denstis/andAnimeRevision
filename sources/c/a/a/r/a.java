package c.a.a.r;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import c.a.a.r.a;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.n.j;
import com.bumptech.glide.load.p.c.k;
import com.bumptech.glide.load.p.c.n;
import com.bumptech.glide.load.p.c.p;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.gms.ads.AdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class a<T extends a<T>> implements Cloneable {
    private boolean A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3257b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f3261f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3262g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Drawable f3263h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3264i;
    private boolean n;
    private Drawable p;
    private int q;
    private boolean u;
    private Resources.Theme v;
    private boolean w;
    private boolean x;
    private boolean y;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f3258c = 1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f3259d = j.f3589c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c.a.a.h f3260e = c.a.a.h.NORMAL;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f3265j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f3266k = -1;
    private int l = -1;
    private com.bumptech.glide.load.g m = c.a.a.s.a.a();
    private boolean o = true;
    private com.bumptech.glide.load.i r = new com.bumptech.glide.load.i();
    private Map<Class<?>, l<?>> s = new c.a.a.t.b();
    private Class<?> t = Object.class;
    private boolean z = true;

    private T J() {
        return this;
    }

    private T K() {
        if (this.u) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
        J();
        return this;
    }

    private T a(k kVar, l<Bitmap> lVar, boolean z) {
        T t = z ? (T) b(kVar, lVar) : (T) a(kVar, lVar);
        t.z = true;
        return t;
    }

    private boolean a(int i2) {
        return b(this.f3257b, i2);
    }

    private static boolean b(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    private T c(k kVar, l<Bitmap> lVar) {
        return (T) a(kVar, lVar, false);
    }

    boolean A() {
        return this.z;
    }

    public final boolean B() {
        return this.o;
    }

    public final boolean C() {
        return this.n;
    }

    public final boolean D() {
        return a(2048);
    }

    public final boolean E() {
        return c.a.a.t.k.b(this.l, this.f3266k);
    }

    public T F() {
        this.u = true;
        J();
        return this;
    }

    public T G() {
        return (T) a(k.f3811b, new com.bumptech.glide.load.p.c.g());
    }

    public T H() {
        return (T) c(k.f3812c, new com.bumptech.glide.load.p.c.h());
    }

    public T I() {
        return (T) c(k.f3810a, new p());
    }

    public T a() {
        if (this.u && !this.w) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.w = true;
        F();
        return this;
    }

    public T a(float f2) {
        if (this.w) {
            return (T) mo4clone().a(f2);
        }
        if (f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f3258c = f2;
        this.f3257b |= 2;
        K();
        return this;
    }

    public T a(int i2, int i3) {
        if (this.w) {
            return (T) mo4clone().a(i2, i3);
        }
        this.l = i2;
        this.f3266k = i3;
        this.f3257b |= AdRequest.MAX_CONTENT_URL_LENGTH;
        K();
        return this;
    }

    public T a(c.a.a.h hVar) {
        if (this.w) {
            return (T) mo4clone().a(hVar);
        }
        c.a.a.t.j.a(hVar);
        this.f3260e = hVar;
        this.f3257b |= 8;
        K();
        return this;
    }

    public T a(a<?> aVar) {
        if (this.w) {
            return (T) mo4clone().a(aVar);
        }
        if (b(aVar.f3257b, 2)) {
            this.f3258c = aVar.f3258c;
        }
        if (b(aVar.f3257b, 262144)) {
            this.x = aVar.x;
        }
        if (b(aVar.f3257b, ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES)) {
            this.A = aVar.A;
        }
        if (b(aVar.f3257b, 4)) {
            this.f3259d = aVar.f3259d;
        }
        if (b(aVar.f3257b, 8)) {
            this.f3260e = aVar.f3260e;
        }
        if (b(aVar.f3257b, 16)) {
            this.f3261f = aVar.f3261f;
            this.f3262g = 0;
            this.f3257b &= -33;
        }
        if (b(aVar.f3257b, 32)) {
            this.f3262g = aVar.f3262g;
            this.f3261f = null;
            this.f3257b &= -17;
        }
        if (b(aVar.f3257b, 64)) {
            this.f3263h = aVar.f3263h;
            this.f3264i = 0;
            this.f3257b &= -129;
        }
        if (b(aVar.f3257b, 128)) {
            this.f3264i = aVar.f3264i;
            this.f3263h = null;
            this.f3257b &= -65;
        }
        if (b(aVar.f3257b, 256)) {
            this.f3265j = aVar.f3265j;
        }
        if (b(aVar.f3257b, AdRequest.MAX_CONTENT_URL_LENGTH)) {
            this.l = aVar.l;
            this.f3266k = aVar.f3266k;
        }
        if (b(aVar.f3257b, 1024)) {
            this.m = aVar.m;
        }
        if (b(aVar.f3257b, MpegAudioHeader.MAX_FRAME_SIZE_BYTES)) {
            this.t = aVar.t;
        }
        if (b(aVar.f3257b, 8192)) {
            this.p = aVar.p;
            this.q = 0;
            this.f3257b &= -16385;
        }
        if (b(aVar.f3257b, 16384)) {
            this.q = aVar.q;
            this.p = null;
            this.f3257b &= -8193;
        }
        if (b(aVar.f3257b, 32768)) {
            this.v = aVar.v;
        }
        if (b(aVar.f3257b, C.DEFAULT_BUFFER_SEGMENT_SIZE)) {
            this.o = aVar.o;
        }
        if (b(aVar.f3257b, 131072)) {
            this.n = aVar.n;
        }
        if (b(aVar.f3257b, 2048)) {
            this.s.putAll(aVar.s);
            this.z = aVar.z;
        }
        if (b(aVar.f3257b, 524288)) {
            this.y = aVar.y;
        }
        if (!this.o) {
            this.s.clear();
            this.f3257b &= -2049;
            this.n = false;
            this.f3257b &= -131073;
            this.z = true;
        }
        this.f3257b |= aVar.f3257b;
        this.r.a(aVar.r);
        K();
        return this;
    }

    public T a(com.bumptech.glide.load.g gVar) {
        if (this.w) {
            return (T) mo4clone().a(gVar);
        }
        c.a.a.t.j.a(gVar);
        this.m = gVar;
        this.f3257b |= 1024;
        K();
        return this;
    }

    public <Y> T a(com.bumptech.glide.load.h<Y> hVar, Y y) {
        if (this.w) {
            return (T) mo4clone().a(hVar, y);
        }
        c.a.a.t.j.a(hVar);
        c.a.a.t.j.a(y);
        this.r.a(hVar, y);
        K();
        return this;
    }

    public T a(l<Bitmap> lVar) {
        return (T) a(lVar, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    T a(l<Bitmap> lVar, boolean z) {
        if (this.w) {
            return (T) mo4clone().a(lVar, z);
        }
        n nVar = new n(lVar, z);
        a(Bitmap.class, lVar, z);
        a(Drawable.class, nVar, z);
        nVar.a();
        a(BitmapDrawable.class, nVar, z);
        a(com.bumptech.glide.load.p.g.c.class, new com.bumptech.glide.load.p.g.f(lVar), z);
        K();
        return this;
    }

    public T a(j jVar) {
        if (this.w) {
            return (T) mo4clone().a(jVar);
        }
        c.a.a.t.j.a(jVar);
        this.f3259d = jVar;
        this.f3257b |= 4;
        K();
        return this;
    }

    public T a(k kVar) {
        com.bumptech.glide.load.h hVar = k.f3815f;
        c.a.a.t.j.a(kVar);
        return (T) a((com.bumptech.glide.load.h<k>) hVar, kVar);
    }

    final T a(k kVar, l<Bitmap> lVar) {
        if (this.w) {
            return (T) mo4clone().a(kVar, lVar);
        }
        a(kVar);
        return (T) a(lVar, false);
    }

    public T a(Class<?> cls) {
        if (this.w) {
            return (T) mo4clone().a(cls);
        }
        c.a.a.t.j.a(cls);
        this.t = cls;
        this.f3257b |= MpegAudioHeader.MAX_FRAME_SIZE_BYTES;
        K();
        return this;
    }

    <Y> T a(Class<Y> cls, l<Y> lVar, boolean z) {
        if (this.w) {
            return (T) mo4clone().a(cls, lVar, z);
        }
        c.a.a.t.j.a(cls);
        c.a.a.t.j.a(lVar);
        this.s.put(cls, lVar);
        this.f3257b |= 2048;
        this.o = true;
        this.f3257b |= C.DEFAULT_BUFFER_SEGMENT_SIZE;
        this.z = false;
        if (z) {
            this.f3257b |= 131072;
            this.n = true;
        }
        K();
        return this;
    }

    public T a(boolean z) {
        if (this.w) {
            return (T) mo4clone().a(true);
        }
        this.f3265j = !z;
        this.f3257b |= 256;
        K();
        return this;
    }

    public T b() {
        return (T) b(k.f3811b, new com.bumptech.glide.load.p.c.g());
    }

    final T b(k kVar, l<Bitmap> lVar) {
        if (this.w) {
            return (T) mo4clone().b(kVar, lVar);
        }
        a(kVar);
        return (T) a(lVar);
    }

    public T b(boolean z) {
        if (this.w) {
            return (T) mo4clone().b(z);
        }
        this.A = z;
        this.f3257b |= ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
        K();
        return this;
    }

    public T c() {
        return (T) b(k.f3812c, new com.bumptech.glide.load.p.c.i());
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public T mo4clone() {
        try {
            T t = (T) super.clone();
            t.r = new com.bumptech.glide.load.i();
            t.r.a(this.r);
            t.s = new c.a.a.t.b();
            t.s.putAll(this.s);
            t.u = false;
            t.w = false;
            return t;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public final j d() {
        return this.f3259d;
    }

    public final int e() {
        return this.f3262g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Float.compare(aVar.f3258c, this.f3258c) == 0 && this.f3262g == aVar.f3262g && c.a.a.t.k.b(this.f3261f, aVar.f3261f) && this.f3264i == aVar.f3264i && c.a.a.t.k.b(this.f3263h, aVar.f3263h) && this.q == aVar.q && c.a.a.t.k.b(this.p, aVar.p) && this.f3265j == aVar.f3265j && this.f3266k == aVar.f3266k && this.l == aVar.l && this.n == aVar.n && this.o == aVar.o && this.x == aVar.x && this.y == aVar.y && this.f3259d.equals(aVar.f3259d) && this.f3260e == aVar.f3260e && this.r.equals(aVar.r) && this.s.equals(aVar.s) && this.t.equals(aVar.t) && c.a.a.t.k.b(this.m, aVar.m) && c.a.a.t.k.b(this.v, aVar.v);
    }

    public final Drawable f() {
        return this.f3261f;
    }

    public final Drawable g() {
        return this.p;
    }

    public final int h() {
        return this.q;
    }

    public int hashCode() {
        return c.a.a.t.k.a(this.v, c.a.a.t.k.a(this.m, c.a.a.t.k.a(this.t, c.a.a.t.k.a(this.s, c.a.a.t.k.a(this.r, c.a.a.t.k.a(this.f3260e, c.a.a.t.k.a(this.f3259d, c.a.a.t.k.a(this.y, c.a.a.t.k.a(this.x, c.a.a.t.k.a(this.o, c.a.a.t.k.a(this.n, c.a.a.t.k.a(this.l, c.a.a.t.k.a(this.f3266k, c.a.a.t.k.a(this.f3265j, c.a.a.t.k.a(this.p, c.a.a.t.k.a(this.q, c.a.a.t.k.a(this.f3263h, c.a.a.t.k.a(this.f3264i, c.a.a.t.k.a(this.f3261f, c.a.a.t.k.a(this.f3262g, c.a.a.t.k.a(this.f3258c)))))))))))))))))))));
    }

    public final boolean i() {
        return this.y;
    }

    public final com.bumptech.glide.load.i l() {
        return this.r;
    }

    public final int m() {
        return this.f3266k;
    }

    public final int n() {
        return this.l;
    }

    public final Drawable o() {
        return this.f3263h;
    }

    public final int p() {
        return this.f3264i;
    }

    public final c.a.a.h q() {
        return this.f3260e;
    }

    public final Class<?> r() {
        return this.t;
    }

    public final com.bumptech.glide.load.g s() {
        return this.m;
    }

    public final float t() {
        return this.f3258c;
    }

    public final Resources.Theme u() {
        return this.v;
    }

    public final Map<Class<?>, l<?>> v() {
        return this.s;
    }

    public final boolean w() {
        return this.A;
    }

    public final boolean x() {
        return this.x;
    }

    public final boolean y() {
        return this.f3265j;
    }

    public final boolean z() {
        return a(8);
    }
}
