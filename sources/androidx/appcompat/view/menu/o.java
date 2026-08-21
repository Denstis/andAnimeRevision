package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.p;

/* JADX INFO: loaded from: classes.dex */
public class o implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f340f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f341g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f342h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private p.a f343i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private n f344j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PopupWindow.OnDismissListener f345k;
    private final PopupWindow.OnDismissListener l;

    class a implements PopupWindow.OnDismissListener {
        a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            o.this.d();
        }
    }

    public o(Context context, h hVar, View view, boolean z, int i2) {
        this(context, hVar, view, z, i2, 0);
    }

    public o(Context context, h hVar, View view, boolean z, int i2, int i3) {
        this.f341g = 8388611;
        this.l = new a();
        this.f335a = context;
        this.f336b = hVar;
        this.f340f = view;
        this.f337c = z;
        this.f338d = i2;
        this.f339e = i3;
    }

    private void a(int i2, int i3, boolean z, boolean z2) {
        n nVarB = b();
        nVarB.b(z2);
        if (z) {
            if ((b.h.o.c.a(this.f341g, b.h.o.s.k(this.f340f)) & 7) == 5) {
                i2 -= this.f340f.getWidth();
            }
            nVarB.b(i2);
            nVarB.c(i3);
            int i4 = (int) ((this.f335a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            nVarB.a(new Rect(i2 - i4, i3 - i4, i2 + i4, i3 + i4));
        }
        nVarB.show();
    }

    private n g() {
        Display defaultDisplay = ((WindowManager) this.f335a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        n eVar = Math.min(point.x, point.y) >= this.f335a.getResources().getDimensionPixelSize(b.a.d.abc_cascading_menus_min_smallest_width) ? new e(this.f335a, this.f340f, this.f338d, this.f339e, this.f337c) : new u(this.f335a, this.f336b, this.f340f, this.f338d, this.f339e, this.f337c);
        eVar.a(this.f336b);
        eVar.a(this.l);
        eVar.a(this.f340f);
        eVar.setCallback(this.f343i);
        eVar.a(this.f342h);
        eVar.a(this.f341g);
        return eVar;
    }

    public void a() {
        if (c()) {
            this.f344j.dismiss();
        }
    }

    public void a(int i2) {
        this.f341g = i2;
    }

    public void a(View view) {
        this.f340f = view;
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.f345k = onDismissListener;
    }

    public void a(p.a aVar) {
        this.f343i = aVar;
        n nVar = this.f344j;
        if (nVar != null) {
            nVar.setCallback(aVar);
        }
    }

    public void a(boolean z) {
        this.f342h = z;
        n nVar = this.f344j;
        if (nVar != null) {
            nVar.a(z);
        }
    }

    public boolean a(int i2, int i3) {
        if (c()) {
            return true;
        }
        if (this.f340f == null) {
            return false;
        }
        a(i2, i3, true, true);
        return true;
    }

    public n b() {
        if (this.f344j == null) {
            this.f344j = g();
        }
        return this.f344j;
    }

    public boolean c() {
        n nVar = this.f344j;
        return nVar != null && nVar.a();
    }

    protected void d() {
        this.f344j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f345k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void e() {
        if (!f()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean f() {
        if (c()) {
            return true;
        }
        if (this.f340f == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }
}
