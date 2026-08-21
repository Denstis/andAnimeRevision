package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.h.j.a;
import b.h.o.a0;
import b.h.o.c;
import b.h.o.s;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {
    private int overlayTop;
    final Rect tempRect1;
    final Rect tempRect2;
    private int verticalLayoutGap;

    public HeaderScrollingViewBehavior() {
        this.tempRect1 = new Rect();
        this.tempRect2 = new Rect();
        this.verticalLayoutGap = 0;
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tempRect1 = new Rect();
        this.tempRect2 = new Rect();
        this.verticalLayoutGap = 0;
    }

    private static int resolveGravity(int i2) {
        if (i2 == 0) {
            return 8388659;
        }
        return i2;
    }

    abstract View findFirstDependency(List<View> list);

    final int getOverlapPixelsForOffset(View view) {
        if (this.overlayTop == 0) {
            return 0;
        }
        float overlapRatioForOffset = getOverlapRatioForOffset(view);
        int i2 = this.overlayTop;
        return a.a((int) (overlapRatioForOffset * i2), 0, i2);
    }

    float getOverlapRatioForOffset(View view) {
        return 1.0f;
    }

    public final int getOverlayTop() {
        return this.overlayTop;
    }

    int getScrollRange(View view) {
        return view.getMeasuredHeight();
    }

    final int getVerticalLayoutGap() {
        return this.verticalLayoutGap;
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    protected void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        int bottom;
        View viewFindFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
        if (viewFindFirstDependency != null) {
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
            Rect rect = this.tempRect1;
            rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, viewFindFirstDependency.getBottom() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((coordinatorLayout.getHeight() + viewFindFirstDependency.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
            a0 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && s.h(coordinatorLayout) && !s.h(view)) {
                rect.left += lastWindowInsets.c();
                rect.right -= lastWindowInsets.d();
            }
            Rect rect2 = this.tempRect2;
            c.a(resolveGravity(fVar.f804c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i2);
            int overlapPixelsForOffset = getOverlapPixelsForOffset(viewFindFirstDependency);
            view.layout(rect2.left, rect2.top - overlapPixelsForOffset, rect2.right, rect2.bottom - overlapPixelsForOffset);
            bottom = rect2.top - viewFindFirstDependency.getBottom();
        } else {
            super.layoutChild(coordinatorLayout, view, i2);
            bottom = 0;
        }
        this.verticalLayoutGap = bottom;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int i5) {
        View viewFindFirstDependency;
        int i6 = view.getLayoutParams().height;
        if ((i6 != -1 && i6 != -2) || (viewFindFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        if (s.h(viewFindFirstDependency) && !s.h(view)) {
            s.a(view, true);
            if (s.h(view)) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i4);
        if (size == 0) {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.onMeasureChild(view, i2, i3, View.MeasureSpec.makeMeasureSpec((size - viewFindFirstDependency.getMeasuredHeight()) + getScrollRange(viewFindFirstDependency), i6 == -1 ? 1073741824 : Integer.MIN_VALUE), i5);
        return true;
    }

    public final void setOverlayTop(int i2) {
        this.overlayTop = i2;
    }
}
