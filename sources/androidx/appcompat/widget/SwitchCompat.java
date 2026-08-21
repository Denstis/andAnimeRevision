package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;

/* JADX INFO: loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    private static final Property<SwitchCompat, Float> N = new a(Float.class, "thumbPos");
    private static final int[] O = {R.attr.state_checked};
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private final TextPaint G;
    private ColorStateList H;
    private Layout I;
    private Layout J;
    private TransformationMethod K;
    ObjectAnimator L;
    private final Rect M;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Drawable f454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorStateList f455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PorterDuff.Mode f456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f458f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f459g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ColorStateList f460h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PorterDuff.Mode f461i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f462j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f463k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private CharSequence p;
    private CharSequence q;
    private boolean r;
    private int s;
    private int t;
    private float u;
    private float v;
    private VelocityTracker w;
    private int x;
    float y;
    private int z;

    static class a extends Property<SwitchCompat, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.y);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(SwitchCompat switchCompat, Float f2) {
            switchCompat.setThumbPosition(f2.floatValue());
        }
    }

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f455c = null;
        this.f456d = null;
        this.f457e = false;
        this.f458f = false;
        this.f460h = null;
        this.f461i = null;
        this.f462j = false;
        this.f463k = false;
        this.w = VelocityTracker.obtain();
        this.M = new Rect();
        this.G = new TextPaint(1);
        Resources resources = getResources();
        this.G.density = resources.getDisplayMetrics().density;
        q0 q0VarA = q0.a(context, attributeSet, b.a.j.SwitchCompat, i2, 0);
        this.f454b = q0VarA.b(b.a.j.SwitchCompat_android_thumb);
        Drawable drawable = this.f454b;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        this.f459g = q0VarA.b(b.a.j.SwitchCompat_track);
        Drawable drawable2 = this.f459g;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        this.p = q0VarA.e(b.a.j.SwitchCompat_android_textOn);
        this.q = q0VarA.e(b.a.j.SwitchCompat_android_textOff);
        this.r = q0VarA.a(b.a.j.SwitchCompat_showText, true);
        this.l = q0VarA.c(b.a.j.SwitchCompat_thumbTextPadding, 0);
        this.m = q0VarA.c(b.a.j.SwitchCompat_switchMinWidth, 0);
        this.n = q0VarA.c(b.a.j.SwitchCompat_switchPadding, 0);
        this.o = q0VarA.a(b.a.j.SwitchCompat_splitTrack, false);
        ColorStateList colorStateListA = q0VarA.a(b.a.j.SwitchCompat_thumbTint);
        if (colorStateListA != null) {
            this.f455c = colorStateListA;
            this.f457e = true;
        }
        PorterDuff.Mode modeA = a0.a(q0VarA.d(b.a.j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f456d != modeA) {
            this.f456d = modeA;
            this.f458f = true;
        }
        if (this.f457e || this.f458f) {
            a();
        }
        ColorStateList colorStateListA2 = q0VarA.a(b.a.j.SwitchCompat_trackTint);
        if (colorStateListA2 != null) {
            this.f460h = colorStateListA2;
            this.f462j = true;
        }
        PorterDuff.Mode modeA2 = a0.a(q0VarA.d(b.a.j.SwitchCompat_trackTintMode, -1), null);
        if (this.f461i != modeA2) {
            this.f461i = modeA2;
            this.f463k = true;
        }
        if (this.f462j || this.f463k) {
            b();
        }
        int iG = q0VarA.g(b.a.j.SwitchCompat_switchTextAppearance, 0);
        if (iG != 0) {
            a(context, iG);
        }
        q0VarA.a();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.t = viewConfiguration.getScaledTouchSlop();
        this.x = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    private static float a(float f2, float f3, float f4) {
        return f2 < f3 ? f3 : f2 > f4 ? f4 : f2;
    }

    private Layout a(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.K;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        CharSequence charSequence2 = charSequence;
        return new StaticLayout(charSequence2, this.G, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, r2)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private void a() {
        if (this.f454b != null) {
            if (this.f457e || this.f458f) {
                this.f454b = this.f454b.mutate();
                if (this.f457e) {
                    androidx.core.graphics.drawable.a.a(this.f454b, this.f455c);
                }
                if (this.f458f) {
                    androidx.core.graphics.drawable.a.a(this.f454b, this.f456d);
                }
                if (this.f454b.isStateful()) {
                    this.f454b.setState(getDrawableState());
                }
            }
        }
    }

    private void a(int i2, int i3) {
        a(i2 != 1 ? i2 != 2 ? i2 != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i3);
    }

    private void a(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setAction(3);
        super.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    private void a(boolean z) {
        this.L = ObjectAnimator.ofFloat(this, N, z ? 1.0f : 0.0f);
        this.L.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.L.setAutoCancel(true);
        }
        this.L.start();
    }

    private boolean a(float f2, float f3) {
        if (this.f454b == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f454b.getPadding(this.M);
        int i2 = this.D;
        int i3 = this.t;
        int i4 = i2 - i3;
        int i5 = (this.C + thumbOffset) - i3;
        int i6 = this.B + i5;
        Rect rect = this.M;
        return f2 > ((float) i5) && f2 < ((float) (((i6 + rect.left) + rect.right) + i3)) && f3 > ((float) i4) && f3 < ((float) (this.F + i3));
    }

    private void b() {
        if (this.f459g != null) {
            if (this.f462j || this.f463k) {
                this.f459g = this.f459g.mutate();
                if (this.f462j) {
                    androidx.core.graphics.drawable.a.a(this.f459g, this.f460h);
                }
                if (this.f463k) {
                    androidx.core.graphics.drawable.a.a(this.f459g, this.f461i);
                }
                if (this.f459g.isStateful()) {
                    this.f459g.setState(getDrawableState());
                }
            }
        }
    }

    private void b(MotionEvent motionEvent) {
        boolean targetCheckedState;
        this.s = 0;
        boolean z = true;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        boolean zIsChecked = isChecked();
        if (z2) {
            this.w.computeCurrentVelocity(1000);
            float xVelocity = this.w.getXVelocity();
            if (Math.abs(xVelocity) > this.x) {
                if (!w0.a(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                    z = false;
                }
                targetCheckedState = z;
            } else {
                targetCheckedState = getTargetCheckedState();
            }
        } else {
            targetCheckedState = zIsChecked;
        }
        if (targetCheckedState != zIsChecked) {
            playSoundEffect(0);
        }
        setChecked(targetCheckedState);
        a(motionEvent);
    }

    private void c() {
        ObjectAnimator objectAnimator = this.L;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private boolean getTargetCheckedState() {
        return this.y > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((w0.a(this) ? 1.0f - this.y : this.y) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f459g;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.M;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f454b;
        Rect rectD = drawable2 != null ? a0.d(drawable2) : a0.f489a;
        return ((((this.z - this.B) - rect.left) - rect.right) - rectD.left) - rectD.right;
    }

    public void a(Context context, int i2) {
        q0 q0VarA = q0.a(context, i2, b.a.j.TextAppearance);
        ColorStateList colorStateListA = q0VarA.a(b.a.j.TextAppearance_android_textColor);
        if (colorStateListA == null) {
            colorStateListA = getTextColors();
        }
        this.H = colorStateListA;
        int iC = q0VarA.c(b.a.j.TextAppearance_android_textSize, 0);
        if (iC != 0) {
            float f2 = iC;
            if (f2 != this.G.getTextSize()) {
                this.G.setTextSize(f2);
                requestLayout();
            }
        }
        a(q0VarA.d(b.a.j.TextAppearance_android_typeface, -1), q0VarA.d(b.a.j.TextAppearance_android_textStyle, -1));
        this.K = q0VarA.a(b.a.j.TextAppearance_textAllCaps, false) ? new b.a.m.a(getContext()) : null;
        q0VarA.a();
    }

    public void a(Typeface typeface, int i2) {
        if (i2 <= 0) {
            this.G.setFakeBoldText(false);
            this.G.setTextSkewX(0.0f);
            setSwitchTypeface(typeface);
        } else {
            Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i2) : Typeface.create(typeface, i2);
            setSwitchTypeface(typefaceDefaultFromStyle);
            int style = ((typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0) ^ (-1)) & i2;
            this.G.setFakeBoldText((style & 1) != 0);
            this.G.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i2;
        int i3;
        Rect rect = this.M;
        int i4 = this.C;
        int i5 = this.D;
        int i6 = this.E;
        int i7 = this.F;
        int thumbOffset = getThumbOffset() + i4;
        Drawable drawable = this.f454b;
        Rect rectD = drawable != null ? a0.d(drawable) : a0.f489a;
        Drawable drawable2 = this.f459g;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i8 = rect.left;
            thumbOffset += i8;
            if (rectD != null) {
                int i9 = rectD.left;
                if (i9 > i8) {
                    i4 += i9 - i8;
                }
                int i10 = rectD.top;
                int i11 = rect.top;
                i2 = i10 > i11 ? (i10 - i11) + i5 : i5;
                int i12 = rectD.right;
                int i13 = rect.right;
                if (i12 > i13) {
                    i6 -= i12 - i13;
                }
                int i14 = rectD.bottom;
                int i15 = rect.bottom;
                if (i14 > i15) {
                    i3 = i7 - (i14 - i15);
                }
                this.f459g.setBounds(i4, i2, i6, i3);
            } else {
                i2 = i5;
            }
            i3 = i7;
            this.f459g.setBounds(i4, i2, i6, i3);
        }
        Drawable drawable3 = this.f454b;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i16 = thumbOffset - rect.left;
            int i17 = thumbOffset + this.B + rect.right;
            this.f454b.setBounds(i16, i5, i17, i7);
            Drawable background = getBackground();
            if (background != null) {
                androidx.core.graphics.drawable.a.a(background, i16, i5, i17, i7);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f2, f3);
        }
        Drawable drawable = this.f454b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, f2, f3);
        }
        Drawable drawable2 = this.f459g;
        if (drawable2 != null) {
            androidx.core.graphics.drawable.a.a(drawable2, f2, f3);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f454b;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f459g;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!w0.a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.z;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.n : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (w0.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.z;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.n : compoundPaddingRight;
    }

    public boolean getShowText() {
        return this.r;
    }

    public boolean getSplitTrack() {
        return this.o;
    }

    public int getSwitchMinWidth() {
        return this.m;
    }

    public int getSwitchPadding() {
        return this.n;
    }

    public CharSequence getTextOff() {
        return this.q;
    }

    public CharSequence getTextOn() {
        return this.p;
    }

    public Drawable getThumbDrawable() {
        return this.f454b;
    }

    public int getThumbTextPadding() {
        return this.l;
    }

    public ColorStateList getThumbTintList() {
        return this.f455c;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f456d;
    }

    public Drawable getTrackDrawable() {
        return this.f459g;
    }

    public ColorStateList getTrackTintList() {
        return this.f460h;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f461i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f454b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f459g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.L;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.L.end();
        this.L = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(iArrOnCreateDrawableState, O);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.M;
        Drawable drawable = this.f459g;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.D;
        int i3 = this.F;
        int i4 = i2 + rect.top;
        int i5 = i3 - rect.bottom;
        Drawable drawable2 = this.f454b;
        if (drawable != null) {
            if (!this.o || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectD = a0.d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectD.left;
                rect.right -= rectD.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.I : this.J;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.H;
            if (colorStateList != null) {
                this.G.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.G.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i4 + i5) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        CharSequence charSequence = isChecked() ? this.p : this.q;
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        CharSequence text = accessibilityNodeInfo.getText();
        if (TextUtils.isEmpty(text)) {
            accessibilityNodeInfo.setText(charSequence);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(text);
        sb.append(' ');
        sb.append(charSequence);
        accessibilityNodeInfo.setText(sb);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int iMax;
        int width;
        int paddingLeft;
        int i6;
        int paddingTop;
        int height;
        super.onLayout(z, i2, i3, i4, i5);
        int iMax2 = 0;
        if (this.f454b != null) {
            Rect rect = this.M;
            Drawable drawable = this.f459g;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectD = a0.d(this.f454b);
            iMax = Math.max(0, rectD.left - rect.left);
            iMax2 = Math.max(0, rectD.right - rect.right);
        } else {
            iMax = 0;
        }
        if (w0.a(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.z + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.z) + iMax + iMax2;
        }
        int gravity = getGravity() & com.google.android.material.R.styleable.AppCompatTheme_windowActionBarOverlay;
        if (gravity == 16) {
            int paddingTop2 = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
            i6 = this.A;
            paddingTop = paddingTop2 - (i6 / 2);
        } else {
            if (gravity == 80) {
                height = getHeight() - getPaddingBottom();
                paddingTop = height - this.A;
                this.C = paddingLeft;
                this.D = paddingTop;
                this.F = height;
                this.E = width;
            }
            paddingTop = getPaddingTop();
            i6 = this.A;
        }
        height = i6 + paddingTop;
        this.C = paddingLeft;
        this.D = paddingTop;
        this.F = height;
        this.E = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i3) {
        int intrinsicWidth;
        int intrinsicHeight;
        if (this.r) {
            if (this.I == null) {
                this.I = a(this.p);
            }
            if (this.J == null) {
                this.J = a(this.q);
            }
        }
        Rect rect = this.M;
        Drawable drawable = this.f454b;
        int intrinsicHeight2 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f454b.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f454b.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        this.B = Math.max(this.r ? Math.max(this.I.getWidth(), this.J.getWidth()) + (this.l * 2) : 0, intrinsicWidth);
        Drawable drawable2 = this.f459g;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f459g.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax = rect.left;
        int iMax2 = rect.right;
        Drawable drawable3 = this.f454b;
        if (drawable3 != null) {
            Rect rectD = a0.d(drawable3);
            iMax = Math.max(iMax, rectD.left);
            iMax2 = Math.max(iMax2, rectD.right);
        }
        int iMax3 = Math.max(this.m, (this.B * 2) + iMax + iMax2);
        int iMax4 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.z = iMax3;
        this.A = iMax4;
        super.onMeasure(i2, i3);
        if (getMeasuredHeight() < iMax4) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax4);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.p : this.q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008d  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            android.view.VelocityTracker r0 = r6.w
            r0.addMovement(r7)
            int r0 = r7.getActionMasked()
            r1 = 1
            if (r0 == 0) goto La1
            r2 = 2
            if (r0 == r1) goto L8d
            if (r0 == r2) goto L16
            r3 = 3
            if (r0 == r3) goto L8d
            goto Lbb
        L16:
            int r0 = r6.s
            if (r0 == 0) goto Lbb
            if (r0 == r1) goto L59
            if (r0 == r2) goto L20
            goto Lbb
        L20:
            float r7 = r7.getX()
            int r0 = r6.getThumbScrollRange()
            float r2 = r6.u
            float r2 = r7 - r2
            r3 = 1065353216(0x3f800000, float:1.0)
            r4 = 0
            if (r0 == 0) goto L34
            float r0 = (float) r0
            float r2 = r2 / r0
            goto L3f
        L34:
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L3b
            r2 = 1065353216(0x3f800000, float:1.0)
            goto L3f
        L3b:
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            r2 = -1082130432(0xffffffffbf800000, float:-1.0)
        L3f:
            boolean r0 = androidx.appcompat.widget.w0.a(r6)
            if (r0 == 0) goto L46
            float r2 = -r2
        L46:
            float r0 = r6.y
            float r0 = r0 + r2
            float r0 = a(r0, r4, r3)
            float r2 = r6.y
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L58
            r6.u = r7
            r6.setThumbPosition(r0)
        L58:
            return r1
        L59:
            float r0 = r7.getX()
            float r3 = r7.getY()
            float r4 = r6.u
            float r4 = r0 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.t
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 > 0) goto L7f
            float r4 = r6.v
            float r4 = r3 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.t
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto Lbb
        L7f:
            r6.s = r2
            android.view.ViewParent r7 = r6.getParent()
            r7.requestDisallowInterceptTouchEvent(r1)
            r6.u = r0
            r6.v = r3
            return r1
        L8d:
            int r0 = r6.s
            if (r0 != r2) goto L98
            r6.b(r7)
            super.onTouchEvent(r7)
            return r1
        L98:
            r0 = 0
            r6.s = r0
            android.view.VelocityTracker r0 = r6.w
            r0.clear()
            goto Lbb
        La1:
            float r0 = r7.getX()
            float r2 = r7.getY()
            boolean r3 = r6.isEnabled()
            if (r3 == 0) goto Lbb
            boolean r3 = r6.a(r0, r2)
            if (r3 == 0) goto Lbb
            r6.s = r1
            r6.u = r0
            r6.v = r2
        Lbb:
            boolean r7 = super.onTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean zIsChecked = isChecked();
        if (getWindowToken() != null && b.h.o.s.z(this)) {
            a(zIsChecked);
        } else {
            c();
            setThumbPosition(zIsChecked ? 1.0f : 0.0f);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.a(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.r != z) {
            this.r = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.o = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i2) {
        this.m = i2;
        requestLayout();
    }

    public void setSwitchPadding(int i2) {
        this.n = i2;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.G.getTypeface() == null || this.G.getTypeface().equals(typeface)) && (this.G.getTypeface() != null || typeface == null)) {
            return;
        }
        this.G.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        this.q = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.p = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f454b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f454b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f2) {
        this.y = f2;
        invalidate();
    }

    public void setThumbResource(int i2) {
        setThumbDrawable(b.a.k.a.a.c(getContext(), i2));
    }

    public void setThumbTextPadding(int i2) {
        this.l = i2;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f455c = colorStateList;
        this.f457e = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f456d = mode;
        this.f458f = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f459g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f459g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i2) {
        setTrackDrawable(b.a.k.a.a.c(getContext(), i2));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f460h = colorStateList;
        this.f462j = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f461i = mode;
        this.f463k = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f454b || drawable == this.f459g;
    }
}
