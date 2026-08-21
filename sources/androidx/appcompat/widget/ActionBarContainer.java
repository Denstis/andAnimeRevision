package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f359c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f360d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f361e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Drawable f362f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Drawable f363g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Drawable f364h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f365i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f366j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f367k;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b.h.o.s.a(this, new b(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.a.j.ActionBar);
        this.f362f = typedArrayObtainStyledAttributes.getDrawable(b.a.j.ActionBar_background);
        this.f363g = typedArrayObtainStyledAttributes.getDrawable(b.a.j.ActionBar_backgroundStacked);
        this.f367k = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.a.j.ActionBar_height, -1);
        if (getId() == b.a.f.split_action_bar) {
            this.f365i = true;
            this.f364h = typedArrayObtainStyledAttributes.getDrawable(b.a.j.ActionBar_backgroundSplit);
        }
        typedArrayObtainStyledAttributes.recycle();
        boolean z = false;
        if (!this.f365i ? !(this.f362f != null || this.f363g != null) : this.f364h == null) {
            z = true;
        }
        setWillNotDraw(z);
    }

    private int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f362f;
        if (drawable != null && drawable.isStateful()) {
            this.f362f.setState(getDrawableState());
        }
        Drawable drawable2 = this.f363g;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f363g.setState(getDrawableState());
        }
        Drawable drawable3 = this.f364h;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f364h.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f359c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f362f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f363g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f364h;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f360d = findViewById(b.a.f.action_bar);
        this.f361e = findViewById(b.a.f.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f358b || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        Drawable drawable;
        Drawable drawable2;
        int left;
        int top;
        int right;
        View view;
        super.onLayout(z, i2, i3, i4, i5);
        View view2 = this.f359c;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = (view2 == null || view2.getVisibility() == 8) ? false : true;
        if (view2 != null && view2.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view2.getLayoutParams();
            view2.layout(i2, (measuredHeight - view2.getMeasuredHeight()) - layoutParams.bottomMargin, i4, measuredHeight - layoutParams.bottomMargin);
        }
        if (this.f365i) {
            Drawable drawable3 = this.f364h;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z2 = false;
            }
        } else {
            if (this.f362f != null) {
                if (this.f360d.getVisibility() == 0) {
                    drawable2 = this.f362f;
                    left = this.f360d.getLeft();
                    top = this.f360d.getTop();
                    right = this.f360d.getRight();
                    view = this.f360d;
                } else {
                    View view3 = this.f361e;
                    if (view3 == null || view3.getVisibility() != 0) {
                        this.f362f.setBounds(0, 0, 0, 0);
                        z3 = true;
                    } else {
                        drawable2 = this.f362f;
                        left = this.f361e.getLeft();
                        top = this.f361e.getTop();
                        right = this.f361e.getRight();
                        view = this.f361e;
                    }
                }
                drawable2.setBounds(left, top, right, view.getBottom());
                z3 = true;
            }
            this.f366j = z4;
            if (!z4 || (drawable = this.f363g) == null) {
                z2 = z3;
            } else {
                drawable.setBounds(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            }
        }
        if (z2) {
            invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005a  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onMeasure(int r4, int r5) {
        /*
            r3 = this;
            android.view.View r0 = r3.f360d
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != 0) goto L1c
            int r0 = android.view.View.MeasureSpec.getMode(r5)
            if (r0 != r1) goto L1c
            int r0 = r3.f367k
            if (r0 < 0) goto L1c
            int r5 = android.view.View.MeasureSpec.getSize(r5)
            int r5 = java.lang.Math.min(r0, r5)
            int r5 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r1)
        L1c:
            super.onMeasure(r4, r5)
            android.view.View r4 = r3.f360d
            if (r4 != 0) goto L24
            return
        L24:
            int r4 = android.view.View.MeasureSpec.getMode(r5)
            android.view.View r0 = r3.f359c
            if (r0 == 0) goto L6f
            int r0 = r0.getVisibility()
            r2 = 8
            if (r0 == r2) goto L6f
            r0 = 1073741824(0x40000000, float:2.0)
            if (r4 == r0) goto L6f
            android.view.View r0 = r3.f360d
            boolean r0 = r3.b(r0)
            if (r0 != 0) goto L47
            android.view.View r0 = r3.f360d
        L42:
            int r0 = r3.a(r0)
            goto L53
        L47:
            android.view.View r0 = r3.f361e
            boolean r0 = r3.b(r0)
            if (r0 != 0) goto L52
            android.view.View r0 = r3.f361e
            goto L42
        L52:
            r0 = 0
        L53:
            if (r4 != r1) goto L5a
            int r4 = android.view.View.MeasureSpec.getSize(r5)
            goto L5d
        L5a:
            r4 = 2147483647(0x7fffffff, float:NaN)
        L5d:
            int r5 = r3.getMeasuredWidth()
            android.view.View r1 = r3.f359c
            int r1 = r3.a(r1)
            int r0 = r0 + r1
            int r4 = java.lang.Math.min(r0, r4)
            r3.setMeasuredDimension(r5, r4)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f362f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f362f);
        }
        this.f362f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f360d;
            if (view != null) {
                this.f362f.setBounds(view.getLeft(), this.f360d.getTop(), this.f360d.getRight(), this.f360d.getBottom());
            }
        }
        boolean z = true;
        if (!this.f365i ? this.f362f != null || this.f363g != null : this.f364h != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f364h;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f364h);
        }
        this.f364h = drawable;
        boolean z = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f365i && (drawable2 = this.f364h) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f365i ? !(this.f362f != null || this.f363g != null) : this.f364h == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f363g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f363g);
        }
        this.f363g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f366j && (drawable2 = this.f363g) != null) {
                drawable2.setBounds(this.f359c.getLeft(), this.f359c.getTop(), this.f359c.getRight(), this.f359c.getBottom());
            }
        }
        boolean z = true;
        if (!this.f365i ? this.f362f != null || this.f363g != null : this.f364h != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setTabContainer(j0 j0Var) {
        View view = this.f359c;
        if (view != null) {
            removeView(view);
        }
        this.f359c = j0Var;
        if (j0Var != null) {
            addView(j0Var);
            ViewGroup.LayoutParams layoutParams = j0Var.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            j0Var.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f358b = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.f362f;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f363g;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f364h;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2) {
        if (i2 != 0) {
            return super.startActionModeForChild(view, callback, i2);
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f362f && !this.f365i) || (drawable == this.f363g && this.f366j) || ((drawable == this.f364h && this.f365i) || super.verifyDrawable(drawable));
    }
}
