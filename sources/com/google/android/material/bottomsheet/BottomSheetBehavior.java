package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.h.o.s;
import b.j.a.a;
import b.j.b.c;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.c<V> {
    private static final float HIDE_FRICTION = 0.1f;
    private static final float HIDE_THRESHOLD = 0.5f;
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HALF_EXPANDED = 6;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;
    int activePointerId;
    private BottomSheetCallback callback;
    int collapsedOffset;
    private final c.AbstractC0113c dragCallback;
    private boolean fitToContents;
    int fitToContentsOffset;
    int halfExpandedOffset;
    boolean hideable;
    private boolean ignoreEvents;
    private Map<View, Integer> importantForAccessibilityMap;
    private int initialY;
    private int lastNestedScrollDy;
    private int lastPeekHeight;
    private float maximumVelocity;
    private boolean nestedScrolled;
    WeakReference<View> nestedScrollingChildRef;
    int parentHeight;
    private int peekHeight;
    private boolean peekHeightAuto;
    private int peekHeightMin;
    private boolean skipCollapsed;
    int state;
    boolean touchingScrollingChild;
    private VelocityTracker velocityTracker;
    c viewDragHelper;
    WeakReference<V> viewRef;

    public static abstract class BottomSheetCallback {
        public abstract void onSlide(View view, float f2);

        public abstract void onStateChanged(View view, int i2);
    }

    protected static class SavedState extends a {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        final int state;

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i2) {
            super(parcelable);
            this.state = i2;
        }

        @Override // b.j.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.state);
        }
    }

    private class SettleRunnable implements Runnable {
        private final int targetState;
        private final View view;

        SettleRunnable(View view, int i2) {
            this.view = view;
            this.targetState = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = BottomSheetBehavior.this.viewDragHelper;
            if (cVar == null || !cVar.a(true)) {
                BottomSheetBehavior.this.setStateInternal(this.targetState);
            } else {
                s.a(this.view, this);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    public BottomSheetBehavior() {
        this.fitToContents = true;
        this.state = 4;
        this.dragCallback = new c.AbstractC0113c() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            @Override // b.j.b.c.AbstractC0113c
            public int clampViewPositionHorizontal(View view, int i2, int i3) {
                return view.getLeft();
            }

            @Override // b.j.b.c.AbstractC0113c
            public int clampViewPositionVertical(View view, int i2, int i3) {
                int expandedOffset = BottomSheetBehavior.this.getExpandedOffset();
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return b.h.j.a.a(i2, expandedOffset, bottomSheetBehavior.hideable ? bottomSheetBehavior.parentHeight : bottomSheetBehavior.collapsedOffset);
            }

            @Override // b.j.b.c.AbstractC0113c
            public int getViewVerticalDragRange(View view) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return bottomSheetBehavior.hideable ? bottomSheetBehavior.parentHeight : bottomSheetBehavior.collapsedOffset;
            }

            @Override // b.j.b.c.AbstractC0113c
            public void onViewDragStateChanged(int i2) {
                if (i2 == 1) {
                    BottomSheetBehavior.this.setStateInternal(1);
                }
            }

            @Override // b.j.b.c.AbstractC0113c
            public void onViewPositionChanged(View view, int i2, int i3, int i4, int i5) {
                BottomSheetBehavior.this.dispatchOnSlide(i3);
            }

            /* JADX WARN: Code restructure failed: missing block: B:37:0x00a2, code lost:
            
                if (r9 < java.lang.Math.abs(r9 - r10.collapsedOffset)) goto L12;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
            
                if (java.lang.Math.abs(r9 - r1) < java.lang.Math.abs(r9 - r7.this$0.collapsedOffset)) goto L41;
             */
            @Override // b.j.b.c.AbstractC0113c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onViewReleased(android.view.View r8, float r9, float r10) {
                /*
                    Method dump skipped, instruction units count: 226
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass2.onViewReleased(android.view.View, float, float):void");
            }

            @Override // b.j.b.c.AbstractC0113c
            public boolean tryCaptureView(View view, int i2) {
                WeakReference<V> weakReference;
                View view2;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i3 = bottomSheetBehavior.state;
                if (i3 == 1 || bottomSheetBehavior.touchingScrollingChild) {
                    return false;
                }
                return ((i3 == 3 && bottomSheetBehavior.activePointerId == i2 && (view2 = bottomSheetBehavior.nestedScrollingChildRef.get()) != null && view2.canScrollVertically(-1)) || (weakReference = BottomSheetBehavior.this.viewRef) == null || weakReference.get() != view) ? false : true;
            }
        };
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i2;
        super(context, attributeSet);
        this.fitToContents = true;
        this.state = 4;
        this.dragCallback = new c.AbstractC0113c() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
            @Override // b.j.b.c.AbstractC0113c
            public int clampViewPositionHorizontal(View view, int i22, int i3) {
                return view.getLeft();
            }

            @Override // b.j.b.c.AbstractC0113c
            public int clampViewPositionVertical(View view, int i22, int i3) {
                int expandedOffset = BottomSheetBehavior.this.getExpandedOffset();
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return b.h.j.a.a(i22, expandedOffset, bottomSheetBehavior.hideable ? bottomSheetBehavior.parentHeight : bottomSheetBehavior.collapsedOffset);
            }

            @Override // b.j.b.c.AbstractC0113c
            public int getViewVerticalDragRange(View view) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return bottomSheetBehavior.hideable ? bottomSheetBehavior.parentHeight : bottomSheetBehavior.collapsedOffset;
            }

            @Override // b.j.b.c.AbstractC0113c
            public void onViewDragStateChanged(int i22) {
                if (i22 == 1) {
                    BottomSheetBehavior.this.setStateInternal(1);
                }
            }

            @Override // b.j.b.c.AbstractC0113c
            public void onViewPositionChanged(View view, int i22, int i3, int i4, int i5) {
                BottomSheetBehavior.this.dispatchOnSlide(i3);
            }

            /* JADX WARN: Code restructure failed: missing block: B:37:0x00a2, code lost:
            
                if (r9 < java.lang.Math.abs(r9 - r10.collapsedOffset)) goto L12;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
            
                if (java.lang.Math.abs(r9 - r1) < java.lang.Math.abs(r9 - r7.this$0.collapsedOffset)) goto L41;
             */
            @Override // b.j.b.c.AbstractC0113c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onViewReleased(android.view.View r8, float r9, float r10) {
                /*
                    Method dump skipped, instruction units count: 226
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.AnonymousClass2.onViewReleased(android.view.View, float, float):void");
            }

            @Override // b.j.b.c.AbstractC0113c
            public boolean tryCaptureView(View view, int i22) {
                WeakReference<V> weakReference;
                View view2;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i3 = bottomSheetBehavior.state;
                if (i3 == 1 || bottomSheetBehavior.touchingScrollingChild) {
                    return false;
                }
                return ((i3 == 3 && bottomSheetBehavior.activePointerId == i22 && (view2 = bottomSheetBehavior.nestedScrollingChildRef.get()) != null && view2.canScrollVertically(-1)) || (weakReference = BottomSheetBehavior.this.viewRef) == null || weakReference.get() != view) ? false : true;
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        setPeekHeight((typedValuePeekValue == null || (i2 = typedValuePeekValue.data) != -1) ? typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1) : i2);
        setHideable(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        setFitToContents(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        setSkipCollapsed(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        typedArrayObtainStyledAttributes.recycle();
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    private void calculateCollapsedOffset() {
        this.collapsedOffset = this.fitToContents ? Math.max(this.parentHeight - this.lastPeekHeight, this.fitToContentsOffset) : this.parentHeight - this.lastPeekHeight;
    }

    public static <V extends View> BottomSheetBehavior<V> from(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.f)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.c cVarD = ((CoordinatorLayout.f) layoutParams).d();
        if (cVarD instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) cVarD;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getExpandedOffset() {
        if (this.fitToContents) {
            return this.fitToContentsOffset;
        }
        return 0;
    }

    private float getYVelocity() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        return this.velocityTracker.getYVelocity(this.activePointerId);
    }

    private void reset() {
        this.activePointerId = -1;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
    }

    private void updateImportantForAccessibility(boolean z) {
        int iIntValue;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                if (this.importantForAccessibilityMap != null) {
                    return;
                } else {
                    this.importantForAccessibilityMap = new HashMap(childCount);
                }
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt != this.viewRef.get()) {
                    if (z) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.importantForAccessibilityMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        iIntValue = 4;
                    } else {
                        Map<View, Integer> map = this.importantForAccessibilityMap;
                        if (map != null && map.containsKey(childAt)) {
                            iIntValue = this.importantForAccessibilityMap.get(childAt).intValue();
                        }
                    }
                    s.f(childAt, iIntValue);
                }
            }
            if (z) {
                return;
            }
            this.importantForAccessibilityMap = null;
        }
    }

    void dispatchOnSlide(int i2) {
        BottomSheetCallback bottomSheetCallback;
        float f2;
        float expandedOffset;
        V v = this.viewRef.get();
        if (v == null || (bottomSheetCallback = this.callback) == null) {
            return;
        }
        int i3 = this.collapsedOffset;
        if (i2 > i3) {
            f2 = i3 - i2;
            expandedOffset = this.parentHeight - i3;
        } else {
            f2 = i3 - i2;
            expandedOffset = i3 - getExpandedOffset();
        }
        bottomSheetCallback.onSlide(v, f2 / expandedOffset);
    }

    View findScrollingChild(View view) {
        if (s.A(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View viewFindScrollingChild = findScrollingChild(viewGroup.getChildAt(i2));
            if (viewFindScrollingChild != null) {
                return viewFindScrollingChild;
            }
        }
        return null;
    }

    public final int getPeekHeight() {
        if (this.peekHeightAuto) {
            return -1;
        }
        return this.peekHeight;
    }

    int getPeekHeightMin() {
        return this.peekHeightMin;
    }

    public boolean getSkipCollapsed() {
        return this.skipCollapsed;
    }

    public final int getState() {
        return this.state;
    }

    public boolean isFitToContents() {
        return this.fitToContents;
    }

    public boolean isHideable() {
        return this.hideable;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        c cVar;
        if (!v.isShown()) {
            this.ignoreEvents = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            reset();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.initialY = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.nestedScrollingChildRef;
            View view = weakReference != null ? weakReference.get() : null;
            if (view != null && coordinatorLayout.isPointInChildBounds(view, x, this.initialY)) {
                this.activePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.touchingScrollingChild = true;
            }
            this.ignoreEvents = this.activePointerId == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.initialY);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.touchingScrollingChild = false;
            this.activePointerId = -1;
            if (this.ignoreEvents) {
                this.ignoreEvents = false;
                return false;
            }
        }
        if (!this.ignoreEvents && (cVar = this.viewDragHelper) != null && cVar.b(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.nestedScrollingChildRef;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.ignoreEvents || this.state == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.viewDragHelper == null || Math.abs(((float) this.initialY) - motionEvent.getY()) <= ((float) this.viewDragHelper.d())) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0093  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onLayoutChild(androidx.coordinatorlayout.widget.CoordinatorLayout r5, V r6, int r7) {
        /*
            r4 = this;
            boolean r0 = b.h.o.s.h(r5)
            r1 = 1
            if (r0 == 0) goto L10
            boolean r0 = b.h.o.s.h(r6)
            if (r0 != 0) goto L10
            r6.setFitsSystemWindows(r1)
        L10:
            int r0 = r6.getTop()
            r5.onLayoutChild(r6, r7)
            int r7 = r5.getHeight()
            r4.parentHeight = r7
            boolean r7 = r4.peekHeightAuto
            if (r7 == 0) goto L43
            int r7 = r4.peekHeightMin
            if (r7 != 0) goto L31
            android.content.res.Resources r7 = r5.getResources()
            int r2 = com.google.android.material.R.dimen.design_bottom_sheet_peek_height_min
            int r7 = r7.getDimensionPixelSize(r2)
            r4.peekHeightMin = r7
        L31:
            int r7 = r4.peekHeightMin
            int r2 = r4.parentHeight
            int r3 = r5.getWidth()
            int r3 = r3 * 9
            int r3 = r3 / 16
            int r2 = r2 - r3
            int r7 = java.lang.Math.max(r7, r2)
            goto L45
        L43:
            int r7 = r4.peekHeight
        L45:
            r4.lastPeekHeight = r7
            r7 = 0
            int r2 = r4.parentHeight
            int r3 = r6.getHeight()
            int r2 = r2 - r3
            int r7 = java.lang.Math.max(r7, r2)
            r4.fitToContentsOffset = r7
            int r7 = r4.parentHeight
            r2 = 2
            int r7 = r7 / r2
            r4.halfExpandedOffset = r7
            r4.calculateCollapsedOffset()
            int r7 = r4.state
            r3 = 3
            if (r7 != r3) goto L6b
            int r7 = r4.getExpandedOffset()
        L67:
            b.h.o.s.d(r6, r7)
            goto L8f
        L6b:
            r3 = 6
            if (r7 != r3) goto L71
            int r7 = r4.halfExpandedOffset
            goto L67
        L71:
            boolean r3 = r4.hideable
            if (r3 == 0) goto L7b
            r3 = 5
            if (r7 != r3) goto L7b
            int r7 = r4.parentHeight
            goto L67
        L7b:
            int r7 = r4.state
            r3 = 4
            if (r7 != r3) goto L83
            int r7 = r4.collapsedOffset
            goto L67
        L83:
            if (r7 == r1) goto L87
            if (r7 != r2) goto L8f
        L87:
            int r7 = r6.getTop()
            int r0 = r0 - r7
            b.h.o.s.d(r6, r0)
        L8f:
            b.j.b.c r7 = r4.viewDragHelper
            if (r7 != 0) goto L9b
            b.j.b.c$c r7 = r4.dragCallback
            b.j.b.c r5 = b.j.b.c.a(r5, r7)
            r4.viewDragHelper = r5
        L9b:
            java.lang.ref.WeakReference r5 = new java.lang.ref.WeakReference
            r5.<init>(r6)
            r4.viewRef = r5
            java.lang.ref.WeakReference r5 = new java.lang.ref.WeakReference
            android.view.View r6 = r4.findScrollingChild(r6)
            r5.<init>(r6)
            r4.nestedScrollingChildRef = r5
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onLayoutChild(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int):boolean");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f2, float f3) {
        return view == this.nestedScrollingChildRef.get() && (this.state != 3 || super.onNestedPreFling(coordinatorLayout, v, view, f2, f3));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int[] iArr, int i4) {
        int i5;
        if (i4 != 1 && view == this.nestedScrollingChildRef.get()) {
            int top = v.getTop();
            int i6 = top - i3;
            if (i3 > 0) {
                if (i6 < getExpandedOffset()) {
                    iArr[1] = top - getExpandedOffset();
                    s.d(v, -iArr[1]);
                    i5 = 3;
                    setStateInternal(i5);
                } else {
                    iArr[1] = i3;
                    s.d(v, -i3);
                    setStateInternal(1);
                }
            } else if (i3 < 0 && !view.canScrollVertically(-1)) {
                int i7 = this.collapsedOffset;
                if (i6 <= i7 || this.hideable) {
                    iArr[1] = i3;
                    s.d(v, -i3);
                    setStateInternal(1);
                } else {
                    iArr[1] = top - i7;
                    s.d(v, -iArr[1]);
                    i5 = 4;
                    setStateInternal(i5);
                }
            }
            dispatchOnSlide(v.getTop());
            this.lastNestedScrollDy = i3;
            this.nestedScrolled = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        int i2 = savedState.state;
        if (i2 == 1 || i2 == 2) {
            i2 = 4;
        }
        this.state = i2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), this.state);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2, int i3) {
        this.lastNestedScrollDy = 0;
        this.nestedScrolled = false;
        return (i2 & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x007e  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout r4, V r5, android.view.View r6, int r7) {
        /*
            r3 = this;
            int r4 = r5.getTop()
            int r7 = r3.getExpandedOffset()
            r0 = 3
            if (r4 != r7) goto Lf
            r3.setStateInternal(r0)
            return
        Lf:
            java.lang.ref.WeakReference<android.view.View> r4 = r3.nestedScrollingChildRef
            java.lang.Object r4 = r4.get()
            if (r6 != r4) goto L9f
            boolean r4 = r3.nestedScrolled
            if (r4 != 0) goto L1d
            goto L9f
        L1d:
            int r4 = r3.lastNestedScrollDy
            r6 = 0
            r7 = 4
            if (r4 <= 0) goto L28
            int r4 = r3.getExpandedOffset()
            goto L81
        L28:
            boolean r4 = r3.hideable
            if (r4 == 0) goto L3a
            float r4 = r3.getYVelocity()
            boolean r4 = r3.shouldHide(r5, r4)
            if (r4 == 0) goto L3a
            int r4 = r3.parentHeight
            r0 = 5
            goto L81
        L3a:
            int r4 = r3.lastNestedScrollDy
            if (r4 != 0) goto L7e
            int r4 = r5.getTop()
            boolean r1 = r3.fitToContents
            r2 = 6
            if (r1 == 0) goto L5b
            int r1 = r3.fitToContentsOffset
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.collapsedOffset
            int r4 = r4 - r2
            int r4 = java.lang.Math.abs(r4)
            if (r1 >= r4) goto L7e
            int r4 = r3.fitToContentsOffset
            goto L81
        L5b:
            int r1 = r3.halfExpandedOffset
            if (r4 >= r1) goto L6b
            int r7 = r3.collapsedOffset
            int r7 = r4 - r7
            int r7 = java.lang.Math.abs(r7)
            if (r4 >= r7) goto L7a
            r4 = 0
            goto L81
        L6b:
            int r0 = r4 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r3.collapsedOffset
            int r4 = r4 - r1
            int r4 = java.lang.Math.abs(r4)
            if (r0 >= r4) goto L7e
        L7a:
            int r4 = r3.halfExpandedOffset
            r0 = 6
            goto L81
        L7e:
            int r4 = r3.collapsedOffset
            r0 = 4
        L81:
            b.j.b.c r7 = r3.viewDragHelper
            int r1 = r5.getLeft()
            boolean r4 = r7.b(r5, r1, r4)
            if (r4 == 0) goto L9a
            r4 = 2
            r3.setStateInternal(r4)
            com.google.android.material.bottomsheet.BottomSheetBehavior$SettleRunnable r4 = new com.google.android.material.bottomsheet.BottomSheetBehavior$SettleRunnable
            r4.<init>(r5, r0)
            b.h.o.s.a(r5, r4)
            goto L9d
        L9a:
            r3.setStateInternal(r0)
        L9d:
            r3.nestedScrolled = r6
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.state == 1 && actionMasked == 0) {
            return true;
        }
        c cVar = this.viewDragHelper;
        if (cVar != null) {
            cVar.a(motionEvent);
        }
        if (actionMasked == 0) {
            reset();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (actionMasked == 2 && !this.ignoreEvents && Math.abs(this.initialY - motionEvent.getY()) > this.viewDragHelper.d()) {
            this.viewDragHelper.a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.ignoreEvents;
    }

    public void setBottomSheetCallback(BottomSheetCallback bottomSheetCallback) {
        this.callback = bottomSheetCallback;
    }

    public void setFitToContents(boolean z) {
        if (this.fitToContents == z) {
            return;
        }
        this.fitToContents = z;
        if (this.viewRef != null) {
            calculateCollapsedOffset();
        }
        setStateInternal((this.fitToContents && this.state == 6) ? 3 : this.state);
    }

    public void setHideable(boolean z) {
        this.hideable = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setPeekHeight(int r4) {
        /*
            r3 = this;
            r0 = 1
            r1 = 0
            r2 = -1
            if (r4 != r2) goto Lc
            boolean r4 = r3.peekHeightAuto
            if (r4 != 0) goto L15
            r3.peekHeightAuto = r0
            goto L24
        Lc:
            boolean r2 = r3.peekHeightAuto
            if (r2 != 0) goto L17
            int r2 = r3.peekHeight
            if (r2 == r4) goto L15
            goto L17
        L15:
            r0 = 0
            goto L24
        L17:
            r3.peekHeightAuto = r1
            int r1 = java.lang.Math.max(r1, r4)
            r3.peekHeight = r1
            int r1 = r3.parentHeight
            int r1 = r1 - r4
            r3.collapsedOffset = r1
        L24:
            if (r0 == 0) goto L3a
            int r4 = r3.state
            r0 = 4
            if (r4 != r0) goto L3a
            java.lang.ref.WeakReference<V extends android.view.View> r4 = r3.viewRef
            if (r4 == 0) goto L3a
            java.lang.Object r4 = r4.get()
            android.view.View r4 = (android.view.View) r4
            if (r4 == 0) goto L3a
            r4.requestLayout()
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.setPeekHeight(int):void");
    }

    public void setSkipCollapsed(boolean z) {
        this.skipCollapsed = z;
    }

    public final void setState(final int i2) {
        if (i2 == this.state) {
            return;
        }
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null) {
            if (i2 == 4 || i2 == 3 || i2 == 6 || (this.hideable && i2 == 5)) {
                this.state = i2;
                return;
            }
            return;
        }
        final V v = weakReference.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent != null && parent.isLayoutRequested() && s.y(v)) {
            v.post(new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                @Override // java.lang.Runnable
                public void run() {
                    BottomSheetBehavior.this.startSettlingAnimation(v, i2);
                }
            });
        } else {
            startSettlingAnimation(v, i2);
        }
    }

    void setStateInternal(int i2) {
        boolean z;
        V v;
        BottomSheetCallback bottomSheetCallback;
        if (this.state == i2) {
            return;
        }
        this.state = i2;
        if (i2 != 6 && i2 != 3) {
            z = (i2 == 5 || i2 == 4) ? false : true;
            v = this.viewRef.get();
            if (v != null || (bottomSheetCallback = this.callback) == null) {
            }
            bottomSheetCallback.onStateChanged(v, i2);
            return;
        }
        updateImportantForAccessibility(z);
        v = this.viewRef.get();
        if (v != null) {
        }
    }

    boolean shouldHide(View view, float f2) {
        if (this.skipCollapsed) {
            return true;
        }
        return view.getTop() >= this.collapsedOffset && Math.abs((((float) view.getTop()) + (f2 * 0.1f)) - ((float) this.collapsedOffset)) / ((float) this.peekHeight) > HIDE_THRESHOLD;
    }

    void startSettlingAnimation(View view, int i2) {
        int expandedOffset;
        int i3;
        if (i2 == 4) {
            expandedOffset = this.collapsedOffset;
        } else if (i2 == 6) {
            int i4 = this.halfExpandedOffset;
            if (!this.fitToContents || i4 > (i3 = this.fitToContentsOffset)) {
                expandedOffset = i4;
            } else {
                expandedOffset = i3;
                i2 = 3;
            }
        } else if (i2 == 3) {
            expandedOffset = getExpandedOffset();
        } else {
            if (!this.hideable || i2 != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i2);
            }
            expandedOffset = this.parentHeight;
        }
        if (!this.viewDragHelper.b(view, view.getLeft(), expandedOffset)) {
            setStateInternal(i2);
        } else {
            setStateInternal(2);
            s.a(view, new SettleRunnable(view, i2));
        }
    }
}
