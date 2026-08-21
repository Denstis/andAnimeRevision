package b.h.o;

import android.os.Build;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f2563a;

    private a0(Object obj) {
        this.f2563a = obj;
    }

    static a0 a(Object obj) {
        if (obj == null) {
            return null;
        }
        return new a0(obj);
    }

    static Object a(a0 a0Var) {
        if (a0Var == null) {
            return null;
        }
        return a0Var.f2563a;
    }

    public a0 a() {
        if (Build.VERSION.SDK_INT >= 20) {
            return new a0(((WindowInsets) this.f2563a).consumeSystemWindowInsets());
        }
        return null;
    }

    public a0 a(int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 20) {
            return new a0(((WindowInsets) this.f2563a).replaceSystemWindowInsets(i2, i3, i4, i5));
        }
        return null;
    }

    public int b() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f2563a).getSystemWindowInsetBottom();
        }
        return 0;
    }

    public int c() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f2563a).getSystemWindowInsetLeft();
        }
        return 0;
    }

    public int d() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f2563a).getSystemWindowInsetRight();
        }
        return 0;
    }

    public int e() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f2563a).getSystemWindowInsetTop();
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a0.class != obj.getClass()) {
            return false;
        }
        Object obj2 = this.f2563a;
        Object obj3 = ((a0) obj).f2563a;
        return obj2 == null ? obj3 == null : obj2.equals(obj3);
    }

    public boolean f() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f2563a).hasSystemWindowInsets();
        }
        return false;
    }

    public boolean g() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((WindowInsets) this.f2563a).isConsumed();
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f2563a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }
}
