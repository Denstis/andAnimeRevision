package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class e0 implements androidx.appcompat.view.menu.t {
    private static Method G;
    private static Method H;
    private static Method I;
    private final c A;
    final Handler B;
    private final Rect C;
    private Rect D;
    private boolean E;
    PopupWindow F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ListAdapter f533c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    b0 f534d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f536f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f537g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f538h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f539i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f540j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f541k;
    private boolean l;
    private int m;
    private boolean n;
    private boolean o;
    int p;
    private View q;
    private int r;
    private DataSetObserver s;
    private View t;
    private Drawable u;
    private AdapterView.OnItemClickListener v;
    private AdapterView.OnItemSelectedListener w;
    final g x;
    private final f y;
    private final e z;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View viewD = e0.this.d();
            if (viewD == null || viewD.getWindowToken() == null) {
                return;
            }
            e0.this.show();
        }
    }

    class b implements AdapterView.OnItemSelectedListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
            b0 b0Var;
            if (i2 == -1 || (b0Var = e0.this.f534d) == null) {
                return;
            }
            b0Var.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    private class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.c();
        }
    }

    private class d extends DataSetObserver {
        d() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (e0.this.a()) {
                e0.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            e0.this.dismiss();
        }
    }

    private class e implements AbsListView.OnScrollListener {
        e() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
            if (i2 != 1 || e0.this.i() || e0.this.F.getContentView() == null) {
                return;
            }
            e0 e0Var = e0.this;
            e0Var.B.removeCallbacks(e0Var.x);
            e0.this.x.run();
        }
    }

    private class f implements View.OnTouchListener {
        f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = e0.this.F) != null && popupWindow.isShowing() && x >= 0 && x < e0.this.F.getWidth() && y >= 0 && y < e0.this.F.getHeight()) {
                e0 e0Var = e0.this;
                e0Var.B.postDelayed(e0Var.x, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            e0 e0Var2 = e0.this;
            e0Var2.B.removeCallbacks(e0Var2.x);
            return false;
        }
    }

    private class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0 b0Var = e0.this.f534d;
            if (b0Var == null || !b.h.o.s.y(b0Var) || e0.this.f534d.getCount() <= e0.this.f534d.getChildCount()) {
                return;
            }
            int childCount = e0.this.f534d.getChildCount();
            e0 e0Var = e0.this;
            if (childCount <= e0Var.p) {
                e0Var.F.setInputMethodMode(2);
                e0.this.show();
            }
        }
    }

    static {
        try {
            G = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
        } catch (NoSuchMethodException unused) {
            Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
        try {
            H = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
        } catch (NoSuchMethodException unused2) {
            Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
        }
        try {
            I = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
        } catch (NoSuchMethodException unused3) {
            Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
        }
    }

    public e0(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public e0(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.f535e = -2;
        this.f536f = -2;
        this.f539i = 1002;
        this.m = 0;
        this.n = false;
        this.o = false;
        this.p = Integer.MAX_VALUE;
        this.r = 0;
        this.x = new g();
        this.y = new f();
        this.z = new e();
        this.A = new c();
        this.C = new Rect();
        this.f532b = context;
        this.B = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.a.j.ListPopupWindow, i2, i3);
        this.f537g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(b.a.j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.f538h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(b.a.j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.f538h != 0) {
            this.f540j = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        this.F = new o(context, attributeSet, i2, i3);
        this.F.setInputMethodMode(1);
    }

    private int a(View view, int i2, boolean z) {
        Method method = H;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.F, view, Integer.valueOf(i2), Boolean.valueOf(z))).intValue();
            } catch (Exception unused) {
                Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.F.getMaxAvailableHeight(view, i2);
    }

    private void c(boolean z) {
        Method method = G;
        if (method != null) {
            try {
                method.invoke(this.F, Boolean.valueOf(z));
            } catch (Exception unused) {
                Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x012c A[PHI: r1
      0x012c: PHI (r1v1 int) = (r1v0 int), (r1v6 int) binds: [B:45:0x0120, B:47:0x0124] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int k() {
        /*
            Method dump skipped, instruction units count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.e0.k():int");
    }

    private void l() {
        View view = this.q;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.q);
            }
        }
    }

    b0 a(Context context, boolean z) {
        return new b0(context, z);
    }

    public void a(int i2) {
        this.F.setAnimationStyle(i2);
    }

    public void a(Rect rect) {
        this.D = rect;
    }

    public void a(Drawable drawable) {
        this.F.setBackgroundDrawable(drawable);
    }

    public void a(View view) {
        this.t = view;
    }

    public void a(AdapterView.OnItemClickListener onItemClickListener) {
        this.v = onItemClickListener;
    }

    public void a(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.s;
        if (dataSetObserver == null) {
            this.s = new d();
        } else {
            ListAdapter listAdapter2 = this.f533c;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f533c = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.s);
        }
        b0 b0Var = this.f534d;
        if (b0Var != null) {
            b0Var.setAdapter(this.f533c);
        }
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.F.setOnDismissListener(onDismissListener);
    }

    public void a(boolean z) {
        this.E = z;
        this.F.setFocusable(z);
    }

    @Override // androidx.appcompat.view.menu.t
    public boolean a() {
        return this.F.isShowing();
    }

    @Override // androidx.appcompat.view.menu.t
    public ListView b() {
        return this.f534d;
    }

    public void b(int i2) {
        Drawable background = this.F.getBackground();
        if (background == null) {
            i(i2);
            return;
        }
        background.getPadding(this.C);
        Rect rect = this.C;
        this.f536f = rect.left + rect.right + i2;
    }

    public void b(boolean z) {
        this.l = true;
        this.f541k = z;
    }

    public void c() {
        b0 b0Var = this.f534d;
        if (b0Var != null) {
            b0Var.setListSelectionHidden(true);
            b0Var.requestLayout();
        }
    }

    public void c(int i2) {
        this.m = i2;
    }

    public View d() {
        return this.t;
    }

    public void d(int i2) {
        this.f537g = i2;
    }

    @Override // androidx.appcompat.view.menu.t
    public void dismiss() {
        this.F.dismiss();
        l();
        this.F.setContentView(null);
        this.f534d = null;
        this.B.removeCallbacks(this.x);
    }

    public Drawable e() {
        return this.F.getBackground();
    }

    public void e(int i2) {
        this.F.setInputMethodMode(i2);
    }

    public int f() {
        return this.f537g;
    }

    public void f(int i2) {
        this.r = i2;
    }

    public int g() {
        if (this.f540j) {
            return this.f538h;
        }
        return 0;
    }

    public void g(int i2) {
        b0 b0Var = this.f534d;
        if (!a() || b0Var == null) {
            return;
        }
        b0Var.setListSelectionHidden(false);
        b0Var.setSelection(i2);
        if (b0Var.getChoiceMode() != 0) {
            b0Var.setItemChecked(i2, true);
        }
    }

    public int h() {
        return this.f536f;
    }

    public void h(int i2) {
        this.f538h = i2;
        this.f540j = true;
    }

    public void i(int i2) {
        this.f536f = i2;
    }

    public boolean i() {
        return this.F.getInputMethodMode() == 2;
    }

    public boolean j() {
        return this.E;
    }

    @Override // androidx.appcompat.view.menu.t
    public void show() {
        int iK = k();
        boolean zI = i();
        androidx.core.widget.h.a(this.F, this.f539i);
        if (this.F.isShowing()) {
            if (b.h.o.s.y(d())) {
                int width = this.f536f;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = d().getWidth();
                }
                int i2 = this.f535e;
                if (i2 == -1) {
                    if (!zI) {
                        iK = -1;
                    }
                    if (zI) {
                        this.F.setWidth(this.f536f == -1 ? -1 : 0);
                        this.F.setHeight(0);
                    } else {
                        this.F.setWidth(this.f536f == -1 ? -1 : 0);
                        this.F.setHeight(-1);
                    }
                } else if (i2 != -2) {
                    iK = i2;
                }
                this.F.setOutsideTouchable((this.o || this.n) ? false : true);
                this.F.update(d(), this.f537g, this.f538h, width < 0 ? -1 : width, iK < 0 ? -1 : iK);
                return;
            }
            return;
        }
        int width2 = this.f536f;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = d().getWidth();
        }
        int i3 = this.f535e;
        if (i3 == -1) {
            iK = -1;
        } else if (i3 != -2) {
            iK = i3;
        }
        this.F.setWidth(width2);
        this.F.setHeight(iK);
        c(true);
        this.F.setOutsideTouchable((this.o || this.n) ? false : true);
        this.F.setTouchInterceptor(this.y);
        if (this.l) {
            androidx.core.widget.h.a(this.F, this.f541k);
        }
        Method method = I;
        if (method != null) {
            try {
                method.invoke(this.F, this.D);
            } catch (Exception e2) {
                Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
            }
        }
        androidx.core.widget.h.a(this.F, d(), this.f537g, this.f538h, this.m);
        this.f534d.setSelection(-1);
        if (!this.E || this.f534d.isInTouchMode()) {
            c();
        }
        if (this.E) {
            return;
        }
        this.B.post(this.A);
    }
}
