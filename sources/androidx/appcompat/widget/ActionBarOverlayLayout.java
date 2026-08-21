package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.p;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements y, b.h.o.m {
    static final int[] C = {b.a.a.actionBarSize, R.attr.windowContentOverlay};
    private final Runnable A;
    private final b.h.o.n B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f372c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ContentFrameLayout f373d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ActionBarContainer f374e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private z f375f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f376g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f377h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f378i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f379j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f380k;
    boolean l;
    private int m;
    private int n;
    private final Rect o;
    private final Rect p;
    private final Rect q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private final Rect u;
    private d v;
    private OverScroller w;
    ViewPropertyAnimator x;
    final AnimatorListenerAdapter y;
    private final Runnable z;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.x = null;
            actionBarOverlayLayout.l = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.x = null;
            actionBarOverlayLayout.l = false;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.h();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.x = actionBarOverlayLayout.f374e.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.y);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.h();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.x = actionBarOverlayLayout.f374e.animate().translationY(-ActionBarOverlayLayout.this.f374e.getHeight()).setListener(ActionBarOverlayLayout.this.y);
        }
    }

    public interface d {
        void a();

        void a(boolean z);

        void b();

        void c();

        void d();

        void onWindowVisibilityChanged(int i2);
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        public e(int i2, int i3) {
            super(i2, i3);
        }

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f372c = 0;
        this.o = new Rect();
        this.p = new Rect();
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        this.u = new Rect();
        this.y = new a();
        this.z = new b();
        this.A = new c();
        a(context);
        this.B = new b.h.o.n(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private z a(View view) {
        if (view instanceof z) {
            return (z) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void a(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(C);
        this.f371b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f376g = typedArrayObtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.f376g == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f377h = context.getApplicationInfo().targetSdkVersion < 19;
        this.w = new OverScroller(context);
    }

    private boolean a(float f2, float f3) {
        this.w.fling(0, 0, 0, (int) f3, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.w.getFinalY() > this.f374e.getHeight();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(android.view.View r3, android.graphics.Rect r4, boolean r5, boolean r6, boolean r7, boolean r8) {
        /*
            r2 = this;
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$e r3 = (androidx.appcompat.widget.ActionBarOverlayLayout.e) r3
            r0 = 1
            if (r5 == 0) goto L13
            int r5 = r3.leftMargin
            int r1 = r4.left
            if (r5 == r1) goto L13
            r3.leftMargin = r1
            r5 = 1
            goto L14
        L13:
            r5 = 0
        L14:
            if (r6 == 0) goto L1f
            int r6 = r3.topMargin
            int r1 = r4.top
            if (r6 == r1) goto L1f
            r3.topMargin = r1
            r5 = 1
        L1f:
            if (r8 == 0) goto L2a
            int r6 = r3.rightMargin
            int r8 = r4.right
            if (r6 == r8) goto L2a
            r3.rightMargin = r8
            r5 = 1
        L2a:
            if (r7 == 0) goto L35
            int r6 = r3.bottomMargin
            int r4 = r4.bottom
            if (r6 == r4) goto L35
            r3.bottomMargin = r4
            r5 = 1
        L35:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.a(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    private void k() {
        h();
        this.A.run();
    }

    private void l() {
        h();
        postDelayed(this.A, 600L);
    }

    private void m() {
        h();
        postDelayed(this.z, 600L);
    }

    private void n() {
        h();
        this.z.run();
    }

    @Override // androidx.appcompat.widget.y
    public void a(int i2) {
        j();
        if (i2 == 2) {
            this.f375f.m();
        } else if (i2 == 5) {
            this.f375f.n();
        } else {
            if (i2 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.y
    public void a(Menu menu, p.a aVar) {
        j();
        this.f375f.a(menu, aVar);
    }

    @Override // androidx.appcompat.widget.y
    public boolean a() {
        j();
        return this.f375f.a();
    }

    @Override // androidx.appcompat.widget.y
    public void b() {
        j();
        this.f375f.b();
    }

    @Override // androidx.appcompat.widget.y
    public boolean c() {
        j();
        return this.f375f.c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // androidx.appcompat.widget.y
    public boolean d() {
        j();
        return this.f375f.d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f376g == null || this.f377h) {
            return;
        }
        int bottom = this.f374e.getVisibility() == 0 ? (int) (this.f374e.getBottom() + this.f374e.getTranslationY() + 0.5f) : 0;
        this.f376g.setBounds(0, bottom, getWidth(), this.f376g.getIntrinsicHeight() + bottom);
        this.f376g.draw(canvas);
    }

    @Override // androidx.appcompat.widget.y
    public boolean e() {
        j();
        return this.f375f.e();
    }

    @Override // androidx.appcompat.widget.y
    public boolean f() {
        j();
        return this.f375f.f();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        j();
        int iS = b.h.o.s.s(this) & 256;
        boolean zA = a(this.f374e, rect, true, true, false, true);
        this.r.set(rect);
        w0.a(this, this.r, this.o);
        if (!this.s.equals(this.r)) {
            this.s.set(this.r);
            zA = true;
        }
        if (!this.p.equals(this.o)) {
            this.p.set(this.o);
            zA = true;
        }
        if (zA) {
            requestLayout();
        }
        return true;
    }

    @Override // androidx.appcompat.widget.y
    public void g() {
        j();
        this.f375f.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public e generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    @Override // android.view.ViewGroup
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f374e;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.B.a();
    }

    public CharSequence getTitle() {
        j();
        return this.f375f.getTitle();
    }

    void h() {
        removeCallbacks(this.z);
        removeCallbacks(this.A);
        ViewPropertyAnimator viewPropertyAnimator = this.x;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public boolean i() {
        return this.f378i;
    }

    void j() {
        if (this.f373d == null) {
            this.f373d = (ContentFrameLayout) findViewById(b.a.f.action_bar_activity_content);
            this.f374e = (ActionBarContainer) findViewById(b.a.f.action_bar_container);
            this.f375f = a(findViewById(b.a.f.action_bar));
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(getContext());
        b.h.o.s.D(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i7 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i8 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        int measuredHeight;
        j();
        measureChildWithMargins(this.f374e, i2, 0, i3, 0);
        e eVar = (e) this.f374e.getLayoutParams();
        int iMax = Math.max(0, this.f374e.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int iMax2 = Math.max(0, this.f374e.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f374e.getMeasuredState());
        boolean z = (b.h.o.s.s(this) & 256) != 0;
        if (z) {
            measuredHeight = this.f371b;
            if (this.f379j && this.f374e.getTabContainer() != null) {
                measuredHeight += this.f371b;
            }
        } else {
            measuredHeight = this.f374e.getVisibility() != 8 ? this.f374e.getMeasuredHeight() : 0;
        }
        this.q.set(this.o);
        this.t.set(this.r);
        Rect rect = (this.f378i || z) ? this.t : this.q;
        rect.top += measuredHeight;
        rect.bottom += 0;
        a(this.f373d, this.q, true, true, true, true);
        if (!this.u.equals(this.t)) {
            this.u.set(this.t);
            this.f373d.a(this.t);
        }
        measureChildWithMargins(this.f373d, i2, 0, i3, 0);
        e eVar2 = (e) this.f373d.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f373d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f373d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f373d.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i2, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i3, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (!this.f380k || !z) {
            return false;
        }
        if (a(f2, f3)) {
            k();
        } else {
            n();
        }
        this.l = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        this.m += i3;
        setActionBarHideOffset(this.m);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.B.a(view, view2, i2);
        this.m = getActionBarHideOffset();
        h();
        d dVar = this.v;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        if ((i2 & 2) == 0 || this.f374e.getVisibility() != 0) {
            return false;
        }
        return this.f380k;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public void onStopNestedScroll(View view) {
        if (this.f380k && !this.l) {
            if (this.m <= this.f374e.getHeight()) {
                m();
            } else {
                l();
            }
        }
        d dVar = this.v;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i2);
        }
        j();
        int i3 = this.n ^ i2;
        this.n = i2;
        boolean z = (i2 & 4) == 0;
        boolean z2 = (i2 & 256) != 0;
        d dVar = this.v;
        if (dVar != null) {
            dVar.a(!z2);
            if (z || !z2) {
                this.v.a();
            } else {
                this.v.c();
            }
        }
        if ((i3 & 256) == 0 || this.v == null) {
            return;
        }
        b.h.o.s.D(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.f372c = i2;
        d dVar = this.v;
        if (dVar != null) {
            dVar.onWindowVisibilityChanged(i2);
        }
    }

    public void setActionBarHideOffset(int i2) {
        h();
        this.f374e.setTranslationY(-Math.max(0, Math.min(i2, this.f374e.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.v = dVar;
        if (getWindowToken() != null) {
            this.v.onWindowVisibilityChanged(this.f372c);
            int i2 = this.n;
            if (i2 != 0) {
                onWindowSystemUiVisibilityChanged(i2);
                b.h.o.s.D(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f379j = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f380k) {
            this.f380k = z;
            if (z) {
                return;
            }
            h();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i2) {
        j();
        this.f375f.setIcon(i2);
    }

    public void setIcon(Drawable drawable) {
        j();
        this.f375f.setIcon(drawable);
    }

    public void setLogo(int i2) {
        j();
        this.f375f.b(i2);
    }

    public void setOverlayMode(boolean z) {
        this.f378i = z;
        this.f377h = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i2) {
    }

    @Override // androidx.appcompat.widget.y
    public void setWindowCallback(Window.Callback callback) {
        j();
        this.f375f.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.y
    public void setWindowTitle(CharSequence charSequence) {
        j();
        this.f375f.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
