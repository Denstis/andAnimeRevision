package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import b.h.o.a0;
import b.h.o.l;
import b.h.o.n;
import b.h.o.o;
import b.h.o.s;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements l {
    static final Class<?>[] CONSTRUCTOR_PARAMS;
    static final int EVENT_NESTED_SCROLL = 1;
    static final int EVENT_PRE_DRAW = 0;
    static final int EVENT_VIEW_REMOVED = 2;
    static final String TAG = "CoordinatorLayout";
    static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
    private static final int TYPE_ON_INTERCEPT = 0;
    private static final int TYPE_ON_TOUCH = 1;
    static final String WIDGET_PACKAGE_NAME;
    static final ThreadLocal<Map<String, Constructor<c>>> sConstructors;
    private static final b.h.n.d<Rect> sRectPool;
    private o mApplyWindowInsetsListener;
    private View mBehaviorTouchView;
    private final androidx.coordinatorlayout.widget.a<View> mChildDag;
    private final List<View> mDependencySortedChildren;
    private boolean mDisallowInterceptReset;
    private boolean mDrawStatusBarBackground;
    private boolean mIsAttachedToWindow;
    private int[] mKeylines;
    private a0 mLastInsets;
    private boolean mNeedsPreDrawListener;
    private final n mNestedScrollingParentHelper;
    private View mNestedScrollingTarget;
    ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;
    private g mOnPreDrawListener;
    private Paint mScrimPaint;
    private Drawable mStatusBarBackground;
    private final List<View> mTempDependenciesList;
    private final int[] mTempIntPair;
    private final List<View> mTempList1;

    class a implements o {
        a() {
        }

        @Override // b.h.o.o
        public a0 onApplyWindowInsets(View view, a0 a0Var) {
            return CoordinatorLayout.this.setWindowInsets(a0Var);
        }
    }

    public interface b {
        c getBehavior();
    }

    public static abstract class c<V extends View> {
        public c() {
        }

        public c(Context context, AttributeSet attributeSet) {
        }

        public static Object getTag(View view) {
            return ((f) view.getLayoutParams()).r;
        }

        public static void setTag(View view, Object obj) {
            ((f) view.getLayoutParams()).r = obj;
        }

        public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, V v) {
            return getScrimOpacity(coordinatorLayout, v) > 0.0f;
        }

        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        public int getScrimColor(CoordinatorLayout coordinatorLayout, V v) {
            return -16777216;
        }

        public float getScrimOpacity(CoordinatorLayout coordinatorLayout, V v) {
            return 0.0f;
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public a0 onApplyWindowInsets(CoordinatorLayout coordinatorLayout, V v, a0 a0Var) {
            return a0Var;
        }

        public void onAttachedToLayoutParams(f fVar) {
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i2) {
            return false;
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v, int i2, int i3, int i4, int i5) {
            return false;
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, V v, View view, float f2, float f3, boolean z) {
            return false;
        }

        public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f2, float f3) {
            return false;
        }

        @Deprecated
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int[] iArr) {
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int[] iArr, int i4) {
            if (i4 == 0) {
                onNestedPreScroll(coordinatorLayout, v, view, i2, i3, iArr);
            }
        }

        @Deprecated
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int i4, int i5) {
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int i4, int i5, int i6) {
            if (i6 == 0) {
                onNestedScroll(coordinatorLayout, v, view, i2, i3, i4, i5);
            }
        }

        @Deprecated
        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2) {
        }

        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2, int i3) {
            if (i3 == 0) {
                onNestedScrollAccepted(coordinatorLayout, v, view, view2, i2);
            }
        }

        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2) {
            return false;
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2, int i3) {
            if (i3 == 0) {
                return onStartNestedScroll(coordinatorLayout, v, view, view2, i2);
            }
            return false;
        }

        @Deprecated
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2) {
            if (i2 == 0) {
                onStopNestedScroll(coordinatorLayout, v, view);
            }
        }

        public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    public @interface d {
        Class<? extends c> value();
    }

    private class e implements ViewGroup.OnHierarchyChangeListener {
        e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.onChildViewsChanged(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public static class f extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        c f802a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f803b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f804c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f805d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f806e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f807f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f808g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f809h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f810i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f811j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        View f812k;
        View l;
        private boolean m;
        private boolean n;
        private boolean o;
        private boolean p;
        final Rect q;
        Object r;

        public f(int i2, int i3) {
            super(i2, i3);
            this.f803b = false;
            this.f804c = 0;
            this.f805d = 0;
            this.f806e = -1;
            this.f807f = -1;
            this.f808g = 0;
            this.f809h = 0;
            this.q = new Rect();
        }

        f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f803b = false;
            this.f804c = 0;
            this.f805d = 0;
            this.f806e = -1;
            this.f807f = -1;
            this.f808g = 0;
            this.f809h = 0;
            this.q = new Rect();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.g.c.CoordinatorLayout_Layout);
            this.f804c = typedArrayObtainStyledAttributes.getInteger(b.g.c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f807f = typedArrayObtainStyledAttributes.getResourceId(b.g.c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f805d = typedArrayObtainStyledAttributes.getInteger(b.g.c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f806e = typedArrayObtainStyledAttributes.getInteger(b.g.c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f808g = typedArrayObtainStyledAttributes.getInt(b.g.c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f809h = typedArrayObtainStyledAttributes.getInt(b.g.c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.f803b = typedArrayObtainStyledAttributes.hasValue(b.g.c.CoordinatorLayout_Layout_layout_behavior);
            if (this.f803b) {
                this.f802a = CoordinatorLayout.parseBehavior(context, attributeSet, typedArrayObtainStyledAttributes.getString(b.g.c.CoordinatorLayout_Layout_layout_behavior));
            }
            typedArrayObtainStyledAttributes.recycle();
            c cVar = this.f802a;
            if (cVar != null) {
                cVar.onAttachedToLayoutParams(this);
            }
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f803b = false;
            this.f804c = 0;
            this.f805d = 0;
            this.f806e = -1;
            this.f807f = -1;
            this.f808g = 0;
            this.f809h = 0;
            this.q = new Rect();
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f803b = false;
            this.f804c = 0;
            this.f805d = 0;
            this.f806e = -1;
            this.f807f = -1;
            this.f808g = 0;
            this.f809h = 0;
            this.q = new Rect();
        }

        public f(f fVar) {
            super((ViewGroup.MarginLayoutParams) fVar);
            this.f803b = false;
            this.f804c = 0;
            this.f805d = 0;
            this.f806e = -1;
            this.f807f = -1;
            this.f808g = 0;
            this.f809h = 0;
            this.q = new Rect();
        }

        private void a(View view, CoordinatorLayout coordinatorLayout) {
            this.f812k = coordinatorLayout.findViewById(this.f807f);
            View view2 = this.f812k;
            if (view2 != null) {
                if (view2 != coordinatorLayout) {
                    for (ViewParent parent = view2.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                        if (parent != view) {
                            if (parent instanceof View) {
                                view2 = parent;
                            }
                        } else if (!coordinatorLayout.isInEditMode()) {
                            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                        }
                    }
                    this.l = view2;
                    return;
                }
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
            } else if (!coordinatorLayout.isInEditMode()) {
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f807f) + " to anchor view " + view);
            }
            this.l = null;
            this.f812k = null;
        }

        private boolean a(View view, int i2) {
            int iA = b.h.o.c.a(((f) view.getLayoutParams()).f808g, i2);
            return iA != 0 && (b.h.o.c.a(this.f809h, i2) & iA) == iA;
        }

        private boolean b(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f812k.getId() != this.f807f) {
                return false;
            }
            View view2 = this.f812k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.l = null;
                    this.f812k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
            this.l = view2;
            return true;
        }

        View a(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f807f == -1) {
                this.l = null;
                this.f812k = null;
                return null;
            }
            if (this.f812k == null || !b(view, coordinatorLayout)) {
                a(view, coordinatorLayout);
            }
            return this.f812k;
        }

        void a(int i2, boolean z) {
            if (i2 == 0) {
                this.n = z;
            } else {
                if (i2 != 1) {
                    return;
                }
                this.o = z;
            }
        }

        void a(Rect rect) {
            this.q.set(rect);
        }

        public void a(c cVar) {
            c cVar2 = this.f802a;
            if (cVar2 != cVar) {
                if (cVar2 != null) {
                    cVar2.onDetachedFromLayoutParams();
                }
                this.f802a = cVar;
                this.r = null;
                this.f803b = true;
                if (cVar != null) {
                    cVar.onAttachedToLayoutParams(this);
                }
            }
        }

        void a(boolean z) {
            this.p = z;
        }

        boolean a() {
            return this.f812k == null && this.f807f != -1;
        }

        boolean a(int i2) {
            if (i2 == 0) {
                return this.n;
            }
            if (i2 != 1) {
                return false;
            }
            return this.o;
        }

        boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            c cVar;
            return view2 == this.l || a(view2, s.k(coordinatorLayout)) || ((cVar = this.f802a) != null && cVar.layoutDependsOn(coordinatorLayout, view, view2));
        }

        void b(int i2) {
            a(i2, false);
        }

        boolean b() {
            if (this.f802a == null) {
                this.m = false;
            }
            return this.m;
        }

        boolean b(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.m;
            if (z) {
                return true;
            }
            c cVar = this.f802a;
            boolean zBlocksInteractionBelow = (cVar != null ? cVar.blocksInteractionBelow(coordinatorLayout, view) : false) | z;
            this.m = zBlocksInteractionBelow;
            return zBlocksInteractionBelow;
        }

        public int c() {
            return this.f807f;
        }

        public c d() {
            return this.f802a;
        }

        boolean e() {
            return this.p;
        }

        Rect f() {
            return this.q;
        }

        void g() {
            this.p = false;
        }

        void h() {
            this.m = false;
        }
    }

    class g implements ViewTreeObserver.OnPreDrawListener {
        g() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.onChildViewsChanged(0);
            return true;
        }
    }

    protected static class h extends b.j.a.a {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SparseArray<Parcelable> f814b;

        static class a implements Parcelable.ClassLoaderCreator<h> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public h createFromParcel(Parcel parcel) {
                return new h(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public h[] newArray(int i2) {
                return new h[i2];
            }
        }

        public h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i2 = parcel.readInt();
            int[] iArr = new int[i2];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.f814b = new SparseArray<>(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                this.f814b.append(iArr[i3], parcelableArray[i3]);
            }
        }

        public h(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // b.j.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            SparseArray<Parcelable> sparseArray = this.f814b;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i3 = 0; i3 < size; i3++) {
                iArr[i3] = this.f814b.keyAt(i3);
                parcelableArr[i3] = this.f814b.valueAt(i3);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i2);
        }
    }

    static class i implements Comparator<View> {
        i() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            float fT = s.t(view);
            float fT2 = s.t(view2);
            if (fT > fT2) {
                return -1;
            }
            return fT < fT2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        WIDGET_PACKAGE_NAME = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            TOP_SORTED_CHILDREN_COMPARATOR = new i();
        } else {
            TOP_SORTED_CHILDREN_COMPARATOR = null;
        }
        CONSTRUCTOR_PARAMS = new Class[]{Context.class, AttributeSet.class};
        sConstructors = new ThreadLocal<>();
        sRectPool = new b.h.n.f(12);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.g.a.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mDependencySortedChildren = new ArrayList();
        this.mChildDag = new androidx.coordinatorlayout.widget.a<>();
        this.mTempList1 = new ArrayList();
        this.mTempDependenciesList = new ArrayList();
        this.mTempIntPair = new int[2];
        this.mNestedScrollingParentHelper = new n(this);
        TypedArray typedArrayObtainStyledAttributes = i2 == 0 ? context.obtainStyledAttributes(attributeSet, b.g.c.CoordinatorLayout, 0, b.g.b.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, b.g.c.CoordinatorLayout, i2, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(b.g.c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.mKeylines = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.mKeylines.length;
            for (int i3 = 0; i3 < length; i3++) {
                this.mKeylines[i3] = (int) (r1[i3] * f2);
            }
        }
        this.mStatusBarBackground = typedArrayObtainStyledAttributes.getDrawable(b.g.c.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        setupForInsets();
        super.setOnHierarchyChangeListener(new e());
    }

    private static Rect acquireTempRect() {
        Rect rectA = sRectPool.a();
        return rectA == null ? new Rect() : rectA;
    }

    private static int clamp(int i2, int i3, int i4) {
        return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
    }

    private void constrainChildRect(f fVar, Rect rect, int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i3) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        rect.set(iMax, iMax2, i2 + iMax, i3 + iMax2);
    }

    private a0 dispatchApplyWindowInsetsToBehaviors(a0 a0Var) {
        c cVarD;
        if (a0Var.g()) {
            return a0Var;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (s.h(childAt) && (cVarD = ((f) childAt.getLayoutParams()).d()) != null) {
                a0Var = cVarD.onApplyWindowInsets(this, childAt, a0Var);
                if (a0Var.g()) {
                    break;
                }
            }
        }
        return a0Var;
    }

    private void getDesiredAnchoredChildRectWithoutConstraints(View view, int i2, Rect rect, Rect rect2, f fVar, int i3, int i4) {
        int iA = b.h.o.c.a(resolveAnchoredChildGravity(fVar.f804c), i2);
        int iA2 = b.h.o.c.a(resolveGravity(fVar.f805d), i2);
        int i5 = iA & 7;
        int i6 = iA & R.styleable.AppCompatTheme_windowActionBarOverlay;
        int i7 = iA2 & 7;
        int i8 = iA2 & R.styleable.AppCompatTheme_windowActionBarOverlay;
        int iWidth = i7 != 1 ? i7 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int iHeight = i8 != 16 ? i8 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i5 == 1) {
            iWidth -= i3 / 2;
        } else if (i5 != 5) {
            iWidth -= i3;
        }
        if (i6 == 16) {
            iHeight -= i4 / 2;
        } else if (i6 != 80) {
            iHeight -= i4;
        }
        rect2.set(iWidth, iHeight, i3 + iWidth, i4 + iHeight);
    }

    private int getKeyline(int i2) {
        StringBuilder sb;
        int[] iArr = this.mKeylines;
        if (iArr == null) {
            sb = new StringBuilder();
            sb.append("No keylines defined for ");
            sb.append(this);
            sb.append(" - attempted index lookup ");
            sb.append(i2);
        } else {
            if (i2 >= 0 && i2 < iArr.length) {
                return iArr[i2];
            }
            sb = new StringBuilder();
            sb.append("Keyline index ");
            sb.append(i2);
            sb.append(" out of range for ");
            sb.append(this);
        }
        Log.e(TAG, sb.toString());
        return 0;
    }

    private void getTopSortedChildren(List<View> list) {
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Comparator<View> comparator = TOP_SORTED_CHILDREN_COMPARATOR;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private boolean hasDependencies(View view) {
        return this.mChildDag.e(view);
    }

    private void layoutChild(View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        Rect rectAcquireTempRect = acquireTempRect();
        rectAcquireTempRect.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        if (this.mLastInsets != null && s.h(this) && !s.h(view)) {
            rectAcquireTempRect.left += this.mLastInsets.c();
            rectAcquireTempRect.top += this.mLastInsets.e();
            rectAcquireTempRect.right -= this.mLastInsets.d();
            rectAcquireTempRect.bottom -= this.mLastInsets.b();
        }
        Rect rectAcquireTempRect2 = acquireTempRect();
        b.h.o.c.a(resolveGravity(fVar.f804c), view.getMeasuredWidth(), view.getMeasuredHeight(), rectAcquireTempRect, rectAcquireTempRect2, i2);
        view.layout(rectAcquireTempRect2.left, rectAcquireTempRect2.top, rectAcquireTempRect2.right, rectAcquireTempRect2.bottom);
        releaseTempRect(rectAcquireTempRect);
        releaseTempRect(rectAcquireTempRect2);
    }

    private void layoutChildWithAnchor(View view, View view2, int i2) {
        Rect rectAcquireTempRect = acquireTempRect();
        Rect rectAcquireTempRect2 = acquireTempRect();
        try {
            getDescendantRect(view2, rectAcquireTempRect);
            getDesiredAnchoredChildRect(view, i2, rectAcquireTempRect, rectAcquireTempRect2);
            view.layout(rectAcquireTempRect2.left, rectAcquireTempRect2.top, rectAcquireTempRect2.right, rectAcquireTempRect2.bottom);
        } finally {
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
        }
    }

    private void layoutChildWithKeyline(View view, int i2, int i3) {
        f fVar = (f) view.getLayoutParams();
        int iA = b.h.o.c.a(resolveKeylineGravity(fVar.f804c), i3);
        int i4 = iA & 7;
        int i5 = iA & R.styleable.AppCompatTheme_windowActionBarOverlay;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i3 == 1) {
            i2 = width - i2;
        }
        int keyline = getKeyline(i2) - measuredWidth;
        int i6 = 0;
        if (i4 == 1) {
            keyline += measuredWidth / 2;
        } else if (i4 == 5) {
            keyline += measuredWidth;
        }
        if (i5 == 16) {
            i6 = 0 + (measuredHeight / 2);
        } else if (i5 == 80) {
            i6 = measuredHeight + 0;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(keyline, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(i6, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth + iMax, measuredHeight + iMax2);
    }

    private void offsetChildByInset(View view, Rect rect, int i2) {
        boolean z;
        boolean z2;
        int width;
        int i3;
        int i4;
        int i5;
        int height;
        int i6;
        int i7;
        int i8;
        if (s.z(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            f fVar = (f) view.getLayoutParams();
            c cVarD = fVar.d();
            Rect rectAcquireTempRect = acquireTempRect();
            Rect rectAcquireTempRect2 = acquireTempRect();
            rectAcquireTempRect2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (cVarD == null || !cVarD.getInsetDodgeRect(this, view, rectAcquireTempRect)) {
                rectAcquireTempRect.set(rectAcquireTempRect2);
            } else if (!rectAcquireTempRect2.contains(rectAcquireTempRect)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectAcquireTempRect.toShortString() + " | Bounds:" + rectAcquireTempRect2.toShortString());
            }
            releaseTempRect(rectAcquireTempRect2);
            if (rectAcquireTempRect.isEmpty()) {
                releaseTempRect(rectAcquireTempRect);
                return;
            }
            int iA = b.h.o.c.a(fVar.f809h, i2);
            if ((iA & 48) != 48 || (i7 = (rectAcquireTempRect.top - ((ViewGroup.MarginLayoutParams) fVar).topMargin) - fVar.f811j) >= (i8 = rect.top)) {
                z = false;
            } else {
                setInsetOffsetY(view, i8 - i7);
                z = true;
            }
            if ((iA & 80) == 80 && (height = ((getHeight() - rectAcquireTempRect.bottom) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) + fVar.f811j) < (i6 = rect.bottom)) {
                setInsetOffsetY(view, height - i6);
                z = true;
            }
            if (!z) {
                setInsetOffsetY(view, 0);
            }
            if ((iA & 3) != 3 || (i4 = (rectAcquireTempRect.left - ((ViewGroup.MarginLayoutParams) fVar).leftMargin) - fVar.f810i) >= (i5 = rect.left)) {
                z2 = false;
            } else {
                setInsetOffsetX(view, i5 - i4);
                z2 = true;
            }
            if ((iA & 5) == 5 && (width = ((getWidth() - rectAcquireTempRect.right) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin) + fVar.f810i) < (i3 = rect.right)) {
                setInsetOffsetX(view, width - i3);
                z2 = true;
            }
            if (!z2) {
                setInsetOffsetX(view, 0);
            }
            releaseTempRect(rectAcquireTempRect);
        }
    }

    static c parseBehavior(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(WIDGET_PACKAGE_NAME)) {
            str = WIDGET_PACKAGE_NAME + '.' + str;
        }
        try {
            Map map = sConstructors.get();
            if (map == null) {
                map = new HashMap();
                sConstructors.set((Map<String, Constructor<c>>) map);
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = context.getClassLoader().loadClass(str).getConstructor(CONSTRUCTOR_PARAMS);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (c) constructor.newInstance(context, attributeSet);
        } catch (Exception e2) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e2);
        }
    }

    private boolean performIntercept(MotionEvent motionEvent, int i2) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.mTempList1;
        getTopSortedChildren(list);
        int size = list.size();
        MotionEvent motionEventObtain = null;
        boolean zOnInterceptTouchEvent = false;
        boolean z = false;
        for (int i3 = 0; i3 < size; i3++) {
            View view = list.get(i3);
            f fVar = (f) view.getLayoutParams();
            c cVarD = fVar.d();
            if (!(zOnInterceptTouchEvent || z) || actionMasked == 0) {
                if (!zOnInterceptTouchEvent && cVarD != null) {
                    if (i2 == 0) {
                        zOnInterceptTouchEvent = cVarD.onInterceptTouchEvent(this, view, motionEvent);
                    } else if (i2 == 1) {
                        zOnInterceptTouchEvent = cVarD.onTouchEvent(this, view, motionEvent);
                    }
                    if (zOnInterceptTouchEvent) {
                        this.mBehaviorTouchView = view;
                    }
                }
                boolean zB = fVar.b();
                boolean zB2 = fVar.b(this, view);
                boolean z2 = zB2 && !zB;
                if (zB2 && !z2) {
                    break;
                }
                z = z2;
            } else if (cVarD != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i2 == 0) {
                    cVarD.onInterceptTouchEvent(this, view, motionEventObtain);
                } else if (i2 == 1) {
                    cVarD.onTouchEvent(this, view, motionEventObtain);
                }
            }
        }
        list.clear();
        return zOnInterceptTouchEvent;
    }

    private void prepareChildren() {
        this.mDependencySortedChildren.clear();
        this.mChildDag.a();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            f resolvedLayoutParams = getResolvedLayoutParams(childAt);
            resolvedLayoutParams.a(this, childAt);
            this.mChildDag.a(childAt);
            for (int i3 = 0; i3 < childCount; i3++) {
                if (i3 != i2) {
                    View childAt2 = getChildAt(i3);
                    if (resolvedLayoutParams.a(this, childAt, childAt2)) {
                        if (!this.mChildDag.b(childAt2)) {
                            this.mChildDag.a(childAt2);
                        }
                        this.mChildDag.a(childAt2, childAt);
                    }
                }
            }
        }
        this.mDependencySortedChildren.addAll(this.mChildDag.b());
        Collections.reverse(this.mDependencySortedChildren);
    }

    private static void releaseTempRect(Rect rect) {
        rect.setEmpty();
        sRectPool.a(rect);
    }

    private void resetTouchBehaviors(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            c cVarD = ((f) childAt.getLayoutParams()).d();
            if (cVarD != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    cVarD.onInterceptTouchEvent(this, childAt, motionEventObtain);
                } else {
                    cVarD.onTouchEvent(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            ((f) getChildAt(i3).getLayoutParams()).h();
        }
        this.mBehaviorTouchView = null;
        this.mDisallowInterceptReset = false;
    }

    private static int resolveAnchoredChildGravity(int i2) {
        if (i2 == 0) {
            return 17;
        }
        return i2;
    }

    private static int resolveGravity(int i2) {
        if ((i2 & 7) == 0) {
            i2 |= 8388611;
        }
        return (i2 & R.styleable.AppCompatTheme_windowActionBarOverlay) == 0 ? i2 | 48 : i2;
    }

    private static int resolveKeylineGravity(int i2) {
        if (i2 == 0) {
            return 8388661;
        }
        return i2;
    }

    private void setInsetOffsetX(View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        int i3 = fVar.f810i;
        if (i3 != i2) {
            s.c(view, i2 - i3);
            fVar.f810i = i2;
        }
    }

    private void setInsetOffsetY(View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        int i3 = fVar.f811j;
        if (i3 != i2) {
            s.d(view, i2 - i3);
            fVar.f811j = i2;
        }
    }

    private void setupForInsets() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (!s.h(this)) {
            s.a(this, (o) null);
            return;
        }
        if (this.mApplyWindowInsetsListener == null) {
            this.mApplyWindowInsetsListener = new a();
        }
        s.a(this, this.mApplyWindowInsetsListener);
        setSystemUiVisibility(1280);
    }

    void addPreDrawListener() {
        if (this.mIsAttachedToWindow) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = true;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    public void dispatchDependentViewsChanged(View view) {
        List listC = this.mChildDag.c(view);
        if (listC == null || listC.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < listC.size(); i2++) {
            View view2 = (View) listC.get(i2);
            c cVarD = ((f) view2.getLayoutParams()).d();
            if (cVarD != null) {
                cVarD.onDependentViewChanged(this, view2, view);
            }
        }
    }

    public boolean doViewsOverlap(View view, View view2) {
        boolean z = false;
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect rectAcquireTempRect = acquireTempRect();
        getChildRect(view, view.getParent() != this, rectAcquireTempRect);
        Rect rectAcquireTempRect2 = acquireTempRect();
        getChildRect(view2, view2.getParent() != this, rectAcquireTempRect2);
        try {
            if (rectAcquireTempRect.left <= rectAcquireTempRect2.right && rectAcquireTempRect.top <= rectAcquireTempRect2.bottom && rectAcquireTempRect.right >= rectAcquireTempRect2.left) {
                if (rectAcquireTempRect.bottom >= rectAcquireTempRect2.top) {
                    z = true;
                }
            }
            return z;
        } finally {
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j2) {
        f fVar = (f) view.getLayoutParams();
        c cVar = fVar.f802a;
        if (cVar != null) {
            float scrimOpacity = cVar.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.mScrimPaint == null) {
                    this.mScrimPaint = new Paint();
                }
                this.mScrimPaint.setColor(fVar.f802a.getScrimColor(this, view));
                this.mScrimPaint.setAlpha(clamp(Math.round(scrimOpacity * 255.0f), 0, 255));
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.mScrimPaint);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mStatusBarBackground;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    void ensurePreDrawListener() {
        int childCount = getChildCount();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            if (hasDependencies(getChildAt(i2))) {
                z = true;
                break;
            }
            i2++;
        }
        if (z != this.mNeedsPreDrawListener) {
            if (z) {
                addPreDrawListener();
            } else {
                removePreDrawListener();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public f generateDefaultLayoutParams() {
        return new f(-2, -2);
    }

    @Override // android.view.ViewGroup
    public f generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof f ? new f((f) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    void getChildRect(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            getDescendantRect(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public List<View> getDependencies(View view) {
        List<View> listD = this.mChildDag.d(view);
        this.mTempDependenciesList.clear();
        if (listD != null) {
            this.mTempDependenciesList.addAll(listD);
        }
        return this.mTempDependenciesList;
    }

    final List<View> getDependencySortedChildren() {
        prepareChildren();
        return Collections.unmodifiableList(this.mDependencySortedChildren);
    }

    public List<View> getDependents(View view) {
        List listC = this.mChildDag.c(view);
        this.mTempDependenciesList.clear();
        if (listC != null) {
            this.mTempDependenciesList.addAll(listC);
        }
        return this.mTempDependenciesList;
    }

    void getDescendantRect(View view, Rect rect) {
        androidx.coordinatorlayout.widget.b.a(this, view, rect);
    }

    void getDesiredAnchoredChildRect(View view, int i2, Rect rect, Rect rect2) {
        f fVar = (f) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        getDesiredAnchoredChildRectWithoutConstraints(view, i2, rect, rect2, fVar, measuredWidth, measuredHeight);
        constrainChildRect(fVar, rect2, measuredWidth, measuredHeight);
    }

    void getLastChildRect(View view, Rect rect) {
        rect.set(((f) view.getLayoutParams()).f());
    }

    public final a0 getLastWindowInsets() {
        return this.mLastInsets;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    f getResolvedLayoutParams(View view) {
        f fVar = (f) view.getLayoutParams();
        if (!fVar.f803b) {
            if (view instanceof b) {
                c behavior = ((b) view).getBehavior();
                if (behavior == null) {
                    Log.e(TAG, "Attached behavior class is null");
                }
                fVar.a(behavior);
            } else {
                d dVar = null;
                for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    dVar = (d) superclass.getAnnotation(d.class);
                    if (dVar != null) {
                        break;
                    }
                }
                if (dVar != null) {
                    try {
                        fVar.a(dVar.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e2) {
                        Log.e(TAG, "Default behavior class " + dVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e2);
                    }
                }
            }
            fVar.f803b = true;
        }
        return fVar;
    }

    public Drawable getStatusBarBackground() {
        return this.mStatusBarBackground;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    public boolean isPointInChildBounds(View view, int i2, int i3) {
        Rect rectAcquireTempRect = acquireTempRect();
        getDescendantRect(view, rectAcquireTempRect);
        try {
            return rectAcquireTempRect.contains(i2, i3);
        } finally {
            releaseTempRect(rectAcquireTempRect);
        }
    }

    void offsetChildToAnchor(View view, int i2) {
        c cVarD;
        f fVar = (f) view.getLayoutParams();
        if (fVar.f812k != null) {
            Rect rectAcquireTempRect = acquireTempRect();
            Rect rectAcquireTempRect2 = acquireTempRect();
            Rect rectAcquireTempRect3 = acquireTempRect();
            getDescendantRect(fVar.f812k, rectAcquireTempRect);
            getChildRect(view, false, rectAcquireTempRect2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            getDesiredAnchoredChildRectWithoutConstraints(view, i2, rectAcquireTempRect, rectAcquireTempRect3, fVar, measuredWidth, measuredHeight);
            boolean z = (rectAcquireTempRect3.left == rectAcquireTempRect2.left && rectAcquireTempRect3.top == rectAcquireTempRect2.top) ? false : true;
            constrainChildRect(fVar, rectAcquireTempRect3, measuredWidth, measuredHeight);
            int i3 = rectAcquireTempRect3.left - rectAcquireTempRect2.left;
            int i4 = rectAcquireTempRect3.top - rectAcquireTempRect2.top;
            if (i3 != 0) {
                s.c(view, i3);
            }
            if (i4 != 0) {
                s.d(view, i4);
            }
            if (z && (cVarD = fVar.d()) != null) {
                cVarD.onDependentViewChanged(this, view, fVar.f812k);
            }
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
            releaseTempRect(rectAcquireTempRect3);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        if (this.mLastInsets == null && s.h(this)) {
            s.D(this);
        }
        this.mIsAttachedToWindow = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void onChildViewsChanged(int r18) {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onChildViewsChanged(int):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        View view = this.mNestedScrollingTarget;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.mIsAttachedToWindow = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.mDrawStatusBarBackground || this.mStatusBarBackground == null) {
            return;
        }
        a0 a0Var = this.mLastInsets;
        int iE = a0Var != null ? a0Var.e() : 0;
        if (iE > 0) {
            this.mStatusBarBackground.setBounds(0, 0, getWidth(), iE);
            this.mStatusBarBackground.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            resetTouchBehaviors(true);
        }
        boolean zPerformIntercept = performIntercept(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            resetTouchBehaviors(true);
        }
        return zPerformIntercept;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        c cVarD;
        int iK = s.k(this);
        int size = this.mDependencySortedChildren.size();
        for (int i6 = 0; i6 < size; i6++) {
            View view = this.mDependencySortedChildren.get(i6);
            if (view.getVisibility() != 8 && ((cVarD = ((f) view.getLayoutParams()).d()) == null || !cVarD.onLayoutChild(this, view, iK))) {
                onLayoutChild(view, iK);
            }
        }
    }

    public void onLayoutChild(View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        if (fVar.a()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        View view2 = fVar.f812k;
        if (view2 != null) {
            layoutChildWithAnchor(view, view2, i2);
            return;
        }
        int i3 = fVar.f806e;
        if (i3 >= 0) {
            layoutChildWithKeyline(view, i3, i2);
        } else {
            layoutChild(view, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r31, int r32) {
        /*
            Method dump skipped, instruction units count: 388
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    public void onMeasureChild(View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        c cVarD;
        int childCount = getChildCount();
        boolean zOnNestedFling = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(0) && (cVarD = fVar.d()) != null) {
                    zOnNestedFling |= cVarD.onNestedFling(this, childAt, view, f2, f3, z);
                }
            }
        }
        if (zOnNestedFling) {
            onChildViewsChanged(1);
        }
        return zOnNestedFling;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public boolean onNestedPreFling(View view, float f2, float f3) {
        c cVarD;
        int childCount = getChildCount();
        boolean zOnNestedPreFling = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(0) && (cVarD = fVar.d()) != null) {
                    zOnNestedPreFling |= cVarD.onNestedPreFling(this, childAt, view, f2, f3);
                }
            }
        }
        return zOnNestedPreFling;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        onNestedPreScroll(view, i2, i3, iArr, 0);
    }

    @Override // b.h.o.l
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr, int i4) {
        c cVarD;
        int childCount = getChildCount();
        boolean z = false;
        int i5 = 0;
        int iMax = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(i4) && (cVarD = fVar.d()) != null) {
                    int[] iArr2 = this.mTempIntPair;
                    iArr2[1] = 0;
                    iArr2[0] = 0;
                    cVarD.onNestedPreScroll(this, childAt, view, i2, i3, iArr2, i4);
                    int[] iArr3 = this.mTempIntPair;
                    int iMax2 = i2 > 0 ? Math.max(i5, iArr3[0]) : Math.min(i5, iArr3[0]);
                    int[] iArr4 = this.mTempIntPair;
                    i5 = iMax2;
                    iMax = i3 > 0 ? Math.max(iMax, iArr4[1]) : Math.min(iMax, iArr4[1]);
                    z = true;
                }
            }
        }
        iArr[0] = i5;
        iArr[1] = iMax;
        if (z) {
            onChildViewsChanged(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        onNestedScroll(view, i2, i3, i4, i5, 0);
    }

    @Override // b.h.o.l
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5, int i6) {
        c cVarD;
        int childCount = getChildCount();
        boolean z = false;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(i6) && (cVarD = fVar.d()) != null) {
                    cVarD.onNestedScroll(this, childAt, view, i2, i3, i4, i5, i6);
                    z = true;
                }
            }
        }
        if (z) {
            onChildViewsChanged(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        onNestedScrollAccepted(view, view2, i2, 0);
    }

    @Override // b.h.o.l
    public void onNestedScrollAccepted(View view, View view2, int i2, int i3) {
        c cVarD;
        this.mNestedScrollingParentHelper.a(view, view2, i2, i3);
        this.mNestedScrollingTarget = view2;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.a(i3) && (cVarD = fVar.d()) != null) {
                cVarD.onNestedScrollAccepted(this, childAt, view, view2, i2, i3);
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.getSuperState());
        SparseArray<Parcelable> sparseArray = hVar.f814b;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            c cVarD = getResolvedLayoutParams(childAt).d();
            if (id != -1 && cVarD != null && (parcelable2 = sparseArray.get(id)) != null) {
                cVarD.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState;
        h hVar = new h(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            c cVarD = ((f) childAt.getLayoutParams()).d();
            if (id != -1 && cVarD != null && (parcelableOnSaveInstanceState = cVarD.onSaveInstanceState(this, childAt)) != null) {
                sparseArray.append(id, parcelableOnSaveInstanceState);
            }
        }
        hVar.f814b = sparseArray;
        return hVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return onStartNestedScroll(view, view2, i2, 0);
    }

    @Override // b.h.o.l
    public boolean onStartNestedScroll(View view, View view2, int i2, int i3) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                c cVarD = fVar.d();
                if (cVarD != null) {
                    boolean zOnStartNestedScroll = cVarD.onStartNestedScroll(this, childAt, view, view2, i2, i3);
                    fVar.a(i3, zOnStartNestedScroll);
                    z |= zOnStartNestedScroll;
                } else {
                    fVar.a(i3, false);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, b.h.o.m
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // b.h.o.l
    public void onStopNestedScroll(View view, int i2) {
        this.mNestedScrollingParentHelper.a(view, i2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.a(i2)) {
                c cVarD = fVar.d();
                if (cVarD != null) {
                    cVarD.onStopNestedScroll(this, childAt, view, i2);
                }
                fVar.b(i2);
                fVar.g();
            }
        }
        this.mNestedScrollingTarget = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b A[PHI: r3
      0x002b: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:9:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.mBehaviorTouchView
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L15
            boolean r3 = r0.performIntercept(r1, r4)
            if (r3 == 0) goto L2b
            goto L16
        L15:
            r3 = 0
        L16:
            android.view.View r6 = r0.mBehaviorTouchView
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$f r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$c r6 = r6.d()
            if (r6 == 0) goto L2b
            android.view.View r7 = r0.mBehaviorTouchView
            boolean r6 = r6.onTouchEvent(r0, r7, r1)
            goto L2c
        L2b:
            r6 = 0
        L2c:
            android.view.View r7 = r0.mBehaviorTouchView
            r8 = 0
            if (r7 != 0) goto L37
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L4a
        L37:
            if (r3 == 0) goto L4a
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L4a:
            if (r8 == 0) goto L4f
            r8.recycle()
        L4f:
            if (r2 == r4) goto L54
            r1 = 3
            if (r2 != r1) goto L57
        L54:
            r0.resetTouchBehaviors(r5)
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void recordLastChildRect(View view, Rect rect) {
        ((f) view.getLayoutParams()).a(rect);
    }

    void removePreDrawListener() {
        if (this.mIsAttachedToWindow && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        c cVarD = ((f) view.getLayoutParams()).d();
        if (cVarD == null || !cVarD.onRequestChildRectangleOnScreen(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.mDisallowInterceptReset) {
            return;
        }
        resetTouchBehaviors(false);
        this.mDisallowInterceptReset = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        setupForInsets();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.mStatusBarBackground;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.mStatusBarBackground = drawable != null ? drawable.mutate() : null;
            Drawable drawable3 = this.mStatusBarBackground;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.mStatusBarBackground.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.a(this.mStatusBarBackground, s.k(this));
                this.mStatusBarBackground.setVisible(getVisibility() == 0, false);
                this.mStatusBarBackground.setCallback(this);
            }
            s.C(this);
        }
    }

    public void setStatusBarBackgroundColor(int i2) {
        setStatusBarBackground(new ColorDrawable(i2));
    }

    public void setStatusBarBackgroundResource(int i2) {
        setStatusBarBackground(i2 != 0 ? androidx.core.content.a.c(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.mStatusBarBackground;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.mStatusBarBackground.setVisible(z, false);
    }

    final a0 setWindowInsets(a0 a0Var) {
        if (b.h.n.c.a(this.mLastInsets, a0Var)) {
            return a0Var;
        }
        this.mLastInsets = a0Var;
        this.mDrawStatusBarBackground = a0Var != null && a0Var.e() > 0;
        setWillNotDraw(!this.mDrawStatusBarBackground && getBackground() == null);
        a0 a0VarDispatchApplyWindowInsetsToBehaviors = dispatchApplyWindowInsetsToBehaviors(a0Var);
        requestLayout();
        return a0VarDispatchApplyWindowInsetsToBehaviors;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mStatusBarBackground;
    }
}
