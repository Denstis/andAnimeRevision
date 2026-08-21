package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import b.h.o.s;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int s = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final View f964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f965e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f968h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f969i;
    private boolean m;
    boolean n;
    boolean o;
    boolean p;
    private boolean q;
    private boolean r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final C0019a f962b = new C0019a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Interpolator f963c = new AccelerateInterpolator();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float[] f966f = {0.0f, 0.0f};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float[] f967g = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float[] f970j = {0.0f, 0.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float[] f971k = {0.0f, 0.0f};
    private float[] l = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: androidx.core.widget.a$a, reason: collision with other inner class name */
    private static class C0019a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f974c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f975d;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private float f981j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f982k;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f976e = Long.MIN_VALUE;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f980i = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f977f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f978g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f979h = 0;

        C0019a() {
        }

        private float a(float f2) {
            return ((-4.0f) * f2 * f2) + (f2 * 4.0f);
        }

        private float a(long j2) {
            if (j2 < this.f976e) {
                return 0.0f;
            }
            long j3 = this.f980i;
            if (j3 < 0 || j2 < j3) {
                return a.a((j2 - this.f976e) / this.f972a, 0.0f, 1.0f) * 0.5f;
            }
            long j4 = j2 - j3;
            float f2 = this.f981j;
            return (1.0f - f2) + (f2 * a.a(j4 / this.f982k, 0.0f, 1.0f));
        }

        public void a() {
            if (this.f977f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fA = a(a(jCurrentAnimationTimeMillis));
            long j2 = jCurrentAnimationTimeMillis - this.f977f;
            this.f977f = jCurrentAnimationTimeMillis;
            float f2 = j2 * fA;
            this.f978g = (int) (this.f974c * f2);
            this.f979h = (int) (f2 * this.f975d);
        }

        public void a(float f2, float f3) {
            this.f974c = f2;
            this.f975d = f3;
        }

        public void a(int i2) {
            this.f973b = i2;
        }

        public int b() {
            return this.f978g;
        }

        public void b(int i2) {
            this.f972a = i2;
        }

        public int c() {
            return this.f979h;
        }

        public int d() {
            float f2 = this.f974c;
            return (int) (f2 / Math.abs(f2));
        }

        public int e() {
            float f2 = this.f975d;
            return (int) (f2 / Math.abs(f2));
        }

        public boolean f() {
            return this.f980i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f980i + ((long) this.f982k);
        }

        public void g() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f982k = a.a((int) (jCurrentAnimationTimeMillis - this.f976e), 0, this.f973b);
            this.f981j = a(jCurrentAnimationTimeMillis);
            this.f980i = jCurrentAnimationTimeMillis;
        }

        public void h() {
            this.f976e = AnimationUtils.currentAnimationTimeMillis();
            this.f980i = -1L;
            this.f977f = this.f976e;
            this.f981j = 0.5f;
            this.f978g = 0;
            this.f979h = 0;
        }
    }

    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            if (aVar.p) {
                if (aVar.n) {
                    aVar.n = false;
                    aVar.f962b.h();
                }
                C0019a c0019a = a.this.f962b;
                if (c0019a.f() || !a.this.b()) {
                    a.this.p = false;
                    return;
                }
                a aVar2 = a.this;
                if (aVar2.o) {
                    aVar2.o = false;
                    aVar2.a();
                }
                c0019a.a();
                a.this.a(c0019a.b(), c0019a.c());
                s.a(a.this.f964d, this);
            }
        }
    }

    public a(View view) {
        this.f964d = view;
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        float f3 = (int) ((1575.0f * f2) + 0.5f);
        b(f3, f3);
        float f4 = (int) ((f2 * 315.0f) + 0.5f);
        c(f4, f4);
        d(1);
        a(Float.MAX_VALUE, Float.MAX_VALUE);
        d(0.2f, 0.2f);
        e(1.0f, 1.0f);
        c(s);
        f(500);
        e(500);
    }

    static float a(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    private float a(float f2, float f3, float f4, float f5) {
        float interpolation;
        float fA = a(f2 * f3, 0.0f, f4);
        float f6 = f(f3 - f5, fA) - f(f5, fA);
        if (f6 < 0.0f) {
            interpolation = -this.f963c.getInterpolation(-f6);
        } else {
            if (f6 <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.f963c.getInterpolation(f6);
        }
        return a(interpolation, -1.0f, 1.0f);
    }

    private float a(int i2, float f2, float f3, float f4) {
        float fA = a(this.f966f[i2], f3, this.f967g[i2], f2);
        if (fA == 0.0f) {
            return 0.0f;
        }
        float f5 = this.f970j[i2];
        float f6 = this.f971k[i2];
        float f7 = this.l[i2];
        float f8 = f5 * f4;
        return fA > 0.0f ? a(fA * f8, f6, f7) : -a((-fA) * f8, f6, f7);
    }

    static int a(int i2, int i3, int i4) {
        return i2 > i4 ? i4 : i2 < i3 ? i3 : i2;
    }

    private void c() {
        if (this.n) {
            this.p = false;
        } else {
            this.f962b.g();
        }
    }

    private void d() {
        int i2;
        if (this.f965e == null) {
            this.f965e = new b();
        }
        this.p = true;
        this.n = true;
        if (this.m || (i2 = this.f969i) <= 0) {
            this.f965e.run();
        } else {
            s.a(this.f964d, this.f965e, i2);
        }
        this.m = true;
    }

    private float f(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        int i2 = this.f968h;
        if (i2 == 0 || i2 == 1) {
            if (f2 < f3) {
                if (f2 >= 0.0f) {
                    return 1.0f - (f2 / f3);
                }
                if (this.p && this.f968h == 1) {
                    return 1.0f;
                }
            }
        } else if (i2 == 2 && f2 < 0.0f) {
            return f2 / (-f3);
        }
        return 0.0f;
    }

    public a a(float f2, float f3) {
        float[] fArr = this.f967g;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    public a a(boolean z) {
        if (this.q && !z) {
            c();
        }
        this.q = z;
        return this;
    }

    void a() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f964d.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public abstract void a(int i2, int i3);

    public abstract boolean a(int i2);

    public a b(float f2, float f3) {
        float[] fArr = this.l;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    boolean b() {
        C0019a c0019a = this.f962b;
        int iE = c0019a.e();
        int iD = c0019a.d();
        return (iE != 0 && b(iE)) || (iD != 0 && a(iD));
    }

    public abstract boolean b(int i2);

    public a c(float f2, float f3) {
        float[] fArr = this.f971k;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public a c(int i2) {
        this.f969i = i2;
        return this;
    }

    public a d(float f2, float f3) {
        float[] fArr = this.f966f;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    public a d(int i2) {
        this.f968h = i2;
        return this;
    }

    public a e(float f2, float f3) {
        float[] fArr = this.f970j;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public a e(int i2) {
        this.f962b.a(i2);
        return this;
    }

    public a f(int i2) {
        this.f962b.b(i2);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.q
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L58
        L16:
            r5.c()
            goto L58
        L1a:
            r5.o = r2
            r5.m = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f964d
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.a(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f964d
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.a(r2, r7, r6, r3)
            androidx.core.widget.a$a r7 = r5.f962b
            r7.a(r0, r6)
            boolean r6 = r5.p
            if (r6 != 0) goto L58
            boolean r6 = r5.b()
            if (r6 == 0) goto L58
            r5.d()
        L58:
            boolean r6 = r5.r
            if (r6 == 0) goto L61
            boolean r6 = r5.p
            if (r6 == 0) goto L61
            r1 = 1
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
