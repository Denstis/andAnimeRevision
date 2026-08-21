package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f526a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o0 f529d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o0 f530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o0 f531f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f528c = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f527b = j.a();

    e(View view) {
        this.f526a = view;
    }

    private boolean b(Drawable drawable) {
        if (this.f531f == null) {
            this.f531f = new o0();
        }
        o0 o0Var = this.f531f;
        o0Var.a();
        ColorStateList colorStateListC = b.h.o.s.c(this.f526a);
        if (colorStateListC != null) {
            o0Var.f624d = true;
            o0Var.f621a = colorStateListC;
        }
        PorterDuff.Mode modeD = b.h.o.s.d(this.f526a);
        if (modeD != null) {
            o0Var.f623c = true;
            o0Var.f622b = modeD;
        }
        if (!o0Var.f624d && !o0Var.f623c) {
            return false;
        }
        j.a(drawable, o0Var, this.f526a.getDrawableState());
        return true;
    }

    private boolean d() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 21 ? this.f529d != null : i2 == 21;
    }

    void a() {
        Drawable background = this.f526a.getBackground();
        if (background != null) {
            if (d() && b(background)) {
                return;
            }
            o0 o0Var = this.f530e;
            if (o0Var != null) {
                j.a(background, o0Var, this.f526a.getDrawableState());
                return;
            }
            o0 o0Var2 = this.f529d;
            if (o0Var2 != null) {
                j.a(background, o0Var2, this.f526a.getDrawableState());
            }
        }
    }

    void a(int i2) {
        this.f528c = i2;
        j jVar = this.f527b;
        a(jVar != null ? jVar.b(this.f526a.getContext(), i2) : null);
        a();
    }

    void a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f529d == null) {
                this.f529d = new o0();
            }
            o0 o0Var = this.f529d;
            o0Var.f621a = colorStateList;
            o0Var.f624d = true;
        } else {
            this.f529d = null;
        }
        a();
    }

    void a(PorterDuff.Mode mode) {
        if (this.f530e == null) {
            this.f530e = new o0();
        }
        o0 o0Var = this.f530e;
        o0Var.f622b = mode;
        o0Var.f623c = true;
        a();
    }

    void a(Drawable drawable) {
        this.f528c = -1;
        a((ColorStateList) null);
        a();
    }

    void a(AttributeSet attributeSet, int i2) {
        q0 q0VarA = q0.a(this.f526a.getContext(), attributeSet, b.a.j.ViewBackgroundHelper, i2, 0);
        try {
            if (q0VarA.g(b.a.j.ViewBackgroundHelper_android_background)) {
                this.f528c = q0VarA.g(b.a.j.ViewBackgroundHelper_android_background, -1);
                ColorStateList colorStateListB = this.f527b.b(this.f526a.getContext(), this.f528c);
                if (colorStateListB != null) {
                    a(colorStateListB);
                }
            }
            if (q0VarA.g(b.a.j.ViewBackgroundHelper_backgroundTint)) {
                b.h.o.s.a(this.f526a, q0VarA.a(b.a.j.ViewBackgroundHelper_backgroundTint));
            }
            if (q0VarA.g(b.a.j.ViewBackgroundHelper_backgroundTintMode)) {
                b.h.o.s.a(this.f526a, a0.a(q0VarA.d(b.a.j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            q0VarA.a();
        }
    }

    ColorStateList b() {
        o0 o0Var = this.f530e;
        if (o0Var != null) {
            return o0Var.f621a;
        }
        return null;
    }

    void b(ColorStateList colorStateList) {
        if (this.f530e == null) {
            this.f530e = new o0();
        }
        o0 o0Var = this.f530e;
        o0Var.f621a = colorStateList;
        o0Var.f624d = true;
        a();
    }

    PorterDuff.Mode c() {
        o0 o0Var = this.f530e;
        if (o0Var != null) {
            return o0Var.f622b;
        }
        return null;
    }
}
