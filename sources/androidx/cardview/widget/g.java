package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
class g extends Drawable {
    private static final double q = Math.cos(Math.toRadians(45.0d));
    static a r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f740a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Path f746g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f747h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f748i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f749j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f750k;
    private final int m;
    private final int n;
    private boolean l = true;
    private boolean o = true;
    private boolean p = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f741b = new Paint(5);

    interface a {
        void a(Canvas canvas, RectF rectF, float f2, Paint paint);
    }

    g(Resources resources, ColorStateList colorStateList, float f2, float f3, float f4) {
        this.m = resources.getColor(b.d.b.cardview_shadow_start_color);
        this.n = resources.getColor(b.d.b.cardview_shadow_end_color);
        this.f740a = resources.getDimensionPixelSize(b.d.c.cardview_compat_inset_shadow);
        b(colorStateList);
        this.f742c = new Paint(5);
        this.f742c.setStyle(Paint.Style.FILL);
        this.f745f = (int) (f2 + 0.5f);
        this.f744e = new RectF();
        this.f743d = new Paint(this.f742c);
        this.f743d.setAntiAlias(false);
        a(f3, f4);
    }

    static float a(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        double d2 = f2;
        double d3 = 1.0d - q;
        double d4 = f3;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    private void a(float f2, float f3) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f2 + ". Must be >= 0");
        }
        if (f3 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f3 + ". Must be >= 0");
        }
        float fD = d(f2);
        float fD2 = d(f3);
        if (fD > fD2) {
            if (!this.p) {
                this.p = true;
            }
            fD = fD2;
        }
        if (this.f749j == fD && this.f747h == fD2) {
            return;
        }
        this.f749j = fD;
        this.f747h = fD2;
        this.f748i = (int) ((fD * 1.5f) + this.f740a + 0.5f);
        this.l = true;
        invalidateSelf();
    }

    private void a(Canvas canvas) {
        float f2 = this.f745f;
        float f3 = (-f2) - this.f748i;
        float f4 = f2 + this.f740a + (this.f749j / 2.0f);
        float f5 = f4 * 2.0f;
        boolean z = this.f744e.width() - f5 > 0.0f;
        boolean z2 = this.f744e.height() - f5 > 0.0f;
        int iSave = canvas.save();
        RectF rectF = this.f744e;
        canvas.translate(rectF.left + f4, rectF.top + f4);
        canvas.drawPath(this.f746g, this.f742c);
        if (z) {
            canvas.drawRect(0.0f, f3, this.f744e.width() - f5, -this.f745f, this.f743d);
        }
        canvas.restoreToCount(iSave);
        int iSave2 = canvas.save();
        RectF rectF2 = this.f744e;
        canvas.translate(rectF2.right - f4, rectF2.bottom - f4);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f746g, this.f742c);
        if (z) {
            canvas.drawRect(0.0f, f3, this.f744e.width() - f5, (-this.f745f) + this.f748i, this.f743d);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        RectF rectF3 = this.f744e;
        canvas.translate(rectF3.left + f4, rectF3.bottom - f4);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f746g, this.f742c);
        if (z2) {
            canvas.drawRect(0.0f, f3, this.f744e.height() - f5, -this.f745f, this.f743d);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF4 = this.f744e;
        canvas.translate(rectF4.right - f4, rectF4.top + f4);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f746g, this.f742c);
        if (z2) {
            canvas.drawRect(0.0f, f3, this.f744e.height() - f5, -this.f745f, this.f743d);
        }
        canvas.restoreToCount(iSave4);
    }

    static float b(float f2, float f3, boolean z) {
        float f4 = f2 * 1.5f;
        if (!z) {
            return f4;
        }
        double d2 = f4;
        double d3 = 1.0d - q;
        double d4 = f3;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    private void b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f750k = colorStateList;
        this.f741b.setColor(this.f750k.getColorForState(getState(), this.f750k.getDefaultColor()));
    }

    private void b(Rect rect) {
        float f2 = this.f747h;
        float f3 = 1.5f * f2;
        this.f744e.set(rect.left + f2, rect.top + f3, rect.right - f2, rect.bottom - f3);
        g();
    }

    private int d(float f2) {
        int i2 = (int) (f2 + 0.5f);
        return i2 % 2 == 1 ? i2 - 1 : i2;
    }

    private void g() {
        float f2 = this.f745f;
        RectF rectF = new RectF(-f2, -f2, f2, f2);
        RectF rectF2 = new RectF(rectF);
        float f3 = this.f748i;
        rectF2.inset(-f3, -f3);
        Path path = this.f746g;
        if (path == null) {
            this.f746g = new Path();
        } else {
            path.reset();
        }
        this.f746g.setFillType(Path.FillType.EVEN_ODD);
        this.f746g.moveTo(-this.f745f, 0.0f);
        this.f746g.rLineTo(-this.f748i, 0.0f);
        this.f746g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f746g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f746g.close();
        float f4 = this.f745f;
        float f5 = this.f748i;
        float f6 = f4 / (f4 + f5);
        Paint paint = this.f742c;
        float f7 = f4 + f5;
        int i2 = this.m;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f7, new int[]{i2, i2, this.n}, new float[]{0.0f, f6, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f743d;
        float f8 = this.f745f;
        float f9 = this.f748i;
        int i3 = this.m;
        paint2.setShader(new LinearGradient(0.0f, (-f8) + f9, 0.0f, (-f8) - f9, new int[]{i3, i3, this.n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f743d.setAntiAlias(false);
    }

    ColorStateList a() {
        return this.f750k;
    }

    void a(float f2) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f2 + ". Must be >= 0");
        }
        float f3 = (int) (f2 + 0.5f);
        if (this.f745f == f3) {
            return;
        }
        this.f745f = f3;
        this.l = true;
        invalidateSelf();
    }

    void a(ColorStateList colorStateList) {
        b(colorStateList);
        invalidateSelf();
    }

    void a(Rect rect) {
        getPadding(rect);
    }

    void a(boolean z) {
        this.o = z;
        invalidateSelf();
    }

    float b() {
        return this.f745f;
    }

    void b(float f2) {
        a(this.f749j, f2);
    }

    float c() {
        return this.f747h;
    }

    void c(float f2) {
        a(f2, this.f747h);
    }

    float d() {
        float f2 = this.f747h;
        return (Math.max(f2, this.f745f + this.f740a + ((f2 * 1.5f) / 2.0f)) * 2.0f) + (((this.f747h * 1.5f) + this.f740a) * 2.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.l) {
            b(getBounds());
            this.l = false;
        }
        canvas.translate(0.0f, this.f749j / 2.0f);
        a(canvas);
        canvas.translate(0.0f, (-this.f749j) / 2.0f);
        r.a(canvas, this.f744e, this.f745f, this.f741b);
    }

    float e() {
        float f2 = this.f747h;
        return (Math.max(f2, this.f745f + this.f740a + (f2 / 2.0f)) * 2.0f) + ((this.f747h + this.f740a) * 2.0f);
    }

    float f() {
        return this.f749j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(b(this.f747h, this.f745f, this.o));
        int iCeil2 = (int) Math.ceil(a(this.f747h, this.f745f, this.o));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f750k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f750k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f741b.getColor() == colorForState) {
            return false;
        }
        this.f741b.setColor(colorForState);
        this.l = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f741b.setAlpha(i2);
        this.f742c.setAlpha(i2);
        this.f743d.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f741b.setColorFilter(colorFilter);
    }
}
