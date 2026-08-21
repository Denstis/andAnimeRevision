package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;

/* JADX INFO: loaded from: classes.dex */
class t0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static t0 f658k;
    private static t0 l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CharSequence f660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f661d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f662e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f663f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f664g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f665h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private u0 f666i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f667j;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.a(false);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.this.a();
        }
    }

    private t0(View view, CharSequence charSequence) {
        this.f659b = view;
        this.f660c = charSequence;
        this.f661d = b.h.o.t.a(ViewConfiguration.get(this.f659b.getContext()));
        c();
        this.f659b.setOnLongClickListener(this);
        this.f659b.setOnHoverListener(this);
    }

    public static void a(View view, CharSequence charSequence) {
        t0 t0Var = f658k;
        if (t0Var != null && t0Var.f659b == view) {
            a((t0) null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new t0(view, charSequence);
            return;
        }
        t0 t0Var2 = l;
        if (t0Var2 != null && t0Var2.f659b == view) {
            t0Var2.a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    private static void a(t0 t0Var) {
        t0 t0Var2 = f658k;
        if (t0Var2 != null) {
            t0Var2.b();
        }
        f658k = t0Var;
        t0 t0Var3 = f658k;
        if (t0Var3 != null) {
            t0Var3.d();
        }
    }

    private boolean a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f664g) <= this.f661d && Math.abs(y - this.f665h) <= this.f661d) {
            return false;
        }
        this.f664g = x;
        this.f665h = y;
        return true;
    }

    private void b() {
        this.f659b.removeCallbacks(this.f662e);
    }

    private void c() {
        this.f664g = Integer.MAX_VALUE;
        this.f665h = Integer.MAX_VALUE;
    }

    private void d() {
        this.f659b.postDelayed(this.f662e, ViewConfiguration.getLongPressTimeout());
    }

    void a() {
        if (l == this) {
            l = null;
            u0 u0Var = this.f666i;
            if (u0Var != null) {
                u0Var.a();
                this.f666i = null;
                c();
                this.f659b.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f658k == this) {
            a((t0) null);
        }
        this.f659b.removeCallbacks(this.f663f);
    }

    void a(boolean z) {
        long longPressTimeout;
        if (b.h.o.s.y(this.f659b)) {
            a((t0) null);
            t0 t0Var = l;
            if (t0Var != null) {
                t0Var.a();
            }
            l = this;
            this.f667j = z;
            this.f666i = new u0(this.f659b.getContext());
            this.f666i.a(this.f659b, this.f664g, this.f665h, this.f667j, this.f660c);
            this.f659b.addOnAttachStateChangeListener(this);
            if (this.f667j) {
                longPressTimeout = 2500;
            } else {
                longPressTimeout = ((b.h.o.s.s(this.f659b) & 1) == 1 ? 3000L : 15000L) - ((long) ViewConfiguration.getLongPressTimeout());
            }
            this.f659b.removeCallbacks(this.f663f);
            this.f659b.postDelayed(this.f663f, longPressTimeout);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f666i != null && this.f667j) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f659b.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                c();
                a();
            }
        } else if (this.f659b.isEnabled() && this.f666i == null && a(motionEvent)) {
            a(this);
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f664g = view.getWidth() / 2;
        this.f665h = view.getHeight() / 2;
        a(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }
}
