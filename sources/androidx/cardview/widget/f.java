package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
class f extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f729a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f731c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f732d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f733e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ColorStateList f736h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PorterDuffColorFilter f737i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ColorStateList f738j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f734f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f735g = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PorterDuff.Mode f739k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f730b = new Paint(5);

    f(ColorStateList colorStateList, float f2) {
        this.f729a = f2;
        b(colorStateList);
        this.f731c = new RectF();
        this.f732d = new Rect();
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    private void a(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f731c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f732d.set(rect);
        if (this.f734f) {
            this.f732d.inset((int) Math.ceil(g.a(this.f733e, this.f729a, this.f735g)), (int) Math.ceil(g.b(this.f733e, this.f729a, this.f735g)));
            this.f731c.set(this.f732d);
        }
    }

    private void b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f736h = colorStateList;
        this.f730b.setColor(this.f736h.getColorForState(getState(), this.f736h.getDefaultColor()));
    }

    public ColorStateList a() {
        return this.f736h;
    }

    void a(float f2) {
        if (f2 == this.f729a) {
            return;
        }
        this.f729a = f2;
        a((Rect) null);
        invalidateSelf();
    }

    void a(float f2, boolean z, boolean z2) {
        if (f2 == this.f733e && this.f734f == z && this.f735g == z2) {
            return;
        }
        this.f733e = f2;
        this.f734f = z;
        this.f735g = z2;
        a((Rect) null);
        invalidateSelf();
    }

    public void a(ColorStateList colorStateList) {
        b(colorStateList);
        invalidateSelf();
    }

    float b() {
        return this.f733e;
    }

    public float c() {
        return this.f729a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f730b;
        if (this.f737i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f737i);
            z = true;
        }
        RectF rectF = this.f731c;
        float f2 = this.f729a;
        canvas.drawRoundRect(rectF, f2, f2, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f732d, this.f729a);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f738j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f736h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f736h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f730b.getColor();
        if (z) {
            this.f730b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f738j;
        if (colorStateList2 == null || (mode = this.f739k) == null) {
            return z;
        }
        this.f737i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f730b.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f730b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f738j = colorStateList;
        this.f737i = a(this.f738j, this.f739k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f739k = mode;
        this.f737i = a(this.f738j, this.f739k);
        invalidateSelf();
    }
}
