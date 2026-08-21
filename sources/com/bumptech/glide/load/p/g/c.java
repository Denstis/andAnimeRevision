package com.bumptech.glide.load.p.g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import b.r.a.a.b;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.p.g.g;
import com.google.android.material.R;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends Drawable implements g.b, Animatable, b.r.a.a.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f3883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3888g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3889h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f3890i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f3891j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Rect f3892k;
    private List<b.a> l;

    static final class a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final g f3893a;

        a(g gVar) {
            this.f3893a = gVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new c(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    public c(Context context, c.a.a.n.a aVar, l<Bitmap> lVar, int i2, int i3, Bitmap bitmap) {
        this(new a(new g(c.a.a.c.b(context), aVar, i2, i3, lVar, bitmap)));
    }

    c(a aVar) {
        this.f3887f = true;
        this.f3889h = -1;
        c.a.a.t.j.a(aVar);
        this.f3883b = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Drawable.Callback h() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    private Rect i() {
        if (this.f3892k == null) {
            this.f3892k = new Rect();
        }
        return this.f3892k;
    }

    private Paint j() {
        if (this.f3891j == null) {
            this.f3891j = new Paint(2);
        }
        return this.f3891j;
    }

    private void k() {
        List<b.a> list = this.l;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.l.get(i2).a(this);
            }
        }
    }

    private void l() {
        this.f3888g = 0;
    }

    private void m() {
        c.a.a.t.j.a(!this.f3886e, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f3883b.f3893a.f() != 1) {
            if (this.f3884c) {
                return;
            }
            this.f3884c = true;
            this.f3883b.f3893a.a(this);
        }
        invalidateSelf();
    }

    private void n() {
        this.f3884c = false;
        this.f3883b.f3893a.b(this);
    }

    @Override // com.bumptech.glide.load.p.g.g.b
    public void a() {
        if (h() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (e() == d() - 1) {
            this.f3888g++;
        }
        int i2 = this.f3889h;
        if (i2 == -1 || this.f3888g < i2) {
            return;
        }
        k();
        stop();
    }

    public void a(l<Bitmap> lVar, Bitmap bitmap) {
        this.f3883b.f3893a.a(lVar, bitmap);
    }

    public ByteBuffer b() {
        return this.f3883b.f3893a.b();
    }

    public Bitmap c() {
        return this.f3883b.f3893a.e();
    }

    public int d() {
        return this.f3883b.f3893a.f();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f3886e) {
            return;
        }
        if (this.f3890i) {
            Gravity.apply(R.styleable.AppCompatTheme_windowMinWidthMinor, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), i());
            this.f3890i = false;
        }
        canvas.drawBitmap(this.f3883b.f3893a.c(), (Rect) null, i(), j());
    }

    public int e() {
        return this.f3883b.f3893a.d();
    }

    public int f() {
        return this.f3883b.f3893a.h();
    }

    public void g() {
        this.f3886e = true;
        this.f3883b.f3893a.a();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f3883b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3883b.f3893a.g();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3883b.f3893a.i();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f3884c;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f3890i = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        j().setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        j().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        c.a.a.t.j.a(!this.f3886e, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f3887f = z;
        if (!z) {
            n();
        } else if (this.f3885d) {
            m();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f3885d = true;
        l();
        if (this.f3887f) {
            m();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f3885d = false;
        n();
    }
}
