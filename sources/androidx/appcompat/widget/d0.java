package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public abstract class d0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f516c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f517d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final View f518e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f519f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Runnable f520g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f521h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f522i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f523j = new int[2];

    private class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = d0.this.f518e.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.d();
        }
    }

    public d0(View view) {
        this.f518e = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f515b = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f516c = ViewConfiguration.getTapTimeout();
        this.f517d = (this.f516c + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private boolean a(MotionEvent motionEvent) {
        b0 b0Var;
        View view = this.f518e;
        androidx.appcompat.view.menu.t tVarA = a();
        if (tVarA == null || !tVarA.a() || (b0Var = (b0) tVarA.b()) == null || !b0Var.isShown()) {
            return false;
        }
        MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        a(view, motionEventObtainNoHistory);
        b(b0Var, motionEventObtainNoHistory);
        boolean zA = b0Var.a(motionEventObtainNoHistory, this.f522i);
        motionEventObtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return zA && (actionMasked != 1 && actionMasked != 3);
    }

    private static boolean a(View view, float f2, float f3, float f4) {
        float f5 = -f4;
        return f2 >= f5 && f3 >= f5 && f2 < ((float) (view.getRight() - view.getLeft())) + f4 && f3 < ((float) (view.getBottom() - view.getTop())) + f4;
    }

    private boolean a(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f523j);
        motionEvent.offsetLocation(r0[0], r0[1]);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean b(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.view.View r0 = r5.f518e
            boolean r1 = r0.isEnabled()
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            int r1 = r6.getActionMasked()
            if (r1 == 0) goto L41
            r3 = 1
            if (r1 == r3) goto L3d
            r4 = 2
            if (r1 == r4) goto L1a
            r6 = 3
            if (r1 == r6) goto L3d
            goto L6d
        L1a:
            int r1 = r5.f522i
            int r1 = r6.findPointerIndex(r1)
            if (r1 < 0) goto L6d
            float r4 = r6.getX(r1)
            float r6 = r6.getY(r1)
            float r1 = r5.f515b
            boolean r6 = a(r0, r4, r6, r1)
            if (r6 != 0) goto L6d
            r5.e()
            android.view.ViewParent r6 = r0.getParent()
            r6.requestDisallowInterceptTouchEvent(r3)
            return r3
        L3d:
            r5.e()
            goto L6d
        L41:
            int r6 = r6.getPointerId(r2)
            r5.f522i = r6
            java.lang.Runnable r6 = r5.f519f
            if (r6 != 0) goto L52
            androidx.appcompat.widget.d0$a r6 = new androidx.appcompat.widget.d0$a
            r6.<init>()
            r5.f519f = r6
        L52:
            java.lang.Runnable r6 = r5.f519f
            int r1 = r5.f516c
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
            java.lang.Runnable r6 = r5.f520g
            if (r6 != 0) goto L65
            androidx.appcompat.widget.d0$b r6 = new androidx.appcompat.widget.d0$b
            r6.<init>()
            r5.f520g = r6
        L65:
            java.lang.Runnable r6 = r5.f520g
            int r1 = r5.f517d
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
        L6d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.d0.b(android.view.MotionEvent):boolean");
    }

    private boolean b(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f523j);
        motionEvent.offsetLocation(-r0[0], -r0[1]);
        return true;
    }

    private void e() {
        Runnable runnable = this.f520g;
        if (runnable != null) {
            this.f518e.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f519f;
        if (runnable2 != null) {
            this.f518e.removeCallbacks(runnable2);
        }
    }

    public abstract androidx.appcompat.view.menu.t a();

    protected abstract boolean b();

    protected boolean c() {
        androidx.appcompat.view.menu.t tVarA = a();
        if (tVarA == null || !tVarA.a()) {
            return true;
        }
        tVarA.dismiss();
        return true;
    }

    void d() {
        e();
        View view = this.f518e;
        if (view.isEnabled() && !view.isLongClickable() && b()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
            this.f521h = true;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f521h;
        if (z2) {
            z = a(motionEvent) || !c();
        } else {
            z = b(motionEvent) && b();
            if (z) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f518e.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f521h = z;
        return z || z2;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f521h = false;
        this.f522i = -1;
        Runnable runnable = this.f519f;
        if (runnable != null) {
            this.f518e.removeCallbacks(runnable);
        }
    }
}
