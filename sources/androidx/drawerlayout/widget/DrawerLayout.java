package androidx.drawerlayout.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import b.h.o.b0.c;
import b.h.o.s;
import b.j.b.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {
    private static final int[] L = {R.attr.colorPrimaryDark};
    static final int[] M = {R.attr.layout_gravity};
    static final boolean N;
    private static final boolean O;
    private CharSequence A;
    private CharSequence B;
    private Object C;
    private boolean D;
    private Drawable E;
    private Drawable F;
    private Drawable G;
    private Drawable H;
    private final ArrayList<View> I;
    private Rect J;
    private Matrix K;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f1001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f1002c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1004e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f1005f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f1006g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b.j.b.c f1007h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b.j.b.c f1008i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final g f1009j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final g f1010k;
    private int l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private int r;
    private boolean s;
    private d t;
    private List<d> u;
    private float v;
    private float w;
    private Drawable x;
    private Drawable y;
    private Drawable z;

    class a implements View.OnApplyWindowInsetsListener {
        a(DrawerLayout drawerLayout) {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).a(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    class b extends b.h.o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f1011a = new Rect();

        b() {
        }

        private void a(b.h.o.b0.c cVar, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (DrawerLayout.m(childAt)) {
                    cVar.a(childAt);
                }
            }
        }

        private void a(b.h.o.b0.c cVar, b.h.o.b0.c cVar2) {
            Rect rect = this.f1011a;
            cVar2.a(rect);
            cVar.c(rect);
            cVar2.b(rect);
            cVar.d(rect);
            cVar.n(cVar2.t());
            cVar.e(cVar2.f());
            cVar.a(cVar2.c());
            cVar.b(cVar2.d());
            cVar.g(cVar2.m());
            cVar.d(cVar2.l());
            cVar.h(cVar2.n());
            cVar.i(cVar2.o());
            cVar.a(cVar2.i());
            cVar.l(cVar2.s());
            cVar.j(cVar2.p());
            cVar.a(cVar2.a());
        }

        @Override // b.h.o.a
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View viewD = DrawerLayout.this.d();
            if (viewD == null) {
                return true;
            }
            CharSequence charSequenceD = DrawerLayout.this.d(DrawerLayout.this.e(viewD));
            if (charSequenceD == null) {
                return true;
            }
            text.add(charSequenceD);
            return true;
        }

        @Override // b.h.o.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // b.h.o.a
        public void onInitializeAccessibilityNodeInfo(View view, b.h.o.b0.c cVar) {
            if (DrawerLayout.N) {
                super.onInitializeAccessibilityNodeInfo(view, cVar);
            } else {
                b.h.o.b0.c cVarA = b.h.o.b0.c.a(cVar);
                super.onInitializeAccessibilityNodeInfo(view, cVarA);
                cVar.c(view);
                Object objP = s.p(view);
                if (objP instanceof View) {
                    cVar.b((View) objP);
                }
                a(cVar, cVarA);
                cVarA.u();
                a(cVar, (ViewGroup) view);
            }
            cVar.a((CharSequence) DrawerLayout.class.getName());
            cVar.h(false);
            cVar.i(false);
            cVar.b(c.a.f2568b);
            cVar.b(c.a.f2569c);
        }

        @Override // b.h.o.a
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.N || DrawerLayout.m(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    static final class c extends b.h.o.a {
        c() {
        }

        @Override // b.h.o.a
        public void onInitializeAccessibilityNodeInfo(View view, b.h.o.b0.c cVar) {
            super.onInitializeAccessibilityNodeInfo(view, cVar);
            if (DrawerLayout.m(view)) {
                return;
            }
            cVar.b((View) null);
        }
    }

    public interface d {
        void a(int i2);

        void a(View view);

        void a(View view, float f2);

        void b(View view);
    }

    public static class e extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1013a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f1014b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f1015c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1016d;

        public e(int i2, int i3) {
            super(i2, i3);
            this.f1013a = 0;
        }

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1013a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.M);
            this.f1013a = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1013a = 0;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1013a = 0;
        }

        public e(e eVar) {
            super((ViewGroup.MarginLayoutParams) eVar);
            this.f1013a = 0;
            this.f1013a = eVar.f1013a;
        }
    }

    protected static class f extends b.j.a.a {
        public static final Parcelable.Creator<f> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1017b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1018c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1019d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1020e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1021f;

        static class a implements Parcelable.ClassLoaderCreator<f> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public f createFromParcel(Parcel parcel) {
                return new f(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public f createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new f(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public f[] newArray(int i2) {
                return new f[i2];
            }
        }

        public f(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1017b = 0;
            this.f1017b = parcel.readInt();
            this.f1018c = parcel.readInt();
            this.f1019d = parcel.readInt();
            this.f1020e = parcel.readInt();
            this.f1021f = parcel.readInt();
        }

        public f(Parcelable parcelable) {
            super(parcelable);
            this.f1017b = 0;
        }

        @Override // b.j.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f1017b);
            parcel.writeInt(this.f1018c);
            parcel.writeInt(this.f1019d);
            parcel.writeInt(this.f1020e);
            parcel.writeInt(this.f1021f);
        }
    }

    private class g extends c.AbstractC0113c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f1022a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b.j.b.c f1023b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f1024c = new a();

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.a();
            }
        }

        g(int i2) {
            this.f1022a = i2;
        }

        private void c() {
            View viewB = DrawerLayout.this.b(this.f1022a == 3 ? 5 : 3);
            if (viewB != null) {
                DrawerLayout.this.a(viewB);
            }
        }

        void a() {
            View viewB;
            int width;
            int iC = this.f1023b.c();
            boolean z = this.f1022a == 3;
            if (z) {
                viewB = DrawerLayout.this.b(3);
                width = (viewB != null ? -viewB.getWidth() : 0) + iC;
            } else {
                viewB = DrawerLayout.this.b(5);
                width = DrawerLayout.this.getWidth() - iC;
            }
            if (viewB != null) {
                if (((!z || viewB.getLeft() >= width) && (z || viewB.getLeft() <= width)) || DrawerLayout.this.d(viewB) != 0) {
                    return;
                }
                e eVar = (e) viewB.getLayoutParams();
                this.f1023b.b(viewB, width, viewB.getTop());
                eVar.f1015c = true;
                DrawerLayout.this.invalidate();
                c();
                DrawerLayout.this.a();
            }
        }

        public void a(b.j.b.c cVar) {
            this.f1023b = cVar;
        }

        public void b() {
            DrawerLayout.this.removeCallbacks(this.f1024c);
        }

        @Override // b.j.b.c.AbstractC0113c
        public int clampViewPositionHorizontal(View view, int i2, int i3) {
            int width;
            int width2;
            if (DrawerLayout.this.a(view, 3)) {
                width2 = -view.getWidth();
                width = 0;
            } else {
                width = DrawerLayout.this.getWidth();
                width2 = width - view.getWidth();
            }
            return Math.max(width2, Math.min(i2, width));
        }

        @Override // b.j.b.c.AbstractC0113c
        public int clampViewPositionVertical(View view, int i2, int i3) {
            return view.getTop();
        }

        @Override // b.j.b.c.AbstractC0113c
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.this.i(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // b.j.b.c.AbstractC0113c
        public void onEdgeDragStarted(int i2, int i3) {
            DrawerLayout drawerLayout;
            int i4;
            if ((i2 & 1) == 1) {
                drawerLayout = DrawerLayout.this;
                i4 = 3;
            } else {
                drawerLayout = DrawerLayout.this;
                i4 = 5;
            }
            View viewB = drawerLayout.b(i4);
            if (viewB == null || DrawerLayout.this.d(viewB) != 0) {
                return;
            }
            this.f1023b.a(viewB, i3);
        }

        @Override // b.j.b.c.AbstractC0113c
        public boolean onEdgeLock(int i2) {
            return false;
        }

        @Override // b.j.b.c.AbstractC0113c
        public void onEdgeTouched(int i2, int i3) {
            DrawerLayout.this.postDelayed(this.f1024c, 160L);
        }

        @Override // b.j.b.c.AbstractC0113c
        public void onViewCaptured(View view, int i2) {
            ((e) view.getLayoutParams()).f1015c = false;
            c();
        }

        @Override // b.j.b.c.AbstractC0113c
        public void onViewDragStateChanged(int i2) {
            DrawerLayout.this.a(this.f1022a, i2, this.f1023b.b());
        }

        @Override // b.j.b.c.AbstractC0113c
        public void onViewPositionChanged(View view, int i2, int i3, int i4, int i5) {
            float width = (DrawerLayout.this.a(view, 3) ? i2 + r3 : DrawerLayout.this.getWidth() - i2) / view.getWidth();
            DrawerLayout.this.c(view, width);
            view.setVisibility(width == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // b.j.b.c.AbstractC0113c
        public void onViewReleased(View view, float f2, float f3) {
            int i2;
            float f4 = DrawerLayout.this.f(view);
            int width = view.getWidth();
            if (DrawerLayout.this.a(view, 3)) {
                i2 = (f2 > 0.0f || (f2 == 0.0f && f4 > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f2 < 0.0f || (f2 == 0.0f && f4 > 0.5f)) {
                    width2 -= width;
                }
                i2 = width2;
            }
            this.f1023b.d(i2, view.getTop());
            DrawerLayout.this.invalidate();
        }

        @Override // b.j.b.c.AbstractC0113c
        public boolean tryCaptureView(View view, int i2) {
            return DrawerLayout.this.i(view) && DrawerLayout.this.a(view, this.f1022a) && DrawerLayout.this.d(view) == 0;
        }
    }

    static {
        N = Build.VERSION.SDK_INT >= 19;
        O = Build.VERSION.SDK_INT >= 21;
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1001b = new c();
        this.f1004e = -1728053248;
        this.f1006g = new Paint();
        this.n = true;
        this.o = 3;
        this.p = 3;
        this.q = 3;
        this.r = 3;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        setDescendantFocusability(262144);
        float f2 = getResources().getDisplayMetrics().density;
        this.f1003d = (int) ((64.0f * f2) + 0.5f);
        float f3 = 400.0f * f2;
        this.f1009j = new g(3);
        this.f1010k = new g(5);
        this.f1007h = b.j.b.c.a(this, 1.0f, this.f1009j);
        this.f1007h.d(1);
        this.f1007h.a(f3);
        this.f1009j.a(this.f1007h);
        this.f1008i = b.j.b.c.a(this, 1.0f, this.f1010k);
        this.f1008i.d(2);
        this.f1008i.a(f3);
        this.f1010k.a(this.f1008i);
        setFocusableInTouchMode(true);
        s.f(this, 1);
        s.a(this, new b());
        setMotionEventSplittingEnabled(false);
        if (s.h(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new a(this));
                setSystemUiVisibility(1280);
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(L);
                try {
                    this.x = typedArrayObtainStyledAttributes.getDrawable(0);
                } finally {
                    typedArrayObtainStyledAttributes.recycle();
                }
            } else {
                this.x = null;
            }
        }
        this.f1002c = f2 * 10.0f;
        this.I = new ArrayList<>();
    }

    private boolean a(float f2, float f3, View view) {
        if (this.J == null) {
            this.J = new Rect();
        }
        view.getHitRect(this.J);
        return this.J.contains((int) f2, (int) f3);
    }

    private boolean a(Drawable drawable, int i2) {
        if (drawable == null || !androidx.core.graphics.drawable.a.f(drawable)) {
            return false;
        }
        androidx.core.graphics.drawable.a.a(drawable, i2);
        return true;
    }

    private boolean a(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent motionEventB = b(motionEvent, view);
            boolean zDispatchGenericMotionEvent = view.dispatchGenericMotionEvent(motionEventB);
            motionEventB.recycle();
            return zDispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean zDispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return zDispatchGenericMotionEvent2;
    }

    private MotionEvent b(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.K == null) {
                this.K = new Matrix();
            }
            matrix.invert(this.K);
            motionEventObtain.transform(this.K);
        }
        return motionEventObtain;
    }

    private void c(View view, boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            s.f(childAt, ((z || i(childAt)) && !(z && childAt == view)) ? 4 : 1);
        }
    }

    private boolean e() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (((e) getChildAt(i2).getLayoutParams()).f1015c) {
                return true;
            }
        }
        return false;
    }

    private boolean f() {
        return d() != null;
    }

    private Drawable g() {
        int iK = s.k(this);
        if (iK == 0) {
            Drawable drawable = this.E;
            if (drawable != null) {
                a(drawable, iK);
                return this.E;
            }
        } else {
            Drawable drawable2 = this.F;
            if (drawable2 != null) {
                a(drawable2, iK);
                return this.F;
            }
        }
        return this.G;
    }

    static String g(int i2) {
        return (i2 & 3) == 3 ? "LEFT" : (i2 & 5) == 5 ? "RIGHT" : Integer.toHexString(i2);
    }

    private Drawable h() {
        int iK = s.k(this);
        if (iK == 0) {
            Drawable drawable = this.F;
            if (drawable != null) {
                a(drawable, iK);
                return this.F;
            }
        } else {
            Drawable drawable2 = this.E;
            if (drawable2 != null) {
                a(drawable2, iK);
                return this.E;
            }
        }
        return this.H;
    }

    private void i() {
        if (O) {
            return;
        }
        this.y = g();
        this.z = h();
    }

    private static boolean l(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    static boolean m(View view) {
        return (s.i(view) == 4 || s.i(view) == 2) ? false : true;
    }

    void a() {
        if (this.s) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).dispatchTouchEvent(motionEventObtain);
        }
        motionEventObtain.recycle();
        this.s = true;
    }

    public void a(int i2) {
        a(i2, true);
    }

    public void a(int i2, int i3) {
        View viewB;
        int iA = b.h.o.c.a(i3, s.k(this));
        if (i3 == 3) {
            this.o = i2;
        } else if (i3 == 5) {
            this.p = i2;
        } else if (i3 == 8388611) {
            this.q = i2;
        } else if (i3 == 8388613) {
            this.r = i2;
        }
        if (i2 != 0) {
            (iA == 3 ? this.f1007h : this.f1008i).a();
        }
        if (i2 != 1) {
            if (i2 == 2 && (viewB = b(iA)) != null) {
                k(viewB);
                return;
            }
            return;
        }
        View viewB2 = b(iA);
        if (viewB2 != null) {
            a(viewB2);
        }
    }

    void a(int i2, int i3, View view) {
        int iE = this.f1007h.e();
        int iE2 = this.f1008i.e();
        int i4 = 2;
        if (iE == 1 || iE2 == 1) {
            i4 = 1;
        } else if (iE != 2 && iE2 != 2) {
            i4 = 0;
        }
        if (view != null && i3 == 0) {
            float f2 = ((e) view.getLayoutParams()).f1014b;
            if (f2 == 0.0f) {
                b(view);
            } else if (f2 == 1.0f) {
                c(view);
            }
        }
        if (i4 != this.l) {
            this.l = i4;
            List<d> list = this.u;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.u.get(size).a(i4);
                }
            }
        }
    }

    public void a(int i2, boolean z) {
        View viewB = b(i2);
        if (viewB != null) {
            a(viewB, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + g(i2));
    }

    public void a(View view) {
        a(view, true);
    }

    void a(View view, float f2) {
        List<d> list = this.u;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.u.get(size).a(view, f2);
            }
        }
    }

    public void a(View view, boolean z) {
        b.j.b.c cVar;
        int width;
        if (!i(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        e eVar = (e) view.getLayoutParams();
        if (this.n) {
            eVar.f1014b = 0.0f;
            eVar.f1016d = 0;
        } else if (z) {
            eVar.f1016d |= 4;
            if (a(view, 3)) {
                cVar = this.f1007h;
                width = -view.getWidth();
            } else {
                cVar = this.f1008i;
                width = getWidth();
            }
            cVar.b(view, width, view.getTop());
        } else {
            b(view, 0.0f);
            a(eVar.f1013a, 0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    public void a(d dVar) {
        if (dVar == null) {
            return;
        }
        if (this.u == null) {
            this.u = new ArrayList();
        }
        this.u.add(dVar);
    }

    public void a(Object obj, boolean z) {
        this.C = obj;
        this.D = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    void a(boolean z) {
        int childCount = getChildCount();
        boolean zB = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            e eVar = (e) childAt.getLayoutParams();
            if (i(childAt) && (!z || eVar.f1015c)) {
                zB |= a(childAt, 3) ? this.f1007h.b(childAt, -childAt.getWidth(), childAt.getTop()) : this.f1008i.b(childAt, getWidth(), childAt.getTop());
                eVar.f1015c = false;
            }
        }
        this.f1009j.b();
        this.f1010k.b();
        if (zB) {
            invalidate();
        }
    }

    boolean a(View view, int i2) {
        return (e(view) & i2) == i2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (!i(childAt)) {
                this.I.add(childAt);
            } else if (h(childAt)) {
                childAt.addFocusables(arrayList, i2, i3);
                z = true;
            }
        }
        if (!z) {
            int size = this.I.size();
            for (int i5 = 0; i5 < size; i5++) {
                View view = this.I.get(i5);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i2, i3);
                }
            }
        }
        this.I.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        s.f(view, (c() != null || i(view)) ? 4 : 1);
        if (N) {
            return;
        }
        s.a(view, this.f1001b);
    }

    View b(int i2) {
        int iA = b.h.o.c.a(i2, s.k(this)) & 7;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if ((e(childAt) & 7) == iA) {
                return childAt;
            }
        }
        return null;
    }

    public void b() {
        a(false);
    }

    public void b(int i2, boolean z) {
        View viewB = b(i2);
        if (viewB != null) {
            b(viewB, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + g(i2));
    }

    void b(View view) {
        View rootView;
        e eVar = (e) view.getLayoutParams();
        if ((eVar.f1016d & 1) == 1) {
            eVar.f1016d = 0;
            List<d> list = this.u;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.u.get(size).b(view);
                }
            }
            c(view, false);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    void b(View view, float f2) {
        float f3 = f(view);
        float width = view.getWidth();
        int i2 = ((int) (width * f2)) - ((int) (f3 * width));
        if (!a(view, 3)) {
            i2 = -i2;
        }
        view.offsetLeftAndRight(i2);
        c(view, f2);
    }

    public void b(View view, boolean z) {
        if (!i(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        e eVar = (e) view.getLayoutParams();
        if (this.n) {
            eVar.f1014b = 1.0f;
            eVar.f1016d = 1;
            c(view, true);
        } else if (z) {
            eVar.f1016d |= 2;
            if (a(view, 3)) {
                this.f1007h.b(view, 0, view.getTop());
            } else {
                this.f1008i.b(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            b(view, 1.0f);
            a(eVar.f1013a, 0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    public void b(d dVar) {
        List<d> list;
        if (dVar == null || (list = this.u) == null) {
            return;
        }
        list.remove(dVar);
    }

    public int c(int i2) {
        int iK = s.k(this);
        if (i2 == 3) {
            int i3 = this.o;
            if (i3 != 3) {
                return i3;
            }
            int i4 = iK == 0 ? this.q : this.r;
            if (i4 != 3) {
                return i4;
            }
            return 0;
        }
        if (i2 == 5) {
            int i5 = this.p;
            if (i5 != 3) {
                return i5;
            }
            int i6 = iK == 0 ? this.r : this.q;
            if (i6 != 3) {
                return i6;
            }
            return 0;
        }
        if (i2 == 8388611) {
            int i7 = this.q;
            if (i7 != 3) {
                return i7;
            }
            int i8 = iK == 0 ? this.o : this.p;
            if (i8 != 3) {
                return i8;
            }
            return 0;
        }
        if (i2 != 8388613) {
            return 0;
        }
        int i9 = this.r;
        if (i9 != 3) {
            return i9;
        }
        int i10 = iK == 0 ? this.p : this.o;
        if (i10 != 3) {
            return i10;
        }
        return 0;
    }

    View c() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((((e) childAt.getLayoutParams()).f1016d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    void c(View view) {
        e eVar = (e) view.getLayoutParams();
        if ((eVar.f1016d & 1) == 0) {
            eVar.f1016d = 1;
            List<d> list = this.u;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.u.get(size).a(view);
                }
            }
            c(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    void c(View view, float f2) {
        e eVar = (e) view.getLayoutParams();
        if (f2 == eVar.f1014b) {
            return;
        }
        eVar.f1014b = f2;
        a(view, f2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof e) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            fMax = Math.max(fMax, ((e) getChildAt(i2).getLayoutParams()).f1014b);
        }
        this.f1005f = fMax;
        boolean zA = this.f1007h.a(true);
        boolean zA2 = this.f1008i.a(true);
        if (zA || zA2) {
            s.C(this);
        }
    }

    public int d(View view) {
        if (i(view)) {
            return c(((e) view.getLayoutParams()).f1013a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    View d() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (i(childAt) && j(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    public CharSequence d(int i2) {
        int iA = b.h.o.c.a(i2, s.k(this));
        if (iA == 3) {
            return this.A;
        }
        if (iA == 5) {
            return this.B;
        }
        return null;
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f1005f <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            View childAt = getChildAt(i2);
            if (a(x, y, childAt) && !g(childAt) && a(motionEvent, childAt)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j2) {
        int i2;
        Drawable drawable;
        int height = getHeight();
        boolean zG = g(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i3 = 0;
        if (zG) {
            int childCount = getChildCount();
            i2 = width;
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt != view && childAt.getVisibility() == 0 && l(childAt) && i(childAt) && childAt.getHeight() >= height) {
                    if (a(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i4) {
                            i4 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < i2) {
                            i2 = left;
                        }
                    }
                }
            }
            canvas.clipRect(i4, 0, i2, getHeight());
            i3 = i4;
        } else {
            i2 = width;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j2);
        canvas.restoreToCount(iSave);
        float f2 = this.f1005f;
        if (f2 <= 0.0f || !zG) {
            if (this.y != null && a(view, 3)) {
                int intrinsicWidth = this.y.getIntrinsicWidth();
                int right2 = view.getRight();
                float fMax = Math.max(0.0f, Math.min(right2 / this.f1007h.c(), 1.0f));
                this.y.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
                this.y.setAlpha((int) (fMax * 255.0f));
                drawable = this.y;
            } else if (this.z != null && a(view, 5)) {
                int intrinsicWidth2 = this.z.getIntrinsicWidth();
                int left2 = view.getLeft();
                float fMax2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f1008i.c(), 1.0f));
                this.z.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
                this.z.setAlpha((int) (fMax2 * 255.0f));
                drawable = this.z;
            }
            drawable.draw(canvas);
        } else {
            this.f1006g.setColor((this.f1004e & 16777215) | (((int) ((((-16777216) & r2) >>> 24) * f2)) << 24));
            canvas.drawRect(i3, 0.0f, i2, getHeight(), this.f1006g);
        }
        return zDrawChild;
    }

    int e(View view) {
        return b.h.o.c.a(((e) view.getLayoutParams()).f1013a, s.k(this));
    }

    public boolean e(int i2) {
        View viewB = b(i2);
        if (viewB != null) {
            return h(viewB);
        }
        return false;
    }

    float f(View view) {
        return ((e) view.getLayoutParams()).f1014b;
    }

    public void f(int i2) {
        b(i2, true);
    }

    boolean g(View view) {
        return ((e) view.getLayoutParams()).f1013a == 0;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e ? new e((e) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    public float getDrawerElevation() {
        if (O) {
            return this.f1002c;
        }
        return 0.0f;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.x;
    }

    public boolean h(View view) {
        if (i(view)) {
            return (((e) view.getLayoutParams()).f1016d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    boolean i(View view) {
        int iA = b.h.o.c.a(((e) view.getLayoutParams()).f1013a, s.k(view));
        return ((iA & 3) == 0 && (iA & 5) == 0) ? false : true;
    }

    public boolean j(View view) {
        if (i(view)) {
            return ((e) view.getLayoutParams()).f1014b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public void k(View view) {
        b(view, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.n = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.n = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (!this.D || this.x == null) {
            return;
        }
        int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.C) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
        if (systemWindowInsetTop > 0) {
            this.x.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.x.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getActionMasked()
            b.j.b.c r1 = r6.f1007h
            boolean r1 = r1.b(r7)
            b.j.b.c r2 = r6.f1008i
            boolean r2 = r2.b(r7)
            r1 = r1 | r2
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L38
            if (r0 == r2) goto L31
            r7 = 2
            r4 = 3
            if (r0 == r7) goto L1e
            if (r0 == r4) goto L31
            goto L36
        L1e:
            b.j.b.c r7 = r6.f1007h
            boolean r7 = r7.a(r4)
            if (r7 == 0) goto L36
            androidx.drawerlayout.widget.DrawerLayout$g r7 = r6.f1009j
            r7.b()
            androidx.drawerlayout.widget.DrawerLayout$g r7 = r6.f1010k
            r7.b()
            goto L36
        L31:
            r6.a(r2)
            r6.s = r3
        L36:
            r7 = 0
            goto L60
        L38:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.v = r0
            r6.w = r7
            float r4 = r6.f1005f
            r5 = 0
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L5d
            b.j.b.c r4 = r6.f1007h
            int r0 = (int) r0
            int r7 = (int) r7
            android.view.View r7 = r4.b(r0, r7)
            if (r7 == 0) goto L5d
            boolean r7 = r6.g(r7)
            if (r7 == 0) goto L5d
            r7 = 1
            goto L5e
        L5d:
            r7 = 0
        L5e:
            r6.s = r3
        L60:
            if (r1 != 0) goto L70
            if (r7 != 0) goto L70
            boolean r7 = r6.e()
            if (r7 != 0) goto L70
            boolean r7 = r6.s
            if (r7 == 0) goto L6f
            goto L70
        L6f:
            r2 = 0
        L70:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 4 || !f()) {
            return super.onKeyDown(i2, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        View viewD = d();
        if (viewD != null && d(viewD) == 0) {
            b();
        }
        return viewD != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        float f2;
        int i6;
        int measuredHeight;
        int i7;
        int i8;
        this.m = true;
        int i9 = i4 - i2;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (g(childAt)) {
                    int i11 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
                    childAt.layout(i11, ((ViewGroup.MarginLayoutParams) eVar).topMargin, childAt.getMeasuredWidth() + i11, ((ViewGroup.MarginLayoutParams) eVar).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight2 = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        float f3 = measuredWidth;
                        i6 = (-measuredWidth) + ((int) (eVar.f1014b * f3));
                        f2 = (measuredWidth + i6) / f3;
                    } else {
                        float f4 = measuredWidth;
                        f2 = (i9 - r11) / f4;
                        i6 = i9 - ((int) (eVar.f1014b * f4));
                    }
                    boolean z2 = f2 != eVar.f1014b;
                    int i12 = eVar.f1013a & com.google.android.material.R.styleable.AppCompatTheme_windowActionBarOverlay;
                    if (i12 != 16) {
                        if (i12 != 80) {
                            measuredHeight = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                            i7 = measuredWidth + i6;
                            i8 = measuredHeight2 + measuredHeight;
                        } else {
                            int i13 = i5 - i3;
                            measuredHeight = (i13 - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) - childAt.getMeasuredHeight();
                            i7 = measuredWidth + i6;
                            i8 = i13 - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                        }
                        childAt.layout(i6, measuredHeight, i7, i8);
                    } else {
                        int i14 = i5 - i3;
                        int i15 = (i14 - measuredHeight2) / 2;
                        int i16 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                        if (i15 < i16) {
                            i15 = i16;
                        } else {
                            int i17 = i15 + measuredHeight2;
                            int i18 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                            if (i17 > i14 - i18) {
                                i15 = (i14 - i18) - measuredHeight2;
                            }
                        }
                        childAt.layout(i6, i15, measuredWidth + i6, measuredHeight2 + i15);
                    }
                    if (z2) {
                        c(childAt, f2);
                    }
                    int i19 = eVar.f1014b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i19) {
                        childAt.setVisibility(i19);
                    }
                }
            }
        }
        this.m = false;
        this.n = false;
    }

    @Override // android.view.View
    @SuppressLint({"WrongConstant"})
    protected void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
            if (mode2 != Integer.MIN_VALUE && mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        int i4 = 0;
        boolean z = this.C != null && s.h(this);
        int iK = s.k(this);
        int childCount = getChildCount();
        int i5 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (z) {
                    int iA = b.h.o.c.a(eVar.f1013a, iK);
                    boolean zH = s.h(childAt);
                    int i6 = Build.VERSION.SDK_INT;
                    if (zH) {
                        if (i6 >= 21) {
                            WindowInsets windowInsetsReplaceSystemWindowInsets = (WindowInsets) this.C;
                            if (iA == 3) {
                                windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), i4, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                            } else if (iA == 5) {
                                windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(i4, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                            }
                            childAt.dispatchApplyWindowInsets(windowInsetsReplaceSystemWindowInsets);
                        }
                    } else if (i6 >= 21) {
                        WindowInsets windowInsetsReplaceSystemWindowInsets2 = (WindowInsets) this.C;
                        if (iA == 3) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), i4, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        } else if (iA == 5) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(i4, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) eVar).leftMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) eVar).topMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) eVar).rightMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (g(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) eVar).leftMargin) - ((ViewGroup.MarginLayoutParams) eVar).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) eVar).topMargin) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin, 1073741824));
                } else {
                    if (!i(childAt)) {
                        throw new IllegalStateException("Child " + childAt + " at index " + i5 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    if (O) {
                        float fG = s.g(childAt);
                        float f2 = this.f1002c;
                        if (fG != f2) {
                            s.a(childAt, f2);
                        }
                    }
                    int iE = e(childAt) & 7;
                    boolean z4 = iE == 3;
                    if ((z4 && z2) || (!z4 && z3)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + g(iE) + " but this DrawerLayout already has a drawer view along that edge");
                    }
                    if (z4) {
                        z2 = true;
                    } else {
                        z3 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i2, this.f1003d + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin, ((ViewGroup.MarginLayoutParams) eVar).width), ViewGroup.getChildMeasureSpec(i3, ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin, ((ViewGroup.MarginLayoutParams) eVar).height));
                }
            }
            i5++;
            i4 = 0;
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View viewB;
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        int i2 = fVar.f1017b;
        if (i2 != 0 && (viewB = b(i2)) != null) {
            k(viewB);
        }
        int i3 = fVar.f1018c;
        if (i3 != 3) {
            a(i3, 3);
        }
        int i4 = fVar.f1019d;
        if (i4 != 3) {
            a(i4, 5);
        }
        int i5 = fVar.f1020e;
        if (i5 != 3) {
            a(i5, 8388611);
        }
        int i6 = fVar.f1021f;
        if (i6 != 3) {
            a(i6, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        i();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            e eVar = (e) getChildAt(i2).getLayoutParams();
            boolean z = eVar.f1016d == 1;
            boolean z2 = eVar.f1016d == 2;
            if (z || z2) {
                fVar.f1017b = eVar.f1013a;
                break;
            }
        }
        fVar.f1018c = this.o;
        fVar.f1019d = this.p;
        fVar.f1020e = this.q;
        fVar.f1021f = this.r;
        return fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            b.j.b.c r0 = r6.f1007h
            r0.a(r7)
            b.j.b.c r0 = r6.f1008i
            r0.a(r7)
            int r0 = r7.getAction()
            r0 = r0 & 255(0xff, float:3.57E-43)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L60
            if (r0 == r2) goto L1e
            r7 = 3
            if (r0 == r7) goto L1a
            goto L6e
        L1a:
            r6.a(r2)
            goto L6c
        L1e:
            float r0 = r7.getX()
            float r7 = r7.getY()
            b.j.b.c r3 = r6.f1007h
            int r4 = (int) r0
            int r5 = (int) r7
            android.view.View r3 = r3.b(r4, r5)
            if (r3 == 0) goto L5b
            boolean r3 = r6.g(r3)
            if (r3 == 0) goto L5b
            float r3 = r6.v
            float r0 = r0 - r3
            float r3 = r6.w
            float r7 = r7 - r3
            b.j.b.c r3 = r6.f1007h
            int r3 = r3.d()
            float r0 = r0 * r0
            float r7 = r7 * r7
            float r0 = r0 + r7
            int r3 = r3 * r3
            float r7 = (float) r3
            int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r7 >= 0) goto L5b
            android.view.View r7 = r6.c()
            if (r7 == 0) goto L5b
            int r7 = r6.d(r7)
            r0 = 2
            if (r7 != r0) goto L5c
        L5b:
            r1 = 1
        L5c:
            r6.a(r1)
            goto L6e
        L60:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.v = r0
            r6.w = r7
        L6c:
            r6.s = r1
        L6e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            a(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.m) {
            return;
        }
        super.requestLayout();
    }

    public void setDrawerElevation(float f2) {
        this.f1002c = f2;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (i(childAt)) {
                s.a(childAt, this.f1002c);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(d dVar) {
        d dVar2 = this.t;
        if (dVar2 != null) {
            b(dVar2);
        }
        if (dVar != null) {
            a(dVar);
        }
        this.t = dVar;
    }

    public void setDrawerLockMode(int i2) {
        a(i2, 3);
        a(i2, 5);
    }

    public void setScrimColor(int i2) {
        this.f1004e = i2;
        invalidate();
    }

    public void setStatusBarBackground(int i2) {
        this.x = i2 != 0 ? androidx.core.content.a.c(getContext(), i2) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.x = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i2) {
        this.x = new ColorDrawable(i2);
        invalidate();
    }
}
