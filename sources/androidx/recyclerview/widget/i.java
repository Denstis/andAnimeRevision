package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
class i extends RecyclerView.n implements RecyclerView.s {
    private static final int[] D = {R.attr.state_pressed};
    private static final int[] E = new int[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final StateListDrawable f1346c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Drawable f1347d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f1348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f1349f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final StateListDrawable f1350g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Drawable f1351h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f1352i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f1353j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f1354k;
    int l;
    float m;
    int n;
    int o;
    float p;
    private RecyclerView s;
    private int q = 0;
    private int r = 0;
    private boolean t = false;
    private boolean u = false;
    private int v = 0;
    private int w = 0;
    private final int[] x = new int[2];
    private final int[] y = new int[2];
    final ValueAnimator z = ValueAnimator.ofFloat(0.0f, 1.0f);
    int A = 0;
    private final Runnable B = new a();
    private final RecyclerView.t C = new b();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.a(500);
        }
    }

    class b extends RecyclerView.t {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void a(RecyclerView recyclerView, int i2, int i3) {
            i.this.a(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    private class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f1357a = false;

        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1357a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f1357a) {
                this.f1357a = false;
                return;
            }
            if (((Float) i.this.z.getAnimatedValue()).floatValue() == 0.0f) {
                i iVar = i.this;
                iVar.A = 0;
                iVar.b(0);
            } else {
                i iVar2 = i.this;
                iVar2.A = 2;
                iVar2.a();
            }
        }
    }

    private class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            i.this.f1346c.setAlpha(iFloatValue);
            i.this.f1347d.setAlpha(iFloatValue);
            i.this.a();
        }
    }

    i(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i2, int i3, int i4) {
        this.f1346c = stateListDrawable;
        this.f1347d = drawable;
        this.f1350g = stateListDrawable2;
        this.f1351h = drawable2;
        this.f1348e = Math.max(i2, stateListDrawable.getIntrinsicWidth());
        this.f1349f = Math.max(i2, drawable.getIntrinsicWidth());
        this.f1352i = Math.max(i2, stateListDrawable2.getIntrinsicWidth());
        this.f1353j = Math.max(i2, drawable2.getIntrinsicWidth());
        this.f1344a = i3;
        this.f1345b = i4;
        this.f1346c.setAlpha(255);
        this.f1347d.setAlpha(255);
        this.z.addListener(new c());
        this.z.addUpdateListener(new d());
        a(recyclerView);
    }

    private int a(float f2, float f3, int[] iArr, int i2, int i3, int i4) {
        int i5 = iArr[1] - iArr[0];
        if (i5 == 0) {
            return 0;
        }
        int i6 = i2 - i4;
        int i7 = (int) (((f3 - f2) / i5) * i6);
        int i8 = i3 + i7;
        if (i8 >= i6 || i8 < 0) {
            return 0;
        }
        return i7;
    }

    private void a(float f2) {
        int[] iArrE = e();
        float fMax = Math.max(iArrE[0], Math.min(iArrE[1], f2));
        if (Math.abs(this.o - fMax) < 2.0f) {
            return;
        }
        int iA = a(this.p, fMax, iArrE, this.s.computeHorizontalScrollRange(), this.s.computeHorizontalScrollOffset(), this.q);
        if (iA != 0) {
            this.s.scrollBy(iA, 0);
        }
        this.p = fMax;
    }

    private void a(Canvas canvas) {
        int i2 = this.r;
        int i3 = this.f1352i;
        int i4 = this.o;
        int i5 = this.n;
        this.f1350g.setBounds(0, 0, i5, i3);
        this.f1351h.setBounds(0, 0, this.q, this.f1353j);
        canvas.translate(0.0f, i2 - i3);
        this.f1351h.draw(canvas);
        canvas.translate(i4 - (i5 / 2), 0.0f);
        this.f1350g.draw(canvas);
        canvas.translate(-r2, -r0);
    }

    private void b(float f2) {
        int[] iArrF = f();
        float fMax = Math.max(iArrF[0], Math.min(iArrF[1], f2));
        if (Math.abs(this.l - fMax) < 2.0f) {
            return;
        }
        int iA = a(this.m, fMax, iArrF, this.s.computeVerticalScrollRange(), this.s.computeVerticalScrollOffset(), this.r);
        if (iA != 0) {
            this.s.scrollBy(0, iA);
        }
        this.m = fMax;
    }

    private void b(Canvas canvas) {
        int i2 = this.q;
        int i3 = this.f1348e;
        int i4 = i2 - i3;
        int i5 = this.l;
        int i6 = this.f1354k;
        int i7 = i5 - (i6 / 2);
        this.f1346c.setBounds(0, 0, i3, i6);
        this.f1347d.setBounds(0, 0, this.f1349f, this.r);
        if (g()) {
            this.f1347d.draw(canvas);
            canvas.translate(this.f1348e, i7);
            canvas.scale(-1.0f, 1.0f);
            this.f1346c.draw(canvas);
            canvas.scale(1.0f, 1.0f);
            i4 = this.f1348e;
        } else {
            canvas.translate(i4, 0.0f);
            this.f1347d.draw(canvas);
            canvas.translate(0.0f, i7);
            this.f1346c.draw(canvas);
        }
        canvas.translate(-i4, -i7);
    }

    private void c() {
        this.s.removeCallbacks(this.B);
    }

    private void c(int i2) {
        c();
        this.s.postDelayed(this.B, i2);
    }

    private void d() {
        this.s.removeItemDecoration(this);
        this.s.removeOnItemTouchListener(this);
        this.s.removeOnScrollListener(this.C);
        c();
    }

    private int[] e() {
        int[] iArr = this.y;
        int i2 = this.f1345b;
        iArr[0] = i2;
        iArr[1] = this.q - i2;
        return iArr;
    }

    private int[] f() {
        int[] iArr = this.x;
        int i2 = this.f1345b;
        iArr[0] = i2;
        iArr[1] = this.r - i2;
        return iArr;
    }

    private boolean g() {
        return b.h.o.s.k(this.s) == 1;
    }

    private void h() {
        this.s.addItemDecoration(this);
        this.s.addOnItemTouchListener(this);
        this.s.addOnScrollListener(this.C);
    }

    void a() {
        this.s.invalidate();
    }

    void a(int i2) {
        int i3 = this.A;
        if (i3 == 1) {
            this.z.cancel();
        } else if (i3 != 2) {
            return;
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.z.setDuration(i2);
        this.z.start();
    }

    void a(int i2, int i3) {
        int iComputeVerticalScrollRange = this.s.computeVerticalScrollRange();
        int i4 = this.r;
        this.t = iComputeVerticalScrollRange - i4 > 0 && i4 >= this.f1344a;
        int iComputeHorizontalScrollRange = this.s.computeHorizontalScrollRange();
        int i5 = this.q;
        this.u = iComputeHorizontalScrollRange - i5 > 0 && i5 >= this.f1344a;
        if (!this.t && !this.u) {
            if (this.v != 0) {
                b(0);
                return;
            }
            return;
        }
        if (this.t) {
            float f2 = i4;
            this.l = (int) ((f2 * (i3 + (f2 / 2.0f))) / iComputeVerticalScrollRange);
            this.f1354k = Math.min(i4, (i4 * i4) / iComputeVerticalScrollRange);
        }
        if (this.u) {
            float f3 = i5;
            this.o = (int) ((f3 * (i2 + (f3 / 2.0f))) / iComputeHorizontalScrollRange);
            this.n = Math.min(i5, (i5 * i5) / iComputeHorizontalScrollRange);
        }
        int i6 = this.v;
        if (i6 == 0 || i6 == 1) {
            b(1);
        }
    }

    public void a(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            d();
        }
        this.s = recyclerView;
        if (this.s != null) {
            h();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public void a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zB = b(motionEvent.getX(), motionEvent.getY());
            boolean zA = a(motionEvent.getX(), motionEvent.getY());
            if (zB || zA) {
                if (zA) {
                    this.w = 1;
                    this.p = (int) motionEvent.getX();
                } else if (zB) {
                    this.w = 2;
                    this.m = (int) motionEvent.getY();
                }
                b(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.v == 2) {
            this.m = 0.0f;
            this.p = 0.0f;
            b(1);
            this.w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.v == 2) {
            b();
            if (this.w == 1) {
                a(motionEvent.getX());
            }
            if (this.w == 2) {
                b(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public void a(boolean z) {
    }

    boolean a(float f2, float f3) {
        if (f3 >= this.r - this.f1352i) {
            int i2 = this.o;
            int i3 = this.n;
            if (f2 >= i2 - (i3 / 2) && f2 <= i2 + (i3 / 2)) {
                return true;
            }
        }
        return false;
    }

    public void b() {
        int i2 = this.A;
        if (i2 != 0) {
            if (i2 != 3) {
                return;
            } else {
                this.z.cancel();
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.z.setDuration(500L);
        this.z.setStartDelay(0L);
        this.z.start();
    }

    void b(int i2) {
        int i3;
        if (i2 == 2 && this.v != 2) {
            this.f1346c.setState(D);
            c();
        }
        if (i2 == 0) {
            a();
        } else {
            b();
        }
        if (this.v != 2 || i2 == 2) {
            i3 = i2 == 1 ? ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED : 1200;
            this.v = i2;
        }
        this.f1346c.setState(E);
        c(i3);
        this.v = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void b(Canvas canvas, RecyclerView recyclerView, RecyclerView.a0 a0Var) {
        if (this.q != this.s.getWidth() || this.r != this.s.getHeight()) {
            this.q = this.s.getWidth();
            this.r = this.s.getHeight();
            b(0);
        } else if (this.A != 0) {
            if (this.t) {
                b(canvas);
            }
            if (this.u) {
                a(canvas);
            }
        }
    }

    boolean b(float f2, float f3) {
        if (!g() ? f2 >= this.q - this.f1348e : f2 <= this.f1348e / 2) {
            int i2 = this.l;
            int i3 = this.f1354k;
            if (f3 >= i2 - (i3 / 2) && f3 <= i2 + (i3 / 2)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public boolean b(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i2 = this.v;
        if (i2 == 1) {
            boolean zB = b(motionEvent.getX(), motionEvent.getY());
            boolean zA = a(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zB && !zA) {
                return false;
            }
            if (zA) {
                this.w = 1;
                this.p = (int) motionEvent.getX();
            } else if (zB) {
                this.w = 2;
                this.m = (int) motionEvent.getY();
            }
            b(2);
        } else if (i2 != 2) {
            return false;
        }
        return true;
    }
}
