package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
class b0 extends ListView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f493c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f494d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f495e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f496f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f497g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Field f498h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f499i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f500j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f501k;
    private boolean l;
    private b.h.o.w m;
    private androidx.core.widget.f n;
    b o;

    private static class a extends b.a.l.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f502b;

        a(Drawable drawable) {
            super(drawable);
            this.f502b = true;
        }

        void a(boolean z) {
            this.f502b = z;
        }

        @Override // b.a.l.a.c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f502b) {
                super.draw(canvas);
            }
        }

        @Override // b.a.l.a.c, android.graphics.drawable.Drawable
        public void setHotspot(float f2, float f3) {
            if (this.f502b) {
                super.setHotspot(f2, f3);
            }
        }

        @Override // b.a.l.a.c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i2, int i3, int i4, int i5) {
            if (this.f502b) {
                super.setHotspotBounds(i2, i3, i4, i5);
            }
        }

        @Override // b.a.l.a.c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f502b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // b.a.l.a.c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f502b) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    private class b implements Runnable {
        b() {
        }

        public void a() {
            b0 b0Var = b0.this;
            b0Var.o = null;
            b0Var.removeCallbacks(this);
        }

        public void b() {
            b0.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            b0 b0Var = b0.this;
            b0Var.o = null;
            b0Var.drawableStateChanged();
        }
    }

    b0(Context context, boolean z) {
        super(context, null, b.a.a.dropDownListViewStyle);
        this.f492b = new Rect();
        this.f493c = 0;
        this.f494d = 0;
        this.f495e = 0;
        this.f496f = 0;
        this.f501k = z;
        setCacheColorHint(0);
        try {
            this.f498h = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f498h.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    private void a() {
        this.l = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f497g - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        b.h.o.w wVar = this.m;
        if (wVar != null) {
            wVar.a();
            this.m = null;
        }
    }

    private void a(int i2, View view) {
        Rect rect = this.f492b;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f493c;
        rect.top -= this.f494d;
        rect.right += this.f495e;
        rect.bottom += this.f496f;
        try {
            boolean z = this.f498h.getBoolean(this);
            if (view.isEnabled() != z) {
                this.f498h.set(this, Boolean.valueOf(!z));
                if (i2 != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
    }

    private void a(int i2, View view, float f2, float f3) {
        b(i2, view);
        Drawable selector = getSelector();
        if (selector == null || i2 == -1) {
            return;
        }
        androidx.core.graphics.drawable.a.a(selector, f2, f3);
    }

    private void a(Canvas canvas) {
        Drawable selector;
        if (this.f492b.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f492b);
        selector.draw(canvas);
    }

    private void a(View view, int i2) {
        performItemClick(view, i2, getItemIdAtPosition(i2));
    }

    private void a(View view, int i2, float f2, float f3) {
        View childAt;
        this.l = true;
        if (Build.VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(f2, f3);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i3 = this.f497g;
        if (i3 != -1 && (childAt = getChildAt(i3 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f497g = i2;
        float left = f2 - view.getLeft();
        float top = f3 - view.getTop();
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(left, top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        a(i2, view, f2, f3);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    private void b(int i2, View view) {
        Drawable selector = getSelector();
        boolean z = (selector == null || i2 == -1) ? false : true;
        if (z) {
            selector.setVisible(false, false);
        }
        a(i2, view);
        if (z) {
            Rect rect = this.f492b;
            float fExactCenterX = rect.exactCenterX();
            float fExactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            androidx.core.graphics.drawable.a.a(selector, fExactCenterX, fExactCenterY);
        }
    }

    private boolean b() {
        return this.l;
    }

    private void c() {
        Drawable selector = getSelector();
        if (selector != null && b() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    private void setSelectorEnabled(boolean z) {
        a aVar = this.f499i;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    public int a(int i2, int i3, int i4, int i5, int i6) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        int i7 = listPaddingTop + listPaddingBottom;
        if (adapter == null) {
            return i7;
        }
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int measuredHeight = i7;
        View view = null;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < count) {
            int itemViewType = adapter.getItemViewType(i8);
            if (itemViewType != i9) {
                view = null;
                i9 = itemViewType;
            }
            view = adapter.getView(i8, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i11 = layoutParams.height;
            view.measure(i2, i11 > 0 ? View.MeasureSpec.makeMeasureSpec(i11, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i8 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i5) {
                return (i6 < 0 || i8 <= i6 || i10 <= 0 || measuredHeight == i5) ? i5 : i10;
            }
            if (i6 >= 0 && i8 >= i6) {
                i10 = measuredHeight;
            }
            i8++;
        }
        return measuredHeight;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(android.view.MotionEvent r8, int r9) {
        /*
            r7 = this;
            int r0 = r8.getActionMasked()
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L14
            r9 = 3
            if (r0 == r9) goto L11
        Le:
            r9 = 0
            r3 = 1
            goto L46
        L11:
            r9 = 0
            r3 = 0
            goto L46
        L14:
            r3 = 1
            goto L17
        L16:
            r3 = 0
        L17:
            int r9 = r8.findPointerIndex(r9)
            if (r9 >= 0) goto L1e
            goto L11
        L1e:
            float r4 = r8.getX(r9)
            int r4 = (int) r4
            float r9 = r8.getY(r9)
            int r9 = (int) r9
            int r5 = r7.pointToPosition(r4, r9)
            r6 = -1
            if (r5 != r6) goto L31
            r9 = 1
            goto L46
        L31:
            int r3 = r7.getFirstVisiblePosition()
            int r3 = r5 - r3
            android.view.View r3 = r7.getChildAt(r3)
            float r4 = (float) r4
            float r9 = (float) r9
            r7.a(r3, r5, r4, r9)
            if (r0 != r2) goto Le
            r7.a(r3, r5)
            goto Le
        L46:
            if (r3 == 0) goto L4a
            if (r9 == 0) goto L4d
        L4a:
            r7.a()
        L4d:
            if (r3 == 0) goto L65
            androidx.core.widget.f r9 = r7.n
            if (r9 != 0) goto L5a
            androidx.core.widget.f r9 = new androidx.core.widget.f
            r9.<init>(r7)
            r7.n = r9
        L5a:
            androidx.core.widget.f r9 = r7.n
            r9.a(r2)
            androidx.core.widget.f r9 = r7.n
            r9.onTouch(r7, r8)
            goto L6c
        L65:
            androidx.core.widget.f r8 = r7.n
            if (r8 == 0) goto L6c
            r8.a(r1)
        L6c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.b0.a(android.view.MotionEvent, int):boolean");
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        a(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.o != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f501k || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f501k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f501k || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f501k && this.f500j) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.o = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.o == null) {
            this.o = new b();
            this.o.b();
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                }
                c();
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f497g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        b bVar = this.o;
        if (bVar != null) {
            bVar.a();
        }
        return super.onTouchEvent(motionEvent);
    }

    void setListSelectionHidden(boolean z) {
        this.f500j = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        this.f499i = drawable != null ? new a(drawable) : null;
        super.setSelector(this.f499i);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f493c = rect.left;
        this.f494d = rect.top;
        this.f495e = rect.right;
        this.f496f = rect.bottom;
    }
}
