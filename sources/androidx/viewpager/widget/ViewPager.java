package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import b.h.o.a0;
import b.h.o.o;
import b.h.o.s;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    static final int[] g0 = {R.attr.layout_gravity};
    private static final Comparator<f> h0 = new a();
    private static final Interpolator i0 = new b();
    private static final n j0 = new n();
    private int A;
    private int B;
    private int C;
    private float D;
    private float E;
    private float F;
    private float G;
    private int H;
    private VelocityTracker I;
    private int J;
    private int K;
    private int L;
    private int M;
    private boolean N;
    private EdgeEffect O;
    private EdgeEffect P;
    private boolean Q;
    private boolean R;
    private int S;
    private List<j> T;
    private j U;
    private j V;
    private List<i> W;
    private k a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1426b;
    private int b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<f> f1427c;
    private int c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f1428d;
    private ArrayList<View> d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f1429e;
    private final Runnable e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    androidx.viewpager.widget.a f1430f;
    private int f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f1431g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1432h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Parcelable f1433i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ClassLoader f1434j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Scroller f1435k;
    private boolean l;
    private l m;
    private int n;
    private Drawable o;
    private int p;
    private int q;
    private float r;
    private float s;
    private int t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private boolean y;
    private boolean z;

    static class a implements Comparator<f> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(f fVar, f fVar2) {
            return fVar.f1440b - fVar2.f1440b;
        }
    }

    static class b implements Interpolator {
        b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.e();
        }
    }

    class d implements o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f1437a = new Rect();

        d() {
        }

        @Override // b.h.o.o
        public a0 onApplyWindowInsets(View view, a0 a0Var) {
            a0 a0VarB = s.b(view, a0Var);
            if (a0VarB.g()) {
                return a0VarB;
            }
            Rect rect = this.f1437a;
            rect.left = a0VarB.c();
            rect.top = a0VarB.e();
            rect.right = a0VarB.d();
            rect.bottom = a0VarB.b();
            int childCount = ViewPager.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                a0 a0VarA = s.a(ViewPager.this.getChildAt(i2), a0VarB);
                rect.left = Math.min(a0VarA.c(), rect.left);
                rect.top = Math.min(a0VarA.e(), rect.top);
                rect.right = Math.min(a0VarA.d(), rect.right);
                rect.bottom = Math.min(a0VarA.b(), rect.bottom);
            }
            return a0VarB.a(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface e {
    }

    static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f1439a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1440b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f1441c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f1442d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f1443e;

        f() {
        }
    }

    public static class g extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1444a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1445b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f1446c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1447d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1448e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1449f;

        public g() {
            super(-1, -1);
            this.f1446c = 0.0f;
        }

        public g(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1446c = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.g0);
            this.f1445b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    class h extends b.h.o.a {
        h() {
        }

        private boolean a() {
            androidx.viewpager.widget.a aVar = ViewPager.this.f1430f;
            return aVar != null && aVar.a() > 1;
        }

        @Override // b.h.o.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            androidx.viewpager.widget.a aVar;
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(a());
            if (accessibilityEvent.getEventType() != 4096 || (aVar = ViewPager.this.f1430f) == null) {
                return;
            }
            accessibilityEvent.setItemCount(aVar.a());
            accessibilityEvent.setFromIndex(ViewPager.this.f1431g);
            accessibilityEvent.setToIndex(ViewPager.this.f1431g);
        }

        @Override // b.h.o.a
        public void onInitializeAccessibilityNodeInfo(View view, b.h.o.b0.c cVar) {
            super.onInitializeAccessibilityNodeInfo(view, cVar);
            cVar.a((CharSequence) ViewPager.class.getName());
            cVar.k(a());
            if (ViewPager.this.canScrollHorizontally(1)) {
                cVar.a(MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                cVar.a(8192);
            }
        }

        @Override // b.h.o.a
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            ViewPager viewPager;
            int i3;
            if (super.performAccessibilityAction(view, i2, bundle)) {
                return true;
            }
            if (i2 != 4096) {
                if (i2 != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                    return false;
                }
                viewPager = ViewPager.this;
                i3 = viewPager.f1431g - 1;
            } else {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                viewPager = ViewPager.this;
                i3 = viewPager.f1431g + 1;
            }
            viewPager.setCurrentItem(i3);
            return true;
        }
    }

    public interface i {
        void onAdapterChanged(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2);
    }

    public interface j {
        void onPageScrollStateChanged(int i2);

        void onPageScrolled(int i2, float f2, int i3);

        void onPageSelected(int i2);
    }

    public interface k {
        void a(View view, float f2);
    }

    private class l extends DataSetObserver {
        l() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.a();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.a();
        }
    }

    public static class m extends b.j.a.a {
        public static final Parcelable.Creator<m> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Parcelable f1453c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ClassLoader f1454d;

        static class a implements Parcelable.ClassLoaderCreator<m> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public m createFromParcel(Parcel parcel) {
                return new m(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public m createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new m(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public m[] newArray(int i2) {
                return new m[i2];
            }
        }

        m(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? m.class.getClassLoader() : classLoader;
            this.f1452b = parcel.readInt();
            this.f1453c = parcel.readParcelable(classLoader);
            this.f1454d = classLoader;
        }

        public m(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f1452b + "}";
        }

        @Override // b.j.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f1452b);
            parcel.writeParcelable(this.f1453c, i2);
        }
    }

    static class n implements Comparator<View> {
        n() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            g gVar = (g) view.getLayoutParams();
            g gVar2 = (g) view2.getLayoutParams();
            boolean z = gVar.f1444a;
            return z != gVar2.f1444a ? z ? 1 : -1 : gVar.f1448e - gVar2.f1448e;
        }
    }

    public ViewPager(Context context) {
        super(context);
        this.f1427c = new ArrayList<>();
        this.f1428d = new f();
        this.f1429e = new Rect();
        this.f1432h = -1;
        this.f1433i = null;
        this.f1434j = null;
        this.r = -3.4028235E38f;
        this.s = Float.MAX_VALUE;
        this.x = 1;
        this.H = -1;
        this.Q = true;
        this.e0 = new c();
        this.f0 = 0;
        b();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1427c = new ArrayList<>();
        this.f1428d = new f();
        this.f1429e = new Rect();
        this.f1432h = -1;
        this.f1433i = null;
        this.f1434j = null;
        this.r = -3.4028235E38f;
        this.s = Float.MAX_VALUE;
        this.x = 1;
        this.H = -1;
        this.Q = true;
        this.e0 = new c();
        this.f0 = 0;
        b();
    }

    private int a(int i2, float f2, int i3, int i4) {
        if (Math.abs(i4) <= this.L || Math.abs(i3) <= this.J) {
            i2 += (int) (f2 + (i2 >= this.f1431g ? 0.4f : 0.6f));
        } else if (i3 <= 0) {
            i2++;
        }
        if (this.f1427c.size() <= 0) {
            return i2;
        }
        return Math.max(this.f1427c.get(0).f1440b, Math.min(i2, this.f1427c.get(r4.size() - 1).f1440b));
    }

    private Rect a(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    private void a(int i2, int i3, int i4, int i5) {
        int iMin;
        if (i3 <= 0 || this.f1427c.isEmpty()) {
            f fVarB = b(this.f1431g);
            iMin = (int) ((fVarB != null ? Math.min(fVarB.f1443e, this.s) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
            if (iMin == getScrollX()) {
                return;
            } else {
                a(false);
            }
        } else if (!this.f1435k.isFinished()) {
            this.f1435k.setFinalX(getCurrentItem() * getClientWidth());
            return;
        } else {
            iMin = (int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - getPaddingLeft()) - getPaddingRight()) + i4));
        }
        scrollTo(iMin, getScrollY());
    }

    private void a(int i2, boolean z, int i3, boolean z2) {
        f fVarB = b(i2);
        int clientWidth = fVarB != null ? (int) (getClientWidth() * Math.max(this.r, Math.min(fVarB.f1443e, this.s))) : 0;
        if (z) {
            a(clientWidth, 0, i3);
            if (z2) {
                d(i2);
                return;
            }
            return;
        }
        if (z2) {
            d(i2);
        }
        a(false);
        scrollTo(clientWidth, 0);
        f(clientWidth);
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.H) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.D = motionEvent.getX(i2);
            this.H = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.I;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void a(f fVar, int i2, f fVar2) {
        int i3;
        int i4;
        f fVar3;
        f fVar4;
        int iA = this.f1430f.a();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? this.n / clientWidth : 0.0f;
        if (fVar2 != null) {
            int i5 = fVar2.f1440b;
            int i6 = fVar.f1440b;
            if (i5 < i6) {
                int i7 = 0;
                float fB = fVar2.f1443e + fVar2.f1442d + f2;
                while (true) {
                    i5++;
                    if (i5 > fVar.f1440b || i7 >= this.f1427c.size()) {
                        break;
                    }
                    while (true) {
                        fVar4 = this.f1427c.get(i7);
                        if (i5 <= fVar4.f1440b || i7 >= this.f1427c.size() - 1) {
                            break;
                        } else {
                            i7++;
                        }
                    }
                    while (i5 < fVar4.f1440b) {
                        fB += this.f1430f.b(i5) + f2;
                        i5++;
                    }
                    fVar4.f1443e = fB;
                    fB += fVar4.f1442d + f2;
                }
            } else if (i5 > i6) {
                int size = this.f1427c.size() - 1;
                float fB2 = fVar2.f1443e;
                while (true) {
                    i5--;
                    if (i5 < fVar.f1440b || size < 0) {
                        break;
                    }
                    while (true) {
                        fVar3 = this.f1427c.get(size);
                        if (i5 >= fVar3.f1440b || size <= 0) {
                            break;
                        } else {
                            size--;
                        }
                    }
                    while (i5 > fVar3.f1440b) {
                        fB2 -= this.f1430f.b(i5) + f2;
                        i5--;
                    }
                    fB2 -= fVar3.f1442d + f2;
                    fVar3.f1443e = fB2;
                }
            }
        }
        int size2 = this.f1427c.size();
        float fB3 = fVar.f1443e;
        int i8 = fVar.f1440b;
        int i9 = i8 - 1;
        this.r = i8 == 0 ? fB3 : -3.4028235E38f;
        int i10 = iA - 1;
        this.s = fVar.f1440b == i10 ? (fVar.f1443e + fVar.f1442d) - 1.0f : Float.MAX_VALUE;
        int i11 = i2 - 1;
        while (i11 >= 0) {
            f fVar5 = this.f1427c.get(i11);
            while (true) {
                i4 = fVar5.f1440b;
                if (i9 <= i4) {
                    break;
                }
                fB3 -= this.f1430f.b(i9) + f2;
                i9--;
            }
            fB3 -= fVar5.f1442d + f2;
            fVar5.f1443e = fB3;
            if (i4 == 0) {
                this.r = fB3;
            }
            i11--;
            i9--;
        }
        float fB4 = fVar.f1443e + fVar.f1442d + f2;
        int i12 = fVar.f1440b + 1;
        int i13 = i2 + 1;
        while (i13 < size2) {
            f fVar6 = this.f1427c.get(i13);
            while (true) {
                i3 = fVar6.f1440b;
                if (i12 >= i3) {
                    break;
                }
                fB4 += this.f1430f.b(i12) + f2;
                i12++;
            }
            if (i3 == i10) {
                this.s = (fVar6.f1442d + fB4) - 1.0f;
            }
            fVar6.f1443e = fB4;
            fB4 += fVar6.f1442d + f2;
            i13++;
            i12++;
        }
    }

    private void a(boolean z) {
        boolean z2 = this.f0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f1435k.isFinished()) {
                this.f1435k.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f1435k.getCurrX();
                int currY = this.f1435k.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        f(currX);
                    }
                }
            }
        }
        this.w = false;
        boolean z3 = z2;
        for (int i2 = 0; i2 < this.f1427c.size(); i2++) {
            f fVar = this.f1427c.get(i2);
            if (fVar.f1441c) {
                fVar.f1441c = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                s.a(this, this.e0);
            } else {
                this.e0.run();
            }
        }
    }

    private boolean a(float f2, float f3) {
        return (f2 < ((float) this.B) && f3 > 0.0f) || (f2 > ((float) (getWidth() - this.B)) && f3 < 0.0f);
    }

    private void b(int i2, float f2, int i3) {
        j jVar = this.U;
        if (jVar != null) {
            jVar.onPageScrolled(i2, f2, i3);
        }
        List<j> list = this.T;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                j jVar2 = this.T.get(i4);
                if (jVar2 != null) {
                    jVar2.onPageScrolled(i2, f2, i3);
                }
            }
        }
        j jVar3 = this.V;
        if (jVar3 != null) {
            jVar3.onPageScrolled(i2, f2, i3);
        }
    }

    private void b(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).setLayerType(z ? this.b0 : 0, null);
        }
    }

    private boolean b(float f2) {
        boolean z;
        boolean z2;
        float f3 = this.D - f2;
        this.D = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.r * clientWidth;
        float f5 = this.s * clientWidth;
        boolean z3 = false;
        f fVar = this.f1427c.get(0);
        ArrayList<f> arrayList = this.f1427c;
        f fVar2 = arrayList.get(arrayList.size() - 1);
        if (fVar.f1440b != 0) {
            f4 = fVar.f1443e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (fVar2.f1440b != this.f1430f.a() - 1) {
            f5 = fVar2.f1443e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f4) {
            if (z) {
                this.O.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z2) {
                this.P.onPull(Math.abs(scrollX - f5) / clientWidth);
                z3 = true;
            }
            scrollX = f5;
        }
        int i2 = (int) scrollX;
        this.D += scrollX - i2;
        scrollTo(i2, getScrollY());
        f(i2);
        return z3;
    }

    private void c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private static boolean c(View view) {
        return view.getClass().getAnnotation(e.class) != null;
    }

    private void d(int i2) {
        j jVar = this.U;
        if (jVar != null) {
            jVar.onPageSelected(i2);
        }
        List<j> list = this.T;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                j jVar2 = this.T.get(i3);
                if (jVar2 != null) {
                    jVar2.onPageSelected(i2);
                }
            }
        }
        j jVar3 = this.V;
        if (jVar3 != null) {
            jVar3.onPageSelected(i2);
        }
    }

    private void e(int i2) {
        j jVar = this.U;
        if (jVar != null) {
            jVar.onPageScrollStateChanged(i2);
        }
        List<j> list = this.T;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                j jVar2 = this.T.get(i3);
                if (jVar2 != null) {
                    jVar2.onPageScrollStateChanged(i2);
                }
            }
        }
        j jVar3 = this.V;
        if (jVar3 != null) {
            jVar3.onPageScrollStateChanged(i2);
        }
    }

    private void f() {
        this.y = false;
        this.z = false;
        VelocityTracker velocityTracker = this.I;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.I = null;
        }
    }

    private boolean f(int i2) {
        if (this.f1427c.size() == 0) {
            if (this.Q) {
                return false;
            }
            this.R = false;
            a(0, 0.0f, 0);
            if (this.R) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        f fVarG = g();
        int clientWidth = getClientWidth();
        int i3 = this.n;
        int i4 = clientWidth + i3;
        float f2 = clientWidth;
        int i5 = fVarG.f1440b;
        float f3 = ((i2 / f2) - fVarG.f1443e) / (fVarG.f1442d + (i3 / f2));
        this.R = false;
        a(i5, f3, (int) (i4 * f3));
        if (this.R) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private f g() {
        int i2;
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.n / clientWidth : 0.0f;
        f fVar = null;
        int i3 = 0;
        boolean z = true;
        int i4 = -1;
        float f3 = 0.0f;
        float f4 = 0.0f;
        while (i3 < this.f1427c.size()) {
            f fVar2 = this.f1427c.get(i3);
            if (!z && fVar2.f1440b != (i2 = i4 + 1)) {
                fVar2 = this.f1428d;
                fVar2.f1443e = f3 + f4 + f2;
                fVar2.f1440b = i2;
                fVar2.f1442d = this.f1430f.b(fVar2.f1440b);
                i3--;
            }
            f3 = fVar2.f1443e;
            float f5 = fVar2.f1442d + f3 + f2;
            if (!z && scrollX < f3) {
                return fVar;
            }
            if (scrollX < f5 || i3 == this.f1427c.size() - 1) {
                return fVar2;
            }
            i4 = fVar2.f1440b;
            f4 = fVar2.f1442d;
            i3++;
            fVar = fVar2;
            z = false;
        }
        return fVar;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void h() {
        int i2 = 0;
        while (i2 < getChildCount()) {
            if (!((g) getChildAt(i2).getLayoutParams()).f1444a) {
                removeViewAt(i2);
                i2--;
            }
            i2++;
        }
    }

    private boolean i() {
        this.H = -1;
        f();
        this.O.onRelease();
        this.P.onRelease();
        return this.O.isFinished() || this.P.isFinished();
    }

    private void j() {
        if (this.c0 != 0) {
            ArrayList<View> arrayList = this.d0;
            if (arrayList == null) {
                this.d0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.d0.add(getChildAt(i2));
            }
            Collections.sort(this.d0, j0);
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.v != z) {
            this.v = z;
        }
    }

    float a(float f2) {
        return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
    }

    f a(int i2, int i3) {
        f fVar = new f();
        fVar.f1440b = i2;
        fVar.f1439a = this.f1430f.a(this, i2);
        fVar.f1442d = this.f1430f.b(i2);
        if (i3 < 0 || i3 >= this.f1427c.size()) {
            this.f1427c.add(fVar);
        } else {
            this.f1427c.add(i3, fVar);
        }
        return fVar;
    }

    f a(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return b(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    void a() {
        int iA = this.f1430f.a();
        this.f1426b = iA;
        boolean z = this.f1427c.size() < (this.x * 2) + 1 && this.f1427c.size() < iA;
        int iMax = this.f1431g;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < this.f1427c.size()) {
            f fVar = this.f1427c.get(i2);
            int iA2 = this.f1430f.a(fVar.f1439a);
            if (iA2 != -1) {
                if (iA2 == -2) {
                    this.f1427c.remove(i2);
                    i2--;
                    if (!z2) {
                        this.f1430f.b((ViewGroup) this);
                        z2 = true;
                    }
                    this.f1430f.a((ViewGroup) this, fVar.f1440b, fVar.f1439a);
                    int i3 = this.f1431g;
                    if (i3 == fVar.f1440b) {
                        iMax = Math.max(0, Math.min(i3, iA - 1));
                    }
                } else {
                    int i4 = fVar.f1440b;
                    if (i4 != iA2) {
                        if (i4 == this.f1431g) {
                            iMax = iA2;
                        }
                        fVar.f1440b = iA2;
                    }
                }
                z = true;
            }
            i2++;
        }
        if (z2) {
            this.f1430f.a((ViewGroup) this);
        }
        Collections.sort(this.f1427c, h0);
        if (z) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                g gVar = (g) getChildAt(i5).getLayoutParams();
                if (!gVar.f1444a) {
                    gVar.f1446c = 0.0f;
                }
            }
            a(iMax, false, true);
            requestLayout();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void a(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.S
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6d
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = r4
            r4 = r3
            r3 = 0
        L1d:
            if (r3 >= r6) goto L6d
            android.view.View r8 = r12.getChildAt(r3)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            androidx.viewpager.widget.ViewPager$g r9 = (androidx.viewpager.widget.ViewPager.g) r9
            boolean r10 = r9.f1444a
            if (r10 != 0) goto L2e
            goto L6a
        L2e:
            int r9 = r9.f1445b
            r9 = r9 & 7
            if (r9 == r2) goto L4f
            r10 = 3
            if (r9 == r10) goto L49
            r10 = 5
            if (r9 == r10) goto L3c
            r9 = r4
            goto L5e
        L3c:
            int r9 = r5 - r7
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r7 = r7 + r10
            goto L5b
        L49:
            int r9 = r8.getWidth()
            int r9 = r9 + r4
            goto L5e
        L4f:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r4)
        L5b:
            r11 = r9
            r9 = r4
            r4 = r11
        L5e:
            int r4 = r4 + r0
            int r10 = r8.getLeft()
            int r4 = r4 - r10
            if (r4 == 0) goto L69
            r8.offsetLeftAndRight(r4)
        L69:
            r4 = r9
        L6a:
            int r3 = r3 + 1
            goto L1d
        L6d:
            r12.b(r13, r14, r15)
            androidx.viewpager.widget.ViewPager$k r13 = r12.a0
            if (r13 == 0) goto La1
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        L7c:
            if (r1 >= r14) goto La1
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            androidx.viewpager.widget.ViewPager$g r0 = (androidx.viewpager.widget.ViewPager.g) r0
            boolean r0 = r0.f1444a
            if (r0 == 0) goto L8d
            goto L9e
        L8d:
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.getClientWidth()
            float r3 = (float) r3
            float r0 = r0 / r3
            androidx.viewpager.widget.ViewPager$k r3 = r12.a0
            r3.a(r15, r0)
        L9e:
            int r1 = r1 + 1
            goto L7c
        La1:
            r12.R = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.a(int, float, int):void");
    }

    void a(int i2, int i3, int i4) {
        int scrollX;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f1435k;
        if ((scroller == null || scroller.isFinished()) ? false : true) {
            scrollX = this.l ? this.f1435k.getCurrX() : this.f1435k.getStartX();
            this.f1435k.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i5 = scrollX;
        int scrollY = getScrollY();
        int i6 = i2 - i5;
        int i7 = i3 - scrollY;
        if (i6 == 0 && i7 == 0) {
            a(false);
            e();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i8 = clientWidth / 2;
        float f2 = clientWidth;
        float f3 = i8;
        float fA = f3 + (a(Math.min(1.0f, (Math.abs(i6) * 1.0f) / f2)) * f3);
        int iAbs = Math.abs(i4);
        int iMin = Math.min(iAbs > 0 ? Math.round(Math.abs(fA / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i6) / ((f2 * this.f1430f.b(this.f1431g)) + this.n)) + 1.0f) * 100.0f), 600);
        this.l = false;
        this.f1435k.startScroll(i5, scrollY, i6, i7, iMin);
        s.C(this);
    }

    public void a(int i2, boolean z) {
        this.w = false;
        a(i2, z, false);
    }

    void a(int i2, boolean z, boolean z2) {
        a(i2, z, z2, 0);
    }

    void a(int i2, boolean z, boolean z2, int i3) {
        androidx.viewpager.widget.a aVar = this.f1430f;
        if (aVar == null || aVar.a() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.f1431g == i2 && this.f1427c.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 >= this.f1430f.a()) {
            i2 = this.f1430f.a() - 1;
        }
        int i4 = this.x;
        int i5 = this.f1431g;
        if (i2 > i5 + i4 || i2 < i5 - i4) {
            for (int i6 = 0; i6 < this.f1427c.size(); i6++) {
                this.f1427c.get(i6).f1441c = true;
            }
        }
        boolean z3 = this.f1431g != i2;
        if (!this.Q) {
            c(i2);
            a(i2, z, i3, z3);
        } else {
            this.f1431g = i2;
            if (z3) {
                d(i2);
            }
            requestLayout();
        }
    }

    public void a(i iVar) {
        if (this.W == null) {
            this.W = new ArrayList();
        }
        this.W.add(iVar);
    }

    public void a(j jVar) {
        if (this.T == null) {
            this.T = new ArrayList();
        }
        this.T.add(jVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(int r7) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.a(int):boolean");
    }

    public boolean a(KeyEvent keyEvent) {
        int i2;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 21) {
                if (keyCode != 22) {
                    if (keyCode == 61) {
                        if (keyEvent.hasNoModifiers()) {
                            return a(2);
                        }
                        if (keyEvent.hasModifiers(1)) {
                            return a(1);
                        }
                    }
                } else {
                    if (keyEvent.hasModifiers(2)) {
                        return d();
                    }
                    i2 = 66;
                }
            } else {
                if (keyEvent.hasModifiers(2)) {
                    return c();
                }
                i2 = 17;
            }
            return a(i2);
        }
        return false;
    }

    protected boolean a(View view, boolean z, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && a(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        f fVarB;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (fVarB = b(childAt)) != null && fVarB.f1440b == this.f1431g) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        f fVarB;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (fVarB = b(childAt)) != null && fVarB.f1440b == this.f1431g) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        g gVar = (g) layoutParams;
        gVar.f1444a |= c(view);
        if (!this.u) {
            super.addView(view, i2, layoutParams);
        } else {
            if (gVar != null && gVar.f1444a) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            gVar.f1447d = true;
            addViewInLayout(view, i2, layoutParams);
        }
    }

    f b(int i2) {
        for (int i3 = 0; i3 < this.f1427c.size(); i3++) {
            f fVar = this.f1427c.get(i3);
            if (fVar.f1440b == i2) {
                return fVar;
            }
        }
        return null;
    }

    f b(View view) {
        for (int i2 = 0; i2 < this.f1427c.size(); i2++) {
            f fVar = this.f1427c.get(i2);
            if (this.f1430f.a(view, fVar.f1439a)) {
                return fVar;
            }
        }
        return null;
    }

    void b() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f1435k = new Scroller(context, i0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.C = viewConfiguration.getScaledPagingTouchSlop();
        this.J = (int) (400.0f * f2);
        this.K = viewConfiguration.getScaledMaximumFlingVelocity();
        this.O = new EdgeEffect(context);
        this.P = new EdgeEffect(context);
        this.L = (int) (25.0f * f2);
        this.M = (int) (2.0f * f2);
        this.A = (int) (f2 * 16.0f);
        s.a(this, new h());
        if (s.i(this) == 0) {
            s.f(this, 1);
        }
        s.a(this, new d());
    }

    public void b(i iVar) {
        List<i> list = this.W;
        if (list != null) {
            list.remove(iVar);
        }
    }

    public void b(j jVar) {
        List<j> list = this.T;
        if (list != null) {
            list.remove(jVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0066, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e1 A[PHI: r7 r10 r15
      0x00e1: PHI (r7v14 float) = (r7v12 float), (r7v13 float), (r7v5 float) binds: [B:62:0x00df, B:59:0x00d1, B:53:0x00c3] A[DONT_GENERATE, DONT_INLINE]
      0x00e1: PHI (r10v4 int) = (r10v3 int), (r10v2 int), (r10v8 int) binds: [B:62:0x00df, B:59:0x00d1, B:53:0x00c3] A[DONT_GENERATE, DONT_INLINE]
      0x00e1: PHI (r15v6 int) = (r15v4 int), (r15v5 int), (r15v10 int) binds: [B:62:0x00df, B:59:0x00d1, B:53:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ea A[PHI: r7 r10 r15
      0x00ea: PHI (r7v17 float) = (r7v12 float), (r7v13 float), (r7v5 float) binds: [B:62:0x00df, B:59:0x00d1, B:53:0x00c3] A[DONT_GENERATE, DONT_INLINE]
      0x00ea: PHI (r10v7 int) = (r10v3 int), (r10v2 int), (r10v8 int) binds: [B:62:0x00df, B:59:0x00d1, B:53:0x00c3] A[DONT_GENERATE, DONT_INLINE]
      0x00ea: PHI (r15v9 int) = (r15v4 int), (r15v5 int), (r15v10 int) binds: [B:62:0x00df, B:59:0x00d1, B:53:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void c(int r18) {
        /*
            Method dump skipped, instruction units count: 586
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.c(int):void");
    }

    boolean c() {
        int i2 = this.f1431g;
        if (i2 <= 0) {
            return false;
        }
        a(i2 - 1, true);
        return true;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        if (this.f1430f == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i2 < 0 ? scrollX > ((int) (((float) clientWidth) * this.r)) : i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.s));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof g) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.l = true;
        if (this.f1435k.isFinished() || !this.f1435k.computeScrollOffset()) {
            a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f1435k.getCurrX();
        int currY = this.f1435k.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!f(currX)) {
                this.f1435k.abortAnimation();
                scrollTo(0, currY);
            }
        }
        s.C(this);
    }

    boolean d() {
        androidx.viewpager.widget.a aVar = this.f1430f;
        if (aVar == null || this.f1431g >= aVar.a() - 1) {
            return false;
        }
        a(this.f1431g + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        f fVarB;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (fVarB = b(childAt)) != null && fVarB.f1440b == this.f1431g && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        androidx.viewpager.widget.a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f1430f) != null && aVar.a() > 1)) {
            if (!this.O.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.r * width);
                this.O.setSize(height, width);
                zDraw = false | this.O.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.P.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.s + 1.0f)) * width2);
                this.P.setSize(height2, width2);
                zDraw |= this.P.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.O.finish();
            this.P.finish();
        }
        if (zDraw) {
            s.C(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.o;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    void e() {
        c(this.f1431g);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new g();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new g(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public androidx.viewpager.widget.a getAdapter() {
        return this.f1430f;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        if (this.c0 == 2) {
            i3 = (i2 - 1) - i3;
        }
        return ((g) this.d0.get(i3).getLayoutParams()).f1449f;
    }

    public int getCurrentItem() {
        return this.f1431g;
    }

    public int getOffscreenPageLimit() {
        return this.x;
    }

    public int getPageMargin() {
        return this.n;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.Q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.e0);
        Scroller scroller = this.f1435k;
        if (scroller != null && !scroller.isFinished()) {
            this.f1435k.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f2;
        float f3;
        super.onDraw(canvas);
        if (this.n <= 0 || this.o == null || this.f1427c.size() <= 0 || this.f1430f == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f4 = this.n / width;
        int i2 = 0;
        f fVar = this.f1427c.get(0);
        float f5 = fVar.f1443e;
        int size = this.f1427c.size();
        int i3 = fVar.f1440b;
        int i4 = this.f1427c.get(size - 1).f1440b;
        while (i3 < i4) {
            while (i3 > fVar.f1440b && i2 < size) {
                i2++;
                fVar = this.f1427c.get(i2);
            }
            if (i3 == fVar.f1440b) {
                float f6 = fVar.f1443e;
                float f7 = fVar.f1442d;
                f2 = (f6 + f7) * width;
                f5 = f6 + f7 + f4;
            } else {
                float fB = this.f1430f.b(i3);
                f2 = (f5 + fB) * width;
                f5 += fB + f4;
            }
            if (this.n + f2 > scrollX) {
                f3 = f4;
                this.o.setBounds(Math.round(f2), this.p, Math.round(this.n + f2), this.q);
                this.o.draw(canvas);
            } else {
                f3 = f4;
            }
            if (f2 > scrollX + r2) {
                return;
            }
            i3++;
            f4 = f3;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            i();
            return false;
        }
        if (action != 0) {
            if (this.y) {
                return true;
            }
            if (this.z) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.F = x;
            this.D = x;
            float y = motionEvent.getY();
            this.G = y;
            this.E = y;
            this.H = motionEvent.getPointerId(0);
            this.z = false;
            this.l = true;
            this.f1435k.computeScrollOffset();
            if (this.f0 != 2 || Math.abs(this.f1435k.getFinalX() - this.f1435k.getCurrX()) <= this.M) {
                a(false);
                this.y = false;
            } else {
                this.f1435k.abortAnimation();
                this.w = false;
                e();
                this.y = true;
                c(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i2 = this.H;
            if (i2 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i2);
                float x2 = motionEvent.getX(iFindPointerIndex);
                float f2 = x2 - this.D;
                float fAbs = Math.abs(f2);
                float y2 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y2 - this.G);
                if (f2 != 0.0f && !a(this.D, f2) && a(this, false, (int) f2, (int) x2, (int) y2)) {
                    this.D = x2;
                    this.E = y2;
                    this.z = true;
                    return false;
                }
                if (fAbs > this.C && fAbs * 0.5f > fAbs2) {
                    this.y = true;
                    c(true);
                    setScrollState(1);
                    this.D = f2 > 0.0f ? this.F + this.C : this.F - this.C;
                    this.E = y2;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > this.C) {
                    this.z = true;
                }
                if (this.y && b(x2)) {
                    s.C(this);
                }
            }
        } else if (action == 6) {
            a(motionEvent);
        }
        if (this.I == null) {
            this.I = VelocityTracker.obtain();
        }
        this.I.addMovement(motionEvent);
        return this.y;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        boolean z2;
        f fVarB;
        int iMax;
        int iMax2;
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int measuredHeight = paddingBottom;
        int i8 = 0;
        int measuredHeight2 = paddingTop;
        int measuredWidth = paddingLeft;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                g gVar = (g) childAt.getLayoutParams();
                if (gVar.f1444a) {
                    int i10 = gVar.f1445b;
                    int i11 = i10 & 7;
                    int i12 = i10 & com.google.android.material.R.styleable.AppCompatTheme_windowActionBarOverlay;
                    if (i11 == 1) {
                        iMax = Math.max((i6 - childAt.getMeasuredWidth()) / 2, measuredWidth);
                    } else if (i11 == 3) {
                        iMax = measuredWidth;
                        measuredWidth = childAt.getMeasuredWidth() + measuredWidth;
                    } else if (i11 != 5) {
                        iMax = measuredWidth;
                    } else {
                        iMax = (i6 - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    if (i12 == 16) {
                        iMax2 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, measuredHeight2);
                    } else if (i12 == 48) {
                        iMax2 = measuredHeight2;
                        measuredHeight2 = childAt.getMeasuredHeight() + measuredHeight2;
                    } else if (i12 != 80) {
                        iMax2 = measuredHeight2;
                    } else {
                        iMax2 = (i7 - measuredHeight) - childAt.getMeasuredHeight();
                        measuredHeight += childAt.getMeasuredHeight();
                    }
                    int i13 = iMax + scrollX;
                    childAt.layout(i13, iMax2, childAt.getMeasuredWidth() + i13, iMax2 + childAt.getMeasuredHeight());
                    i8++;
                }
            }
        }
        int i14 = (i6 - measuredWidth) - paddingRight;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt2 = getChildAt(i15);
            if (childAt2.getVisibility() != 8) {
                g gVar2 = (g) childAt2.getLayoutParams();
                if (!gVar2.f1444a && (fVarB = b(childAt2)) != null) {
                    float f2 = i14;
                    int i16 = ((int) (fVarB.f1443e * f2)) + measuredWidth;
                    if (gVar2.f1447d) {
                        gVar2.f1447d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f2 * gVar2.f1446c), 1073741824), View.MeasureSpec.makeMeasureSpec((i7 - measuredHeight2) - measuredHeight, 1073741824));
                    }
                    childAt2.layout(i16, measuredHeight2, childAt2.getMeasuredWidth() + i16, childAt2.getMeasuredHeight() + measuredHeight2);
                }
            }
        }
        this.p = measuredHeight2;
        this.q = i7 - measuredHeight;
        this.S = i8;
        if (this.Q) {
            z2 = false;
            a(this.f1431g, false, 0, false);
        } else {
            z2 = false;
        }
        this.Q = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00aa  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        f fVarB;
        int childCount = getChildCount();
        int i5 = -1;
        if ((i2 & 2) != 0) {
            i5 = childCount;
            i3 = 0;
            i4 = 1;
        } else {
            i3 = childCount - 1;
            i4 = -1;
        }
        while (i3 != i5) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (fVarB = b(childAt)) != null && fVarB.f1440b == this.f1431g && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof m)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        m mVar = (m) parcelable;
        super.onRestoreInstanceState(mVar.getSuperState());
        androidx.viewpager.widget.a aVar = this.f1430f;
        if (aVar != null) {
            aVar.a(mVar.f1453c, mVar.f1454d);
            a(mVar.f1452b, false, true);
        } else {
            this.f1432h = mVar.f1452b;
            this.f1433i = mVar.f1453c;
            this.f1434j = mVar.f1454d;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        m mVar = new m(super.onSaveInstanceState());
        mVar.f1452b = this.f1431g;
        androidx.viewpager.widget.a aVar = this.f1430f;
        if (aVar != null) {
            mVar.f1453c = aVar.c();
        }
        return mVar;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.n;
            a(i2, i4, i6, i6);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0151  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instruction units count: 342
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.u) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(androidx.viewpager.widget.a aVar) {
        androidx.viewpager.widget.a aVar2 = this.f1430f;
        if (aVar2 != null) {
            aVar2.b((DataSetObserver) null);
            this.f1430f.b((ViewGroup) this);
            for (int i2 = 0; i2 < this.f1427c.size(); i2++) {
                f fVar = this.f1427c.get(i2);
                this.f1430f.a((ViewGroup) this, fVar.f1440b, fVar.f1439a);
            }
            this.f1430f.a((ViewGroup) this);
            this.f1427c.clear();
            h();
            this.f1431g = 0;
            scrollTo(0, 0);
        }
        androidx.viewpager.widget.a aVar3 = this.f1430f;
        this.f1430f = aVar;
        this.f1426b = 0;
        if (this.f1430f != null) {
            if (this.m == null) {
                this.m = new l();
            }
            this.f1430f.b(this.m);
            this.w = false;
            boolean z = this.Q;
            this.Q = true;
            this.f1426b = this.f1430f.a();
            if (this.f1432h >= 0) {
                this.f1430f.a(this.f1433i, this.f1434j);
                a(this.f1432h, false, true);
                this.f1432h = -1;
                this.f1433i = null;
                this.f1434j = null;
            } else if (z) {
                requestLayout();
            } else {
                e();
            }
        }
        List<i> list = this.W;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.W.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.W.get(i3).onAdapterChanged(this, aVar3, aVar);
        }
    }

    public void setCurrentItem(int i2) {
        this.w = false;
        a(i2, !this.Q, false);
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i2 + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.x) {
            this.x = i2;
            e();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(j jVar) {
        this.U = jVar;
    }

    public void setPageMargin(int i2) {
        int i3 = this.n;
        this.n = i2;
        int width = getWidth();
        a(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(int i2) {
        setPageMarginDrawable(androidx.core.content.a.c(getContext(), i2));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.o = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    void setScrollState(int i2) {
        if (this.f0 == i2) {
            return;
        }
        this.f0 = i2;
        if (this.a0 != null) {
            b(i2 != 0);
        }
        e(i2);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.o;
    }
}
