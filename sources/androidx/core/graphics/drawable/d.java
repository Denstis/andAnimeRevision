package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
class d extends Drawable implements Drawable.Callback, c, androidx.core.graphics.drawable.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final PorterDuff.Mode f939h = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    a f943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Drawable f945g;

    protected static abstract class a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f946a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Drawable.ConstantState f947b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorStateList f948c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        PorterDuff.Mode f949d;

        a(a aVar, Resources resources) {
            this.f948c = null;
            this.f949d = d.f939h;
            if (aVar != null) {
                this.f946a = aVar.f946a;
                this.f947b = aVar.f947b;
                this.f948c = aVar.f948c;
                this.f949d = aVar.f949d;
            }
        }

        boolean a() {
            return this.f947b != null;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            int i2 = this.f946a;
            Drawable.ConstantState constantState = this.f947b;
            return i2 | (constantState != null ? constantState.getChangingConfigurations() : 0);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return newDrawable(null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public abstract Drawable newDrawable(Resources resources);
    }

    private static class b extends a {
        b(a aVar, Resources resources) {
            super(aVar, resources);
        }

        @Override // androidx.core.graphics.drawable.d.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new d(this, resources);
        }
    }

    d(Drawable drawable) {
        this.f943e = c();
        a(drawable);
    }

    d(a aVar, Resources resources) {
        this.f943e = aVar;
        a(resources);
    }

    private void a(Resources resources) {
        Drawable.ConstantState constantState;
        a aVar = this.f943e;
        if (aVar == null || (constantState = aVar.f947b) == null) {
            return;
        }
        a(constantState.newDrawable(resources));
    }

    private boolean a(int[] iArr) {
        if (!b()) {
            return false;
        }
        a aVar = this.f943e;
        ColorStateList colorStateList = aVar.f948c;
        PorterDuff.Mode mode = aVar.f949d;
        if (colorStateList == null || mode == null) {
            this.f942d = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f942d || colorForState != this.f940b || mode != this.f941c) {
                setColorFilter(colorForState, mode);
                this.f940b = colorForState;
                this.f941c = mode;
                this.f942d = true;
                return true;
            }
        }
        return false;
    }

    @Override // androidx.core.graphics.drawable.c
    public final Drawable a() {
        return this.f945g;
    }

    @Override // androidx.core.graphics.drawable.c
    public final void a(Drawable drawable) {
        Drawable drawable2 = this.f945g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f945g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            a aVar = this.f943e;
            if (aVar != null) {
                aVar.f947b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    protected boolean b() {
        return true;
    }

    a c() {
        return new b(this.f943e, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f945g.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        a aVar = this.f943e;
        return changingConfigurations | (aVar != null ? aVar.getChangingConfigurations() : 0) | this.f945g.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        a aVar = this.f943e;
        if (aVar == null || !aVar.a()) {
            return null;
        }
        this.f943e.f946a = getChangingConfigurations();
        return this.f943e;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f945g.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f945g.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f945g.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f945g.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f945g.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f945g.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f945g.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f945g.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f945g.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f945g.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        a aVar;
        ColorStateList colorStateList = (!b() || (aVar = this.f943e) == null) ? null : aVar.f948c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f945g.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f945g.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f944f && super.mutate() == this) {
            this.f943e = c();
            Drawable drawable = this.f945g;
            if (drawable != null) {
                drawable.mutate();
            }
            a aVar = this.f943e;
            if (aVar != null) {
                Drawable drawable2 = this.f945g;
                aVar.f947b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f944f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f945g;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        return this.f945g.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        scheduleSelf(runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f945g.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.f945g.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i2) {
        this.f945g.setChangingConfigurations(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f945g.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f945g.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f945g.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return a(iArr) || this.f945g.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.f943e.f948c = colorStateList;
        a(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f943e.f949d = mode;
        a(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f945g.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
