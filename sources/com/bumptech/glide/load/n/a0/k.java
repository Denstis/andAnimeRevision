package com.bumptech.glide.load.n.a0;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class k implements e {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Bitmap.Config f3459j = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f3460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<Bitmap.Config> f3461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f3462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f3464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3465f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3466g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3467h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3468i;

    private interface a {
        void a(Bitmap bitmap);

        void b(Bitmap bitmap);
    }

    private static final class b implements a {
        b() {
        }

        @Override // com.bumptech.glide.load.n.a0.k.a
        public void a(Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.n.a0.k.a
        public void b(Bitmap bitmap) {
        }
    }

    public k(long j2) {
        this(j2, g(), f());
    }

    k(long j2, l lVar, Set<Bitmap.Config> set) {
        this.f3463d = j2;
        this.f3460a = lVar;
        this.f3461b = set;
        this.f3462c = new b();
    }

    private synchronized void a(long j2) {
        while (this.f3464e > j2) {
            Bitmap bitmapA = this.f3460a.a();
            if (bitmapA == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    Log.w("LruBitmapPool", "Size mismatch, resetting");
                    d();
                }
                this.f3464e = 0L;
                return;
            }
            this.f3462c.a(bitmapA);
            this.f3464e -= (long) this.f3460a.b(bitmapA);
            this.f3468i++;
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Evicting bitmap=" + this.f3460a.c(bitmapA));
            }
            c();
            bitmapA.recycle();
        }
    }

    @TargetApi(26)
    private static void a(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    @TargetApi(19)
    private static void b(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    private static Bitmap c(int i2, int i3, Bitmap.Config config) {
        if (config == null) {
            config = f3459j;
        }
        return Bitmap.createBitmap(i2, i3, config);
    }

    private void c() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            d();
        }
    }

    private static void c(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        b(bitmap);
    }

    private synchronized Bitmap d(int i2, int i3, Bitmap.Config config) {
        Bitmap bitmapA;
        a(config);
        bitmapA = this.f3460a.a(i2, i3, config != null ? config : f3459j);
        if (bitmapA == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Missing bitmap=" + this.f3460a.b(i2, i3, config));
            }
            this.f3466g++;
        } else {
            this.f3465f++;
            this.f3464e -= (long) this.f3460a.b(bitmapA);
            this.f3462c.a(bitmapA);
            c(bitmapA);
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            Log.v("LruBitmapPool", "Get bitmap=" + this.f3460a.b(i2, i3, config));
        }
        c();
        return bitmapA;
    }

    private void d() {
        Log.v("LruBitmapPool", "Hits=" + this.f3465f + ", misses=" + this.f3466g + ", puts=" + this.f3467h + ", evictions=" + this.f3468i + ", currentSize=" + this.f3464e + ", maxSize=" + this.f3463d + "\nStrategy=" + this.f3460a);
    }

    private void e() {
        a(this.f3463d);
    }

    @TargetApi(26)
    private static Set<Bitmap.Config> f() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        if (Build.VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    private static l g() {
        return Build.VERSION.SDK_INT >= 19 ? new n() : new c();
    }

    @Override // com.bumptech.glide.load.n.a0.e
    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        Bitmap bitmapD = d(i2, i3, config);
        if (bitmapD == null) {
            return c(i2, i3, config);
        }
        bitmapD.eraseColor(0);
        return bitmapD;
    }

    @Override // com.bumptech.glide.load.n.a0.e
    public void a() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        a(0L);
    }

    @Override // com.bumptech.glide.load.n.a0.e
    @SuppressLint({"InlinedApi"})
    public void a(int i2) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i2);
        }
        if (i2 >= 40) {
            a();
        } else if (i2 >= 20 || i2 == 15) {
            a(b() / 2);
        }
    }

    @Override // com.bumptech.glide.load.n.a0.e
    public synchronized void a(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable() && this.f3460a.b(bitmap) <= this.f3463d && this.f3461b.contains(bitmap.getConfig())) {
                int iB = this.f3460a.b(bitmap);
                this.f3460a.a(bitmap);
                this.f3462c.b(bitmap);
                this.f3467h++;
                this.f3464e += (long) iB;
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f3460a.c(bitmap));
                }
                c();
                e();
                return;
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f3460a.c(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f3461b.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    public long b() {
        return this.f3463d;
    }

    @Override // com.bumptech.glide.load.n.a0.e
    public Bitmap b(int i2, int i3, Bitmap.Config config) {
        Bitmap bitmapD = d(i2, i3, config);
        return bitmapD == null ? c(i2, i3, config) : bitmapD;
    }
}
