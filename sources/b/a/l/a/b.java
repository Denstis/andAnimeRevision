package b.a.l.a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
class b extends Drawable implements Drawable.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f2152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Rect f2153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f2154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f2155e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2157g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f2159i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Runnable f2160j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f2161k;
    private long l;
    private C0094b m;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2156f = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f2158h = -1;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(true);
            b.this.invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: b.a.l.a.b$b, reason: collision with other inner class name */
    static class C0094b implements Drawable.Callback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Drawable.Callback f2163b;

        C0094b() {
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f2163b;
            this.f2163b = null;
            return callback;
        }

        public C0094b a(Drawable.Callback callback) {
            this.f2163b = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
            Drawable.Callback callback = this.f2163b;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j2);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f2163b;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    static abstract class c extends Drawable.ConstantState {
        int A;
        int B;
        boolean C;
        ColorFilter D;
        boolean E;
        ColorStateList F;
        PorterDuff.Mode G;
        boolean H;
        boolean I;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final b f2164a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Resources f2165b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2166c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2167d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2168e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SparseArray<Drawable.ConstantState> f2169f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        Drawable[] f2170g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f2171h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f2172i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f2173j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        Rect f2174k;
        boolean l;
        boolean m;
        int n;
        int o;
        int p;
        int q;
        boolean r;
        int s;
        boolean t;
        boolean u;
        boolean v;
        boolean w;
        boolean x;
        boolean y;
        int z;

        c(c cVar, b bVar, Resources resources) {
            this.f2166c = 160;
            this.f2172i = false;
            this.l = false;
            this.x = true;
            this.A = 0;
            this.B = 0;
            this.f2164a = bVar;
            this.f2165b = resources != null ? resources : cVar != null ? cVar.f2165b : null;
            this.f2166c = b.a(resources, cVar != null ? cVar.f2166c : 0);
            if (cVar == null) {
                this.f2170g = new Drawable[10];
                this.f2171h = 0;
                return;
            }
            this.f2167d = cVar.f2167d;
            this.f2168e = cVar.f2168e;
            this.v = true;
            this.w = true;
            this.f2172i = cVar.f2172i;
            this.l = cVar.l;
            this.x = cVar.x;
            this.y = cVar.y;
            this.z = cVar.z;
            this.A = cVar.A;
            this.B = cVar.B;
            this.C = cVar.C;
            this.D = cVar.D;
            this.E = cVar.E;
            this.F = cVar.F;
            this.G = cVar.G;
            this.H = cVar.H;
            this.I = cVar.I;
            if (cVar.f2166c == this.f2166c) {
                if (cVar.f2173j) {
                    this.f2174k = new Rect(cVar.f2174k);
                    this.f2173j = true;
                }
                if (cVar.m) {
                    this.n = cVar.n;
                    this.o = cVar.o;
                    this.p = cVar.p;
                    this.q = cVar.q;
                    this.m = true;
                }
            }
            if (cVar.r) {
                this.s = cVar.s;
                this.r = true;
            }
            if (cVar.t) {
                this.u = cVar.u;
                this.t = true;
            }
            Drawable[] drawableArr = cVar.f2170g;
            this.f2170g = new Drawable[drawableArr.length];
            this.f2171h = cVar.f2171h;
            SparseArray<Drawable.ConstantState> sparseArray = cVar.f2169f;
            this.f2169f = sparseArray != null ? sparseArray.clone() : new SparseArray<>(this.f2171h);
            int i2 = this.f2171h;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3] != null) {
                    Drawable.ConstantState constantState = drawableArr[i3].getConstantState();
                    if (constantState != null) {
                        this.f2169f.put(i3, constantState);
                    } else {
                        this.f2170g[i3] = drawableArr[i3];
                    }
                }
            }
        }

        private Drawable b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.z);
            }
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setCallback(this.f2164a);
            return drawableMutate;
        }

        private void n() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f2169f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.f2170g[this.f2169f.keyAt(i2)] = b(this.f2169f.valueAt(i2).newDrawable(this.f2165b));
                }
                this.f2169f = null;
            }
        }

        public final int a(Drawable drawable) {
            int i2 = this.f2171h;
            if (i2 >= this.f2170g.length) {
                a(i2, i2 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f2164a);
            this.f2170g[i2] = drawable;
            this.f2171h++;
            this.f2168e = drawable.getChangingConfigurations() | this.f2168e;
            k();
            this.f2174k = null;
            this.f2173j = false;
            this.m = false;
            this.v = false;
            return i2;
        }

        public final Drawable a(int i2) {
            int iIndexOfKey;
            Drawable drawable = this.f2170g[i2];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f2169f;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i2)) < 0) {
                return null;
            }
            Drawable drawableB = b(this.f2169f.valueAt(iIndexOfKey).newDrawable(this.f2165b));
            this.f2170g[i2] = drawableB;
            this.f2169f.removeAt(iIndexOfKey);
            if (this.f2169f.size() == 0) {
                this.f2169f = null;
            }
            return drawableB;
        }

        public void a(int i2, int i3) {
            Drawable[] drawableArr = new Drawable[i3];
            System.arraycopy(this.f2170g, 0, drawableArr, 0, i2);
            this.f2170g = drawableArr;
        }

        final void a(Resources.Theme theme) {
            if (theme != null) {
                n();
                int i2 = this.f2171h;
                Drawable[] drawableArr = this.f2170g;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3] != null && drawableArr[i3].canApplyTheme()) {
                        drawableArr[i3].applyTheme(theme);
                        this.f2168e |= drawableArr[i3].getChangingConfigurations();
                    }
                }
                a(theme.getResources());
            }
        }

        final void a(Resources resources) {
            if (resources != null) {
                this.f2165b = resources;
                int iA = b.a(resources, this.f2166c);
                int i2 = this.f2166c;
                this.f2166c = iA;
                if (i2 != iA) {
                    this.m = false;
                    this.f2173j = false;
                }
            }
        }

        public final void a(boolean z) {
            this.l = z;
        }

        public synchronized boolean a() {
            if (this.v) {
                return this.w;
            }
            n();
            this.v = true;
            int i2 = this.f2171h;
            Drawable[] drawableArr = this.f2170g;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getConstantState() == null) {
                    this.w = false;
                    return false;
                }
            }
            this.w = true;
            return true;
        }

        protected void b() {
            this.m = true;
            n();
            int i2 = this.f2171h;
            Drawable[] drawableArr = this.f2170g;
            this.o = -1;
            this.n = -1;
            this.q = 0;
            this.p = 0;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.n) {
                    this.n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.o) {
                    this.o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.p) {
                    this.p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.q) {
                    this.q = minimumHeight;
                }
            }
        }

        public final void b(int i2) {
            this.A = i2;
        }

        public final void b(boolean z) {
            this.f2172i = z;
        }

        final boolean b(int i2, int i3) {
            int i4 = this.f2171h;
            Drawable[] drawableArr = this.f2170g;
            boolean z = false;
            for (int i5 = 0; i5 < i4; i5++) {
                if (drawableArr[i5] != null) {
                    boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? drawableArr[i5].setLayoutDirection(i2) : false;
                    if (i5 == i3) {
                        z = layoutDirection;
                    }
                }
            }
            this.z = i2;
            return z;
        }

        final int c() {
            return this.f2170g.length;
        }

        public final void c(int i2) {
            this.B = i2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i2 = this.f2171h;
            Drawable[] drawableArr = this.f2170g;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f2169f.get(i3);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        public final int d() {
            return this.f2171h;
        }

        public final int e() {
            if (!this.m) {
                b();
            }
            return this.o;
        }

        public final int f() {
            if (!this.m) {
                b();
            }
            return this.q;
        }

        public final int g() {
            if (!this.m) {
                b();
            }
            return this.p;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2167d | this.f2168e;
        }

        public final Rect h() {
            if (this.f2172i) {
                return null;
            }
            if (this.f2174k != null || this.f2173j) {
                return this.f2174k;
            }
            n();
            Rect rect = new Rect();
            int i2 = this.f2171h;
            Drawable[] drawableArr = this.f2170g;
            Rect rect2 = null;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getPadding(rect)) {
                    if (rect2 == null) {
                        rect2 = new Rect(0, 0, 0, 0);
                    }
                    int i4 = rect.left;
                    if (i4 > rect2.left) {
                        rect2.left = i4;
                    }
                    int i5 = rect.top;
                    if (i5 > rect2.top) {
                        rect2.top = i5;
                    }
                    int i6 = rect.right;
                    if (i6 > rect2.right) {
                        rect2.right = i6;
                    }
                    int i7 = rect.bottom;
                    if (i7 > rect2.bottom) {
                        rect2.bottom = i7;
                    }
                }
            }
            this.f2173j = true;
            this.f2174k = rect2;
            return rect2;
        }

        public final int i() {
            if (!this.m) {
                b();
            }
            return this.n;
        }

        public final int j() {
            if (this.r) {
                return this.s;
            }
            n();
            int i2 = this.f2171h;
            Drawable[] drawableArr = this.f2170g;
            int opacity = i2 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i3 = 1; i3 < i2; i3++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i3].getOpacity());
            }
            this.s = opacity;
            this.r = true;
            return opacity;
        }

        void k() {
            this.r = false;
            this.t = false;
        }

        public final boolean l() {
            return this.l;
        }

        abstract void m();
    }

    b() {
    }

    static int a(Resources resources, int i2) {
        if (resources != null) {
            i2 = resources.getDisplayMetrics().densityDpi;
        }
        if (i2 == 0) {
            return 160;
        }
        return i2;
    }

    private void a(Drawable drawable) {
        if (this.m == null) {
            this.m = new C0094b();
        }
        C0094b c0094b = this.m;
        c0094b.a(drawable.getCallback());
        drawable.setCallback(c0094b);
        try {
            if (this.f2152b.A <= 0 && this.f2157g) {
                drawable.setAlpha(this.f2156f);
            }
            if (this.f2152b.E) {
                drawable.setColorFilter(this.f2152b.D);
            } else {
                if (this.f2152b.H) {
                    androidx.core.graphics.drawable.a.a(drawable, this.f2152b.F);
                }
                if (this.f2152b.I) {
                    androidx.core.graphics.drawable.a.a(drawable, this.f2152b.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f2152b.x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f2152b.C);
            }
            Rect rect = this.f2153c;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.m.a());
        }
    }

    @SuppressLint({"WrongConstant"})
    @TargetApi(23)
    private boolean c() {
        return isAutoMirrored() && getLayoutDirection() == 1;
    }

    c a() {
        throw null;
    }

    final void a(Resources resources) {
        this.f2152b.a(resources);
    }

    protected void a(c cVar) {
        this.f2152b = cVar;
        int i2 = this.f2158h;
        if (i2 >= 0) {
            this.f2154d = cVar.a(i2);
            Drawable drawable = this.f2154d;
            if (drawable != null) {
                a(drawable);
            }
        }
        this.f2155e = null;
    }

    void a(boolean z) {
        boolean z2;
        boolean z3 = true;
        this.f2157g = true;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable = this.f2154d;
        if (drawable != null) {
            long j2 = this.f2161k;
            if (j2 == 0) {
                z2 = false;
            } else if (j2 <= jUptimeMillis) {
                drawable.setAlpha(this.f2156f);
                this.f2161k = 0L;
                z2 = false;
            } else {
                drawable.setAlpha(((255 - (((int) ((j2 - jUptimeMillis) * 255)) / this.f2152b.A)) * this.f2156f) / 255);
                z2 = true;
            }
        } else {
            this.f2161k = 0L;
            z2 = false;
        }
        Drawable drawable2 = this.f2155e;
        if (drawable2 != null) {
            long j3 = this.l;
            if (j3 == 0) {
                z3 = z2;
            } else if (j3 <= jUptimeMillis) {
                drawable2.setVisible(false, false);
                this.f2155e = null;
                this.l = 0L;
                z3 = z2;
            } else {
                drawable2.setAlpha(((((int) ((j3 - jUptimeMillis) * 255)) / this.f2152b.B) * this.f2156f) / 255);
            }
        } else {
            this.l = 0L;
            z3 = z2;
        }
        if (z && z3) {
            scheduleSelf(this.f2160j, jUptimeMillis + 16);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean a(int r10) {
        /*
            r9 = this;
            int r0 = r9.f2158h
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            b.a.l.a.b$c r0 = r9.f2152b
            int r0 = r0.B
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f2155e
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f2154d
            if (r0 == 0) goto L29
            r9.f2155e = r0
            b.a.l.a.b$c r0 = r9.f2152b
            int r0 = r0.B
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.l = r0
            goto L35
        L29:
            r9.f2155e = r4
            r9.l = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f2154d
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            b.a.l.a.b$c r0 = r9.f2152b
            int r1 = r0.f2171h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.a(r10)
            r9.f2154d = r0
            r9.f2158h = r10
            if (r0 == 0) goto L5a
            b.a.l.a.b$c r10 = r9.f2152b
            int r10 = r10.A
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.f2161k = r2
        L51:
            r9.a(r0)
            goto L5a
        L55:
            r9.f2154d = r4
            r10 = -1
            r9.f2158h = r10
        L5a:
            long r0 = r9.f2161k
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L67
            long r0 = r9.l
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L79
        L67:
            java.lang.Runnable r0 = r9.f2160j
            if (r0 != 0) goto L73
            b.a.l.a.b$a r0 = new b.a.l.a.b$a
            r0.<init>()
            r9.f2160j = r0
            goto L76
        L73:
            r9.unscheduleSelf(r0)
        L76:
            r9.a(r10)
        L79:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: b.a.l.a.b.a(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f2152b.a(theme);
    }

    int b() {
        return this.f2158h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f2152b.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f2154d;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f2155e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2156f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f2152b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f2152b.a()) {
            return null;
        }
        this.f2152b.f2167d = getChangingConfigurations();
        return this.f2152b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f2154d;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f2153c;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f2152b.l()) {
            return this.f2152b.e();
        }
        Drawable drawable = this.f2154d;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f2152b.l()) {
            return this.f2152b.i();
        }
        Drawable drawable = this.f2154d;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f2152b.l()) {
            return this.f2152b.f();
        }
        Drawable drawable = this.f2154d;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f2152b.l()) {
            return this.f2152b.g();
        }
        Drawable drawable = this.f2154d;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f2154d;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f2152b.j();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f2154d;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect rectH = this.f2152b.h();
        if (rectH != null) {
            rect.set(rectH);
            padding = (rectH.right | ((rectH.left | rectH.top) | rectH.bottom)) != 0;
        } else {
            Drawable drawable = this.f2154d;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (c()) {
            int i2 = rect.left;
            rect.left = rect.right;
            rect.right = i2;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        c cVar = this.f2152b;
        if (cVar != null) {
            cVar.k();
        }
        if (drawable != this.f2154d || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f2152b.C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f2155e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f2155e = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f2154d;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f2157g) {
                this.f2154d.setAlpha(this.f2156f);
            }
        }
        if (this.l != 0) {
            this.l = 0L;
            z = true;
        }
        if (this.f2161k != 0) {
            this.f2161k = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f2159i && super.mutate() == this) {
            c cVarA = a();
            cVarA.m();
            a(cVarA);
            this.f2159i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2155e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f2154d;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i2) {
        return this.f2152b.b(i2, b());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        Drawable drawable = this.f2155e;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        Drawable drawable2 = this.f2154d;
        if (drawable2 != null) {
            return drawable2.setLevel(i2);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f2155e;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f2154d;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        if (drawable != this.f2154d || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.f2157g && this.f2156f == i2) {
            return;
        }
        this.f2157g = true;
        this.f2156f = i2;
        Drawable drawable = this.f2154d;
        if (drawable != null) {
            if (this.f2161k == 0) {
                drawable.setAlpha(i2);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        c cVar = this.f2152b;
        if (cVar.C != z) {
            cVar.C = z;
            Drawable drawable = this.f2154d;
            if (drawable != null) {
                androidx.core.graphics.drawable.a.a(drawable, cVar.C);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        c cVar = this.f2152b;
        cVar.E = true;
        if (cVar.D != colorFilter) {
            cVar.D = colorFilter;
            Drawable drawable = this.f2154d;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        c cVar = this.f2152b;
        if (cVar.x != z) {
            cVar.x = z;
            Drawable drawable = this.f2154d;
            if (drawable != null) {
                drawable.setDither(cVar.x);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        Drawable drawable = this.f2154d;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, f2, f3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        Rect rect = this.f2153c;
        if (rect == null) {
            this.f2153c = new Rect(i2, i3, i4, i5);
        } else {
            rect.set(i2, i3, i4, i5);
        }
        Drawable drawable = this.f2154d;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, i2, i3, i4, i5);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        c cVar = this.f2152b;
        cVar.H = true;
        if (cVar.F != colorStateList) {
            cVar.F = colorStateList;
            androidx.core.graphics.drawable.a.a(this.f2154d, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.f2152b;
        cVar.I = true;
        if (cVar.G != mode) {
            cVar.G = mode;
            androidx.core.graphics.drawable.a.a(this.f2154d, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f2155e;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f2154d;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f2154d || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
