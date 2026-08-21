package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.LinearLayoutCompat;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements h.b, androidx.appcompat.view.menu.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.appcompat.view.menu.h f384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.appcompat.widget.c f388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private p.a f389g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    h.a f390h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f391i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f392j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f393k;
    private int l;
    e m;

    public interface a {
        boolean a();

        boolean b();
    }

    private static class b implements p.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.p.a
        public boolean a(androidx.appcompat.view.menu.h hVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.p.a
        public void onCloseMenu(androidx.appcompat.view.menu.h hVar, boolean z) {
        }
    }

    public static class c extends LinearLayoutCompat.a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f394c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f395d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f396e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f397f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f398g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f399h;

        public c(int i2, int i3) {
            super(i2, i3);
            this.f394c = false;
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super(cVar);
            this.f394c = cVar.f394c;
        }
    }

    private class d implements h.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.h.a
        public boolean onMenuItemSelected(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
            e eVar = ActionMenuView.this.m;
            return eVar != null && eVar.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.h.a
        public void onMenuModeChange(androidx.appcompat.view.menu.h hVar) {
            h.a aVar = ActionMenuView.this.f390h;
            if (aVar != null) {
                aVar.onMenuModeChange(hVar);
            }
        }
    }

    public interface e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.f393k = (int) (56.0f * f2);
        this.l = (int) (f2 * 4.0f);
        this.f385c = context;
        this.f386d = 0;
    }

    static int a(View view, int i2, int i3, int i4, int i5) {
        c cVar = (c) view.getLayoutParams();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4) - i5, View.MeasureSpec.getMode(i4));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = actionMenuItemView != null && actionMenuItemView.c();
        int i6 = 2;
        if (i3 <= 0 || (z && i3 < 2)) {
            i6 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i3 * i2, Integer.MIN_VALUE), iMakeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i7 = measuredWidth / i2;
            if (measuredWidth % i2 != 0) {
                i7++;
            }
            if (!z || i7 >= 2) {
                i6 = i7;
            }
        }
        cVar.f397f = !cVar.f394c && z;
        cVar.f395d = i6;
        view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i6, 1073741824), iMakeMeasureSpec);
        return i6;
    }

    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v16 */
    private void a(int i2, int i3) {
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        int i8;
        int i9;
        ?? r13;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, paddingTop, -2);
        int i10 = size - paddingLeft;
        int i11 = this.f393k;
        int i12 = i10 / i11;
        int i13 = i10 % i11;
        if (i12 == 0) {
            setMeasuredDimension(i10, 0);
            return;
        }
        int i14 = i11 + (i13 / i12);
        int childCount = getChildCount();
        int i15 = i12;
        int i16 = 0;
        int iMax = 0;
        boolean z2 = false;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        long j2 = 0;
        while (i16 < childCount) {
            View childAt = getChildAt(i16);
            int i20 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z3 = childAt instanceof ActionMenuItemView;
                int i21 = i17 + 1;
                if (z3) {
                    int i22 = this.l;
                    i9 = i21;
                    r13 = 0;
                    childAt.setPadding(i22, 0, i22, 0);
                } else {
                    i9 = i21;
                    r13 = 0;
                }
                c cVar = (c) childAt.getLayoutParams();
                cVar.f399h = r13;
                cVar.f396e = r13;
                cVar.f395d = r13;
                cVar.f397f = r13;
                ((ViewGroup.MarginLayoutParams) cVar).leftMargin = r13;
                ((ViewGroup.MarginLayoutParams) cVar).rightMargin = r13;
                cVar.f398g = z3 && ((ActionMenuItemView) childAt).c();
                int iA = a(childAt, i14, cVar.f394c ? 1 : i15, childMeasureSpec, paddingTop);
                int iMax2 = Math.max(i18, iA);
                if (cVar.f397f) {
                    i19++;
                }
                if (cVar.f394c) {
                    z2 = true;
                }
                i15 -= iA;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (iA == 1) {
                    j2 |= (long) (1 << i16);
                    iMax = iMax;
                }
                i18 = iMax2;
                i17 = i9;
            }
            i16++;
            size2 = i20;
        }
        int i23 = size2;
        boolean z4 = z2 && i17 == 2;
        boolean z5 = false;
        while (i19 > 0 && i15 > 0) {
            int i24 = Integer.MAX_VALUE;
            int i25 = 0;
            int i26 = 0;
            long j3 = 0;
            while (i25 < childCount) {
                boolean z6 = z5;
                c cVar2 = (c) getChildAt(i25).getLayoutParams();
                int i27 = iMax;
                if (cVar2.f397f) {
                    int i28 = cVar2.f395d;
                    if (i28 < i24) {
                        i24 = i28;
                        j3 = 1 << i25;
                        i26 = 1;
                    } else if (i28 == i24) {
                        j3 |= 1 << i25;
                        i26++;
                    }
                }
                i25++;
                iMax = i27;
                z5 = z6;
            }
            z = z5;
            i6 = iMax;
            j2 |= j3;
            if (i26 > i15) {
                i4 = mode;
                i5 = i10;
                break;
            }
            int i29 = i24 + 1;
            int i30 = 0;
            while (i30 < childCount) {
                View childAt2 = getChildAt(i30);
                c cVar3 = (c) childAt2.getLayoutParams();
                int i31 = i10;
                int i32 = mode;
                long j4 = 1 << i30;
                if ((j3 & j4) == 0) {
                    if (cVar3.f395d == i29) {
                        j2 |= j4;
                    }
                    i8 = i29;
                } else {
                    if (z4 && cVar3.f398g && i15 == 1) {
                        int i33 = this.l;
                        i8 = i29;
                        childAt2.setPadding(i33 + i14, 0, i33, 0);
                    } else {
                        i8 = i29;
                    }
                    cVar3.f395d++;
                    cVar3.f399h = true;
                    i15--;
                }
                i30++;
                mode = i32;
                i29 = i8;
                i10 = i31;
            }
            iMax = i6;
            z5 = true;
        }
        i4 = mode;
        i5 = i10;
        z = z5;
        i6 = iMax;
        boolean z7 = !z2 && i17 == 1;
        if (i15 <= 0 || j2 == 0 || (i15 >= i17 - 1 && !z7 && i18 <= 1)) {
            i7 = 0;
        } else {
            float fBitCount = Long.bitCount(j2);
            if (z7) {
                i7 = 0;
            } else {
                i7 = 0;
                if ((j2 & 1) != 0 && !((c) getChildAt(0).getLayoutParams()).f398g) {
                    fBitCount -= 0.5f;
                }
                int i34 = childCount - 1;
                if ((j2 & ((long) (1 << i34))) != 0 && !((c) getChildAt(i34).getLayoutParams()).f398g) {
                    fBitCount -= 0.5f;
                }
            }
            int i35 = fBitCount > 0.0f ? (int) ((i15 * i14) / fBitCount) : 0;
            for (int i36 = 0; i36 < childCount; i36++) {
                if ((j2 & ((long) (1 << i36))) != 0) {
                    View childAt3 = getChildAt(i36);
                    c cVar4 = (c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        cVar4.f396e = i35;
                        cVar4.f399h = true;
                        if (i36 == 0 && !cVar4.f398g) {
                            ((ViewGroup.MarginLayoutParams) cVar4).leftMargin = (-i35) / 2;
                        }
                    } else if (cVar4.f394c) {
                        cVar4.f396e = i35;
                        cVar4.f399h = true;
                        ((ViewGroup.MarginLayoutParams) cVar4).rightMargin = (-i35) / 2;
                    } else {
                        if (i36 != 0) {
                            ((ViewGroup.MarginLayoutParams) cVar4).leftMargin = i35 / 2;
                        }
                        if (i36 != childCount - 1) {
                            ((ViewGroup.MarginLayoutParams) cVar4).rightMargin = i35 / 2;
                        }
                    }
                    z = true;
                }
            }
        }
        if (z) {
            while (i7 < childCount) {
                View childAt4 = getChildAt(i7);
                c cVar5 = (c) childAt4.getLayoutParams();
                if (cVar5.f399h) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar5.f395d * i14) + cVar5.f396e, 1073741824), childMeasureSpec);
                }
                i7++;
            }
        }
        setMeasuredDimension(i5, i4 != 1073741824 ? i6 : i23);
    }

    public void a(p.a aVar, h.a aVar2) {
        this.f389g = aVar;
        this.f390h = aVar2;
    }

    protected boolean a(int i2) {
        boolean zA = false;
        if (i2 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i2 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i2);
        if (i2 < getChildCount() && (childAt instanceof a)) {
            zA = false | ((a) childAt).a();
        }
        return (i2 <= 0 || !(childAt2 instanceof a)) ? zA : zA | ((a) childAt2).b();
    }

    @Override // androidx.appcompat.view.menu.h.b
    public boolean a(androidx.appcompat.view.menu.k kVar) {
        return this.f384b.performItemAction(kVar, 0);
    }

    public void c() {
        androidx.appcompat.widget.c cVar = this.f388f;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof c);
    }

    public c d() {
        c cVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        cVarGenerateDefaultLayoutParams.f394c = true;
        return cVarGenerateDefaultLayoutParams;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public boolean e() {
        androidx.appcompat.widget.c cVar = this.f388f;
        return cVar != null && cVar.d();
    }

    public boolean f() {
        androidx.appcompat.widget.c cVar = this.f388f;
        return cVar != null && cVar.f();
    }

    public boolean g() {
        androidx.appcompat.widget.c cVar = this.f388f;
        return cVar != null && cVar.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public c generateDefaultLayoutParams() {
        c cVar = new c(-2, -2);
        cVar.f418b = 16;
        return cVar;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        c cVar = layoutParams instanceof c ? new c((c) layoutParams) : new c(layoutParams);
        if (cVar.f418b <= 0) {
            cVar.f418b = 16;
        }
        return cVar;
    }

    public Menu getMenu() {
        if (this.f384b == null) {
            Context context = getContext();
            this.f384b = new androidx.appcompat.view.menu.h(context);
            this.f384b.setCallback(new d());
            this.f388f = new androidx.appcompat.widget.c(context);
            this.f388f.b(true);
            androidx.appcompat.widget.c cVar = this.f388f;
            p.a bVar = this.f389g;
            if (bVar == null) {
                bVar = new b();
            }
            cVar.setCallback(bVar);
            this.f384b.addMenuPresenter(this.f388f, this.f385c);
            this.f388f.a(this);
        }
        return this.f384b;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.f388f.c();
    }

    public int getPopupTheme() {
        return this.f386d;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public boolean h() {
        return this.f387e;
    }

    public androidx.appcompat.view.menu.h i() {
        return this.f384b;
    }

    @Override // androidx.appcompat.view.menu.q
    public void initialize(androidx.appcompat.view.menu.h hVar) {
        this.f384b = hVar;
    }

    public boolean j() {
        androidx.appcompat.widget.c cVar = this.f388f;
        return cVar != null && cVar.h();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.widget.c cVar = this.f388f;
        if (cVar != null) {
            cVar.updateMenuView(false);
            if (this.f388f.g()) {
                this.f388f.d();
                this.f388f.h();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int width;
        int paddingLeft;
        if (!this.f391i) {
            super.onLayout(z, i2, i3, i4, i5);
            return;
        }
        int childCount = getChildCount();
        int i8 = (i5 - i3) / 2;
        int dividerWidth = getDividerWidth();
        int i9 = i4 - i2;
        int paddingRight = (i9 - getPaddingRight()) - getPaddingLeft();
        boolean zA = w0.a(this);
        int measuredWidth = paddingRight;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f394c) {
                    int measuredWidth2 = childAt.getMeasuredWidth();
                    if (a(i12)) {
                        measuredWidth2 += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zA) {
                        paddingLeft = getPaddingLeft() + ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
                        width = paddingLeft + measuredWidth2;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) cVar).rightMargin;
                        paddingLeft = width - measuredWidth2;
                    }
                    int i13 = i8 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i13, width, measuredHeight + i13);
                    measuredWidth -= measuredWidth2;
                    i10 = 1;
                } else {
                    measuredWidth -= (childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cVar).leftMargin) + ((ViewGroup.MarginLayoutParams) cVar).rightMargin;
                    a(i12);
                    i11++;
                }
            }
        }
        if (childCount == 1 && i10 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth3 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i14 = (i9 / 2) - (measuredWidth3 / 2);
            int i15 = i8 - (measuredHeight2 / 2);
            childAt2.layout(i14, i15, measuredWidth3 + i14, measuredHeight2 + i15);
            return;
        }
        int i16 = i11 - (i10 ^ 1);
        if (i16 > 0) {
            i7 = measuredWidth / i16;
            i6 = 0;
        } else {
            i6 = 0;
            i7 = 0;
        }
        int iMax = Math.max(i6, i7);
        if (zA) {
            int width2 = getWidth() - getPaddingRight();
            while (i6 < childCount) {
                View childAt3 = getChildAt(i6);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.f394c) {
                    int i17 = width2 - ((ViewGroup.MarginLayoutParams) cVar2).rightMargin;
                    int measuredWidth4 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i18 = i8 - (measuredHeight3 / 2);
                    childAt3.layout(i17 - measuredWidth4, i18, i17, measuredHeight3 + i18);
                    width2 = i17 - ((measuredWidth4 + ((ViewGroup.MarginLayoutParams) cVar2).leftMargin) + iMax);
                }
                i6++;
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        while (i6 < childCount) {
            View childAt4 = getChildAt(i6);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.f394c) {
                int i19 = paddingLeft2 + ((ViewGroup.MarginLayoutParams) cVar3).leftMargin;
                int measuredWidth5 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i20 = i8 - (measuredHeight4 / 2);
                childAt4.layout(i19, i20, i19 + measuredWidth5, measuredHeight4 + i20);
                paddingLeft2 = i19 + measuredWidth5 + ((ViewGroup.MarginLayoutParams) cVar3).rightMargin + iMax;
            }
            i6++;
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i2, int i3) {
        androidx.appcompat.view.menu.h hVar;
        boolean z = this.f391i;
        this.f391i = View.MeasureSpec.getMode(i2) == 1073741824;
        if (z != this.f391i) {
            this.f392j = 0;
        }
        int size = View.MeasureSpec.getSize(i2);
        if (this.f391i && (hVar = this.f384b) != null && size != this.f392j) {
            this.f392j = size;
            hVar.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (this.f391i && childCount > 0) {
            a(i2, i3);
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            c cVar = (c) getChildAt(i4).getLayoutParams();
            ((ViewGroup.MarginLayoutParams) cVar).rightMargin = 0;
            ((ViewGroup.MarginLayoutParams) cVar).leftMargin = 0;
        }
        super.onMeasure(i2, i3);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f388f.a(z);
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.m = eVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.f388f.a(drawable);
    }

    public void setOverflowReserved(boolean z) {
        this.f387e = z;
    }

    public void setPopupTheme(int i2) {
        if (this.f386d != i2) {
            this.f386d = i2;
            if (i2 == 0) {
                this.f385c = getContext();
            } else {
                this.f385c = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setPresenter(androidx.appcompat.widget.c cVar) {
        this.f388f = cVar;
        this.f388f.a(this);
    }
}
