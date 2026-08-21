package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImageView f608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o0 f609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o0 f610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o0 f611d;

    public m(ImageView imageView) {
        this.f608a = imageView;
    }

    private boolean a(Drawable drawable) {
        if (this.f611d == null) {
            this.f611d = new o0();
        }
        o0 o0Var = this.f611d;
        o0Var.a();
        ColorStateList colorStateListA = androidx.core.widget.e.a(this.f608a);
        if (colorStateListA != null) {
            o0Var.f624d = true;
            o0Var.f621a = colorStateListA;
        }
        PorterDuff.Mode modeB = androidx.core.widget.e.b(this.f608a);
        if (modeB != null) {
            o0Var.f623c = true;
            o0Var.f622b = modeB;
        }
        if (!o0Var.f624d && !o0Var.f623c) {
            return false;
        }
        j.a(drawable, o0Var, this.f608a.getDrawableState());
        return true;
    }

    private boolean e() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 21 ? this.f609b != null : i2 == 21;
    }

    void a() {
        Drawable drawable = this.f608a.getDrawable();
        if (drawable != null) {
            a0.b(drawable);
        }
        if (drawable != null) {
            if (e() && a(drawable)) {
                return;
            }
            o0 o0Var = this.f610c;
            if (o0Var != null) {
                j.a(drawable, o0Var, this.f608a.getDrawableState());
                return;
            }
            o0 o0Var2 = this.f609b;
            if (o0Var2 != null) {
                j.a(drawable, o0Var2, this.f608a.getDrawableState());
            }
        }
    }

    public void a(int i2) {
        if (i2 != 0) {
            Drawable drawableC = b.a.k.a.a.c(this.f608a.getContext(), i2);
            if (drawableC != null) {
                a0.b(drawableC);
            }
            this.f608a.setImageDrawable(drawableC);
        } else {
            this.f608a.setImageDrawable(null);
        }
        a();
    }

    void a(ColorStateList colorStateList) {
        if (this.f610c == null) {
            this.f610c = new o0();
        }
        o0 o0Var = this.f610c;
        o0Var.f621a = colorStateList;
        o0Var.f624d = true;
        a();
    }

    void a(PorterDuff.Mode mode) {
        if (this.f610c == null) {
            this.f610c = new o0();
        }
        o0 o0Var = this.f610c;
        o0Var.f622b = mode;
        o0Var.f623c = true;
        a();
    }

    public void a(AttributeSet attributeSet, int i2) {
        int iG;
        q0 q0VarA = q0.a(this.f608a.getContext(), attributeSet, b.a.j.AppCompatImageView, i2, 0);
        try {
            Drawable drawable = this.f608a.getDrawable();
            if (drawable == null && (iG = q0VarA.g(b.a.j.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = b.a.k.a.a.c(this.f608a.getContext(), iG)) != null) {
                this.f608a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                a0.b(drawable);
            }
            if (q0VarA.g(b.a.j.AppCompatImageView_tint)) {
                androidx.core.widget.e.a(this.f608a, q0VarA.a(b.a.j.AppCompatImageView_tint));
            }
            if (q0VarA.g(b.a.j.AppCompatImageView_tintMode)) {
                androidx.core.widget.e.a(this.f608a, a0.a(q0VarA.d(b.a.j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            q0VarA.a();
        }
    }

    ColorStateList b() {
        o0 o0Var = this.f610c;
        if (o0Var != null) {
            return o0Var.f621a;
        }
        return null;
    }

    PorterDuff.Mode c() {
        o0 o0Var = this.f610c;
        if (o0Var != null) {
            return o0Var.f622b;
        }
        return null;
    }

    boolean d() {
        return Build.VERSION.SDK_INT < 21 || !(this.f608a.getBackground() instanceof RippleDrawable);
    }
}
