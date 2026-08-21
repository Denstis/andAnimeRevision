package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends androidx.appcompat.widget.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CharSequence f368j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private CharSequence f369k;
    private View l;
    private View m;
    private LinearLayout n;
    private TextView o;
    private TextView p;
    private int q;
    private int r;
    private boolean s;
    private int t;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ b.a.n.b f370b;

        a(ActionBarContextView actionBarContextView, b.a.n.b bVar) {
            this.f370b = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f370b.a();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        q0 q0VarA = q0.a(context, attributeSet, b.a.j.ActionMode, i2, 0);
        b.h.o.s.a(this, q0VarA.b(b.a.j.ActionMode_background));
        this.q = q0VarA.g(b.a.j.ActionMode_titleTextStyle, 0);
        this.r = q0VarA.g(b.a.j.ActionMode_subtitleTextStyle, 0);
        this.f482f = q0VarA.f(b.a.j.ActionMode_height, 0);
        this.t = q0VarA.g(b.a.j.ActionMode_closeItemLayout, b.a.g.abc_action_mode_close_item_material);
        q0VarA.a();
    }

    private void e() {
        if (this.n == null) {
            LayoutInflater.from(getContext()).inflate(b.a.g.abc_action_bar_title_item, this);
            this.n = (LinearLayout) getChildAt(getChildCount() - 1);
            this.o = (TextView) this.n.findViewById(b.a.f.action_bar_title);
            this.p = (TextView) this.n.findViewById(b.a.f.action_bar_subtitle);
            if (this.q != 0) {
                this.o.setTextAppearance(getContext(), this.q);
            }
            if (this.r != 0) {
                this.p.setTextAppearance(getContext(), this.r);
            }
        }
        this.o.setText(this.f368j);
        this.p.setText(this.f369k);
        boolean z = !TextUtils.isEmpty(this.f368j);
        boolean z2 = !TextUtils.isEmpty(this.f369k);
        int i2 = 0;
        this.p.setVisibility(z2 ? 0 : 8);
        LinearLayout linearLayout = this.n;
        if (!z && !z2) {
            i2 = 8;
        }
        linearLayout.setVisibility(i2);
        if (this.n.getParent() == null) {
            addView(this.n);
        }
    }

    public void a() {
        if (this.l == null) {
            c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(b.a.n.b r4) {
        /*
            r3 = this;
            android.view.View r0 = r3.l
            if (r0 != 0) goto L1b
            android.content.Context r0 = r3.getContext()
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            int r1 = r3.t
            r2 = 0
            android.view.View r0 = r0.inflate(r1, r3, r2)
            r3.l = r0
        L15:
            android.view.View r0 = r3.l
            r3.addView(r0)
            goto L22
        L1b:
            android.view.ViewParent r0 = r0.getParent()
            if (r0 != 0) goto L22
            goto L15
        L22:
            android.view.View r0 = r3.l
            int r1 = b.a.f.action_mode_close_button
            android.view.View r0 = r0.findViewById(r1)
            androidx.appcompat.widget.ActionBarContextView$a r1 = new androidx.appcompat.widget.ActionBarContextView$a
            r1.<init>(r3, r4)
            r0.setOnClickListener(r1)
            android.view.Menu r4 = r4.c()
            androidx.appcompat.view.menu.h r4 = (androidx.appcompat.view.menu.h) r4
            androidx.appcompat.widget.c r0 = r3.f481e
            if (r0 == 0) goto L3f
            r0.b()
        L3f:
            androidx.appcompat.widget.c r0 = new androidx.appcompat.widget.c
            android.content.Context r1 = r3.getContext()
            r0.<init>(r1)
            r3.f481e = r0
            androidx.appcompat.widget.c r0 = r3.f481e
            r1 = 1
            r0.b(r1)
            android.view.ViewGroup$LayoutParams r0 = new android.view.ViewGroup$LayoutParams
            r1 = -2
            r2 = -1
            r0.<init>(r1, r2)
            androidx.appcompat.widget.c r1 = r3.f481e
            android.content.Context r2 = r3.f479c
            r4.addMenuPresenter(r1, r2)
            androidx.appcompat.widget.c r4 = r3.f481e
            androidx.appcompat.view.menu.q r4 = r4.b(r3)
            androidx.appcompat.widget.ActionMenuView r4 = (androidx.appcompat.widget.ActionMenuView) r4
            r3.f480d = r4
            androidx.appcompat.widget.ActionMenuView r4 = r3.f480d
            r1 = 0
            b.h.o.s.a(r4, r1)
            androidx.appcompat.widget.ActionMenuView r4 = r3.f480d
            r3.addView(r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContextView.a(b.a.n.b):void");
    }

    public boolean b() {
        return this.s;
    }

    public void c() {
        removeAllViews();
        this.m = null;
        this.f480d = null;
    }

    public boolean d() {
        c cVar = this.f481e;
        if (cVar != null) {
            return cVar.h();
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f369k;
    }

    public CharSequence getTitle() {
        return this.f368j;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f481e;
        if (cVar != null) {
            cVar.d();
            this.f481e.e();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            return;
        }
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(ActionBarContextView.class.getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setContentDescription(this.f368j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int iA;
        boolean zA = w0.a(this);
        int paddingRight = zA ? (i4 - i2) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
        View view = this.l;
        if (view == null || view.getVisibility() == 8) {
            iA = paddingRight;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.l.getLayoutParams();
            int i6 = zA ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i7 = zA ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int iA2 = androidx.appcompat.widget.a.a(paddingRight, i6, zA);
            iA = androidx.appcompat.widget.a.a(iA2 + a(this.l, iA2, paddingTop, paddingTop2, zA), i7, zA);
        }
        LinearLayout linearLayout = this.n;
        if (linearLayout != null && this.m == null && linearLayout.getVisibility() != 8) {
            iA += a(this.n, iA, paddingTop, paddingTop2, zA);
        }
        int i8 = iA;
        View view2 = this.m;
        if (view2 != null) {
            a(view2, i8, paddingTop, paddingTop2, zA);
        }
        int paddingLeft = zA ? getPaddingLeft() : (i4 - i2) - getPaddingRight();
        ActionMenuView actionMenuView = this.f480d;
        if (actionMenuView != null) {
            a(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zA);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i3) == 0) {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.f482f;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i3);
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingTop;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.l;
        if (view != null) {
            int iA = a(view, paddingLeft, iMakeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.l.getLayoutParams();
            paddingLeft = iA - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f480d;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = a(this.f480d, paddingLeft, iMakeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.n;
        if (linearLayout != null && this.m == null) {
            if (this.s) {
                this.n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.n.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.n.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = a(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        View view2 = this.m;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i4 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
            int i5 = layoutParams.width;
            if (i5 >= 0) {
                paddingLeft = Math.min(i5, paddingLeft);
            }
            int i6 = layoutParams.height == -2 ? Integer.MIN_VALUE : 1073741824;
            int i7 = layoutParams.height;
            if (i7 >= 0) {
                iMin = Math.min(i7, iMin);
            }
            this.m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i4), View.MeasureSpec.makeMeasureSpec(iMin, i6));
        }
        if (this.f482f > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            int measuredHeight = getChildAt(i9).getMeasuredHeight() + paddingTop;
            if (measuredHeight > i8) {
                i8 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i8);
    }

    @Override // androidx.appcompat.widget.a
    public void setContentHeight(int i2) {
        this.f482f = i2;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.m;
        if (view2 != null) {
            removeView(view2);
        }
        this.m = view;
        if (view != null && (linearLayout = this.n) != null) {
            removeView(linearLayout);
            this.n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f369k = charSequence;
        e();
    }

    public void setTitle(CharSequence charSequence) {
        this.f368j = charSequence;
        e();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.s) {
            requestLayout();
        }
        this.s = z;
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
