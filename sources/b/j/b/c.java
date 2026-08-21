package b.j.b;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import b.h.o.s;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final Interpolator w = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2633b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[] f2635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float[] f2636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float[] f2637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float[] f2638g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int[] f2639h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f2640i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int[] f2641j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f2642k;
    private VelocityTracker l;
    private float m;
    private float n;
    private int o;
    private int p;
    private OverScroller q;
    private final AbstractC0113c r;
    private View s;
    private boolean t;
    private final ViewGroup u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2634c = -1;
    private final Runnable v = new b();

    static class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.c(0);
        }
    }

    /* JADX INFO: renamed from: b.j.b.c$c, reason: collision with other inner class name */
    public static abstract class AbstractC0113c {
        public abstract int clampViewPositionHorizontal(View view, int i2, int i3);

        public abstract int clampViewPositionVertical(View view, int i2, int i3);

        public int getOrderedChildIndex(int i2) {
            return i2;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i2, int i3) {
        }

        public boolean onEdgeLock(int i2) {
            return false;
        }

        public void onEdgeTouched(int i2, int i3) {
        }

        public void onViewCaptured(View view, int i2) {
        }

        public abstract void onViewDragStateChanged(int i2);

        public abstract void onViewPositionChanged(View view, int i2, int i3, int i4, int i5);

        public abstract void onViewReleased(View view, float f2, float f3);

        public abstract boolean tryCaptureView(View view, int i2);
    }

    private c(Context context, ViewGroup viewGroup, AbstractC0113c abstractC0113c) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (abstractC0113c == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.u = viewGroup;
        this.r = abstractC0113c;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f2633b = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.q = new OverScroller(context, w);
    }

    private float a(float f2, float f3, float f4) {
        float fAbs = Math.abs(f2);
        if (fAbs < f3) {
            return 0.0f;
        }
        return fAbs > f4 ? f2 > 0.0f ? f4 : -f4 : f2;
    }

    private int a(int i2, int i3, int i4) {
        int iAbs = Math.abs(i2);
        if (iAbs < i3) {
            return 0;
        }
        return iAbs > i4 ? i2 > 0 ? i4 : -i4 : i2;
    }

    private int a(View view, int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float f5;
        int iA = a(i4, (int) this.n, (int) this.m);
        int iA2 = a(i5, (int) this.n, (int) this.m);
        int iAbs = Math.abs(i2);
        int iAbs2 = Math.abs(i3);
        int iAbs3 = Math.abs(iA);
        int iAbs4 = Math.abs(iA2);
        int i6 = iAbs3 + iAbs4;
        int i7 = iAbs + iAbs2;
        if (iA != 0) {
            f2 = iAbs3;
            f3 = i6;
        } else {
            f2 = iAbs;
            f3 = i7;
        }
        float f6 = f2 / f3;
        if (iA2 != 0) {
            f4 = iAbs4;
            f5 = i6;
        } else {
            f4 = iAbs2;
            f5 = i7;
        }
        return (int) ((b(i2, iA, this.r.getViewHorizontalDragRange(view)) * f6) + (b(i3, iA2, this.r.getViewVerticalDragRange(view)) * (f4 / f5)));
    }

    public static c a(ViewGroup viewGroup, float f2, AbstractC0113c abstractC0113c) {
        c cVarA = a(viewGroup, abstractC0113c);
        cVarA.f2633b = (int) (cVarA.f2633b * (1.0f / f2));
        return cVarA;
    }

    public static c a(ViewGroup viewGroup, AbstractC0113c abstractC0113c) {
        return new c(viewGroup.getContext(), viewGroup, abstractC0113c);
    }

    private void a(float f2, float f3) {
        this.t = true;
        this.r.onViewReleased(this.s, f2, f3);
        this.t = false;
        if (this.f2632a == 1) {
            c(0);
        }
    }

    private void a(float f2, float f3, int i2) {
        int i3 = a(f2, f3, i2, 1) ? 1 : 0;
        if (a(f3, f2, i2, 4)) {
            i3 |= 4;
        }
        if (a(f2, f3, i2, 2)) {
            i3 |= 2;
        }
        if (a(f3, f2, i2, 8)) {
            i3 |= 8;
        }
        if (i3 != 0) {
            int[] iArr = this.f2640i;
            iArr[i2] = iArr[i2] | i3;
            this.r.onEdgeDragStarted(i3, i2);
        }
    }

    private void a(int i2, int i3, int i4, int i5) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        if (i4 != 0) {
            i2 = this.r.clampViewPositionHorizontal(this.s, i2, i4);
            s.c(this.s, i2 - left);
        }
        int i6 = i2;
        if (i5 != 0) {
            i3 = this.r.clampViewPositionVertical(this.s, i3, i5);
            s.d(this.s, i3 - top);
        }
        int i7 = i3;
        if (i4 == 0 && i5 == 0) {
            return;
        }
        this.r.onViewPositionChanged(this.s, i6, i7, i6 - left, i7 - top);
    }

    private boolean a(float f2, float f3, int i2, int i3) {
        float fAbs = Math.abs(f2);
        float fAbs2 = Math.abs(f3);
        if ((this.f2639h[i2] & i3) != i3 || (this.p & i3) == 0 || (this.f2641j[i2] & i3) == i3 || (this.f2640i[i2] & i3) == i3) {
            return false;
        }
        int i4 = this.f2633b;
        if (fAbs <= i4 && fAbs2 <= i4) {
            return false;
        }
        if (fAbs >= fAbs2 * 0.5f || !this.r.onEdgeLock(i3)) {
            return (this.f2640i[i2] & i3) == 0 && fAbs > ((float) this.f2633b);
        }
        int[] iArr = this.f2641j;
        iArr[i2] = iArr[i2] | i3;
        return false;
    }

    private boolean a(View view, float f2, float f3) {
        if (view == null) {
            return false;
        }
        boolean z = this.r.getViewHorizontalDragRange(view) > 0;
        boolean z2 = this.r.getViewVerticalDragRange(view) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f2) > ((float) this.f2633b) : z2 && Math.abs(f3) > ((float) this.f2633b);
        }
        float f4 = (f2 * f2) + (f3 * f3);
        int i2 = this.f2633b;
        return f4 > ((float) (i2 * i2));
    }

    private float b(float f2) {
        return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
    }

    private int b(int i2, int i3, int i4) {
        if (i2 == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        float f2 = width / 2;
        float fB = f2 + (b(Math.min(1.0f, Math.abs(i2) / width)) * f2);
        int iAbs = Math.abs(i3);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fB / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i2) / i4) + 1.0f) * 256.0f), 600);
    }

    private void b(float f2, float f3, int i2) {
        f(i2);
        float[] fArr = this.f2635d;
        this.f2637f[i2] = f2;
        fArr[i2] = f2;
        float[] fArr2 = this.f2636e;
        this.f2638g[i2] = f3;
        fArr2[i2] = f3;
        this.f2639h[i2] = e((int) f2, (int) f3);
        this.f2642k |= 1 << i2;
    }

    private boolean b(int i2, int i3, int i4, int i5) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        if (i6 == 0 && i7 == 0) {
            this.q.abortAnimation();
            c(0);
            return false;
        }
        this.q.startScroll(left, top, i6, i7, a(this.s, i6, i7, i4, i5));
        c(2);
        return true;
    }

    private void c(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            if (g(pointerId)) {
                float x = motionEvent.getX(i2);
                float y = motionEvent.getY(i2);
                this.f2637f[pointerId] = x;
                this.f2638g[pointerId] = y;
            }
        }
    }

    private int e(int i2, int i3) {
        int i4 = i2 < this.u.getLeft() + this.o ? 1 : 0;
        if (i3 < this.u.getTop() + this.o) {
            i4 |= 4;
        }
        if (i2 > this.u.getRight() - this.o) {
            i4 |= 2;
        }
        return i3 > this.u.getBottom() - this.o ? i4 | 8 : i4;
    }

    private void e(int i2) {
        if (this.f2635d == null || !b(i2)) {
            return;
        }
        this.f2635d[i2] = 0.0f;
        this.f2636e[i2] = 0.0f;
        this.f2637f[i2] = 0.0f;
        this.f2638g[i2] = 0.0f;
        this.f2639h[i2] = 0;
        this.f2640i[i2] = 0;
        this.f2641j[i2] = 0;
        this.f2642k = ((1 << i2) ^ (-1)) & this.f2642k;
    }

    private void f() {
        float[] fArr = this.f2635d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.f2636e, 0.0f);
        Arrays.fill(this.f2637f, 0.0f);
        Arrays.fill(this.f2638g, 0.0f);
        Arrays.fill(this.f2639h, 0);
        Arrays.fill(this.f2640i, 0);
        Arrays.fill(this.f2641j, 0);
        this.f2642k = 0;
    }

    private void f(int i2) {
        float[] fArr = this.f2635d;
        if (fArr == null || fArr.length <= i2) {
            int i3 = i2 + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            float[] fArr6 = this.f2635d;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.f2636e;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f2637f;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.f2638g;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.f2639h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f2640i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f2641j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f2635d = fArr2;
            this.f2636e = fArr3;
            this.f2637f = fArr4;
            this.f2638g = fArr5;
            this.f2639h = iArr;
            this.f2640i = iArr2;
            this.f2641j = iArr3;
        }
    }

    private void g() {
        this.l.computeCurrentVelocity(1000, this.m);
        a(a(this.l.getXVelocity(this.f2634c), this.n, this.m), a(this.l.getYVelocity(this.f2634c), this.n, this.m));
    }

    private boolean g(int i2) {
        if (b(i2)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i2 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public void a() {
        this.f2634c = -1;
        f();
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    public void a(float f2) {
        this.n = f2;
    }

    public void a(MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        int i3 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewB = b((int) x, (int) y);
            b(x, y, pointerId);
            b(viewB, pointerId);
            int i4 = this.f2639h[pointerId];
            int i5 = this.p;
            if ((i4 & i5) != 0) {
                this.r.onEdgeTouched(i4 & i5, pointerId);
                return;
            }
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (this.f2632a != 1) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (i3 < pointerCount) {
                        int pointerId2 = motionEvent.getPointerId(i3);
                        if (g(pointerId2)) {
                            float x2 = motionEvent.getX(i3);
                            float y2 = motionEvent.getY(i3);
                            float f2 = x2 - this.f2635d[pointerId2];
                            float f3 = y2 - this.f2636e[pointerId2];
                            a(f2, f3, pointerId2);
                            if (this.f2632a != 1) {
                                View viewB2 = b((int) x2, (int) y2);
                                if (a(viewB2, f2, f3) && b(viewB2, pointerId2)) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        i3++;
                    }
                } else {
                    if (!g(this.f2634c)) {
                        return;
                    }
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f2634c);
                    float x3 = motionEvent.getX(iFindPointerIndex);
                    float y3 = motionEvent.getY(iFindPointerIndex);
                    float[] fArr = this.f2637f;
                    int i6 = this.f2634c;
                    int i7 = (int) (x3 - fArr[i6]);
                    int i8 = (int) (y3 - this.f2638g[i6]);
                    a(this.s.getLeft() + i7, this.s.getTop() + i8, i7, i8);
                }
                c(motionEvent);
                return;
            }
            if (actionMasked != 3) {
                if (actionMasked == 5) {
                    int pointerId3 = motionEvent.getPointerId(actionIndex);
                    float x4 = motionEvent.getX(actionIndex);
                    float y4 = motionEvent.getY(actionIndex);
                    b(x4, y4, pointerId3);
                    if (this.f2632a != 0) {
                        if (c((int) x4, (int) y4)) {
                            b(this.s, pointerId3);
                            return;
                        }
                        return;
                    } else {
                        b(b((int) x4, (int) y4), pointerId3);
                        int i9 = this.f2639h[pointerId3];
                        int i10 = this.p;
                        if ((i9 & i10) != 0) {
                            this.r.onEdgeTouched(i9 & i10, pointerId3);
                            return;
                        }
                        return;
                    }
                }
                if (actionMasked != 6) {
                    return;
                }
                int pointerId4 = motionEvent.getPointerId(actionIndex);
                if (this.f2632a == 1 && pointerId4 == this.f2634c) {
                    int pointerCount2 = motionEvent.getPointerCount();
                    while (true) {
                        if (i3 >= pointerCount2) {
                            i2 = -1;
                            break;
                        }
                        int pointerId5 = motionEvent.getPointerId(i3);
                        if (pointerId5 != this.f2634c) {
                            View viewB3 = b((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                            View view = this.s;
                            if (viewB3 == view && b(view, pointerId5)) {
                                i2 = this.f2634c;
                                break;
                            }
                        }
                        i3++;
                    }
                    if (i2 == -1) {
                        g();
                    }
                }
                e(pointerId4);
                return;
            }
            if (this.f2632a == 1) {
                a(0.0f, 0.0f);
            }
        } else if (this.f2632a == 1) {
            g();
        }
        a();
    }

    public void a(View view, int i2) {
        if (view.getParent() == this.u) {
            this.s = view;
            this.f2634c = i2;
            this.r.onViewCaptured(view, i2);
            c(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
    }

    public boolean a(int i2) {
        int length = this.f2635d.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (a(i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public boolean a(int i2, int i3) {
        if (!b(i3)) {
            return false;
        }
        boolean z = (i2 & 1) == 1;
        boolean z2 = (i2 & 2) == 2;
        float f2 = this.f2637f[i3] - this.f2635d[i3];
        float f3 = this.f2638g[i3] - this.f2636e[i3];
        if (!z || !z2) {
            return z ? Math.abs(f2) > ((float) this.f2633b) : z2 && Math.abs(f3) > ((float) this.f2633b);
        }
        float f4 = (f2 * f2) + (f3 * f3);
        int i4 = this.f2633b;
        return f4 > ((float) (i4 * i4));
    }

    public boolean a(View view, int i2, int i3) {
        return view != null && i2 >= view.getLeft() && i2 < view.getRight() && i3 >= view.getTop() && i3 < view.getBottom();
    }

    public boolean a(boolean z) {
        if (this.f2632a == 2) {
            boolean zComputeScrollOffset = this.q.computeScrollOffset();
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            int left = currX - this.s.getLeft();
            int top = currY - this.s.getTop();
            if (left != 0) {
                s.c(this.s, left);
            }
            if (top != 0) {
                s.d(this.s, top);
            }
            if (left != 0 || top != 0) {
                this.r.onViewPositionChanged(this.s, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.q.getFinalX() && currY == this.q.getFinalY()) {
                this.q.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                if (z) {
                    this.u.post(this.v);
                } else {
                    c(0);
                }
            }
        }
        return this.f2632a == 2;
    }

    public View b() {
        return this.s;
    }

    public View b(int i2, int i3) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.u.getChildAt(this.r.getOrderedChildIndex(childCount));
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public boolean b(int i2) {
        return ((1 << i2) & this.f2642k) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.j.b.c.b(android.view.MotionEvent):boolean");
    }

    boolean b(View view, int i2) {
        if (view == this.s && this.f2634c == i2) {
            return true;
        }
        if (view == null || !this.r.tryCaptureView(view, i2)) {
            return false;
        }
        this.f2634c = i2;
        a(view, i2);
        return true;
    }

    public boolean b(View view, int i2, int i3) {
        this.s = view;
        this.f2634c = -1;
        boolean zB = b(i2, i3, 0, 0);
        if (!zB && this.f2632a == 0 && this.s != null) {
            this.s = null;
        }
        return zB;
    }

    public int c() {
        return this.o;
    }

    void c(int i2) {
        this.u.removeCallbacks(this.v);
        if (this.f2632a != i2) {
            this.f2632a = i2;
            this.r.onViewDragStateChanged(i2);
            if (this.f2632a == 0) {
                this.s = null;
            }
        }
    }

    public boolean c(int i2, int i3) {
        return a(this.s, i2, i3);
    }

    public int d() {
        return this.f2633b;
    }

    public void d(int i2) {
        this.p = i2;
    }

    public boolean d(int i2, int i3) {
        if (this.t) {
            return b(i2, i3, (int) this.l.getXVelocity(this.f2634c), (int) this.l.getYVelocity(this.f2634c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    public int e() {
        return this.f2632a;
    }
}
