package b.h.o;

import android.view.View;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewParent f2582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewParent f2583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f2584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int[] f2586e;

    public k(View view) {
        this.f2584c = view;
    }

    private void a(int i2, ViewParent viewParent) {
        if (i2 == 0) {
            this.f2582a = viewParent;
        } else {
            if (i2 != 1) {
                return;
            }
            this.f2583b = viewParent;
        }
    }

    private ViewParent d(int i2) {
        if (i2 == 0) {
            return this.f2582a;
        }
        if (i2 != 1) {
            return null;
        }
        return this.f2583b;
    }

    public void a(boolean z) {
        if (this.f2585d) {
            s.E(this.f2584c);
        }
        this.f2585d = z;
    }

    public boolean a() {
        return a(0);
    }

    public boolean a(float f2, float f3) {
        ViewParent viewParentD;
        if (!b() || (viewParentD = d(0)) == null) {
            return false;
        }
        return v.a(viewParentD, this.f2584c, f2, f3);
    }

    public boolean a(float f2, float f3, boolean z) {
        ViewParent viewParentD;
        if (!b() || (viewParentD = d(0)) == null) {
            return false;
        }
        return v.a(viewParentD, this.f2584c, f2, f3, z);
    }

    public boolean a(int i2) {
        return d(i2) != null;
    }

    public boolean a(int i2, int i3) {
        if (a(i3)) {
            return true;
        }
        if (!b()) {
            return false;
        }
        View view = this.f2584c;
        for (ViewParent parent = this.f2584c.getParent(); parent != null; parent = parent.getParent()) {
            if (v.b(parent, view, this.f2584c, i2, i3)) {
                a(i3, parent);
                v.a(parent, view, this.f2584c, i2, i3);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    public boolean a(int i2, int i3, int i4, int i5, int[] iArr) {
        return a(i2, i3, i4, i5, iArr, 0);
    }

    public boolean a(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        ViewParent viewParentD;
        int i7;
        int i8;
        if (!b() || (viewParentD = d(i6)) == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f2584c.getLocationInWindow(iArr);
            i7 = iArr[0];
            i8 = iArr[1];
        } else {
            i7 = 0;
            i8 = 0;
        }
        v.a(viewParentD, this.f2584c, i2, i3, i4, i5, i6);
        if (iArr != null) {
            this.f2584c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i7;
            iArr[1] = iArr[1] - i8;
        }
        return true;
    }

    public boolean a(int i2, int i3, int[] iArr, int[] iArr2) {
        return a(i2, i3, iArr, iArr2, 0);
    }

    public boolean a(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        ViewParent viewParentD;
        int i5;
        int i6;
        if (!b() || (viewParentD = d(i4)) == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0) {
            if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
            return false;
        }
        if (iArr2 != null) {
            this.f2584c.getLocationInWindow(iArr2);
            i5 = iArr2[0];
            i6 = iArr2[1];
        } else {
            i5 = 0;
            i6 = 0;
        }
        if (iArr == null) {
            if (this.f2586e == null) {
                this.f2586e = new int[2];
            }
            iArr = this.f2586e;
        }
        iArr[0] = 0;
        iArr[1] = 0;
        v.a(viewParentD, this.f2584c, i2, i3, iArr, i4);
        if (iArr2 != null) {
            this.f2584c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i5;
            iArr2[1] = iArr2[1] - i6;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public boolean b() {
        return this.f2585d;
    }

    public boolean b(int i2) {
        return a(i2, 0);
    }

    public void c() {
        c(0);
    }

    public void c(int i2) {
        ViewParent viewParentD = d(i2);
        if (viewParentD != null) {
            v.a(viewParentD, this.f2584c, i2);
            a(i2, (ViewParent) null);
        }
    }
}
