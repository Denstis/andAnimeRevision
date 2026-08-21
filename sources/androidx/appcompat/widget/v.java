package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.core.content.c.f;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o0 f694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o0 f695c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o0 f696d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o0 f697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o0 f698f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private o0 f699g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final x f700h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f701i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Typeface f702j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f703k;

    class a extends f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WeakReference f704a;

        a(WeakReference weakReference) {
            this.f704a = weakReference;
        }

        @Override // androidx.core.content.c.f.a
        public void onFontRetrievalFailed(int i2) {
        }

        @Override // androidx.core.content.c.f.a
        public void onFontRetrieved(Typeface typeface) {
            v.this.a(this.f704a, typeface);
        }
    }

    v(TextView textView) {
        this.f693a = textView;
        this.f700h = new x(this.f693a);
    }

    private static o0 a(Context context, j jVar, int i2) {
        ColorStateList colorStateListB = jVar.b(context, i2);
        if (colorStateListB == null) {
            return null;
        }
        o0 o0Var = new o0();
        o0Var.f624d = true;
        o0Var.f621a = colorStateListB;
        return o0Var;
    }

    private void a(Context context, q0 q0Var) {
        String strD;
        Typeface typeface;
        this.f701i = q0Var.d(b.a.j.TextAppearance_android_textStyle, this.f701i);
        if (q0Var.g(b.a.j.TextAppearance_android_fontFamily) || q0Var.g(b.a.j.TextAppearance_fontFamily)) {
            this.f702j = null;
            int i2 = q0Var.g(b.a.j.TextAppearance_fontFamily) ? b.a.j.TextAppearance_fontFamily : b.a.j.TextAppearance_android_fontFamily;
            if (!context.isRestricted()) {
                try {
                    this.f702j = q0Var.a(i2, this.f701i, new a(new WeakReference(this.f693a)));
                    this.f703k = this.f702j == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                }
            }
            if (this.f702j != null || (strD = q0Var.d(i2)) == null) {
                return;
            }
            this.f702j = Typeface.create(strD, this.f701i);
            return;
        }
        if (q0Var.g(b.a.j.TextAppearance_android_typeface)) {
            this.f703k = false;
            int iD = q0Var.d(b.a.j.TextAppearance_android_typeface, 1);
            if (iD == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (iD == 2) {
                typeface = Typeface.SERIF;
            } else if (iD != 3) {
                return;
            } else {
                typeface = Typeface.MONOSPACE;
            }
            this.f702j = typeface;
        }
    }

    private void a(Drawable drawable, o0 o0Var) {
        if (drawable == null || o0Var == null) {
            return;
        }
        j.a(drawable, o0Var, this.f693a.getDrawableState());
    }

    private void b(int i2, float f2) {
        this.f700h.a(i2, f2);
    }

    void a() {
        if (this.f694b != null || this.f695c != null || this.f696d != null || this.f697e != null) {
            Drawable[] compoundDrawables = this.f693a.getCompoundDrawables();
            a(compoundDrawables[0], this.f694b);
            a(compoundDrawables[1], this.f695c);
            a(compoundDrawables[2], this.f696d);
            a(compoundDrawables[3], this.f697e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f698f == null && this.f699g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f693a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f698f);
            a(compoundDrawablesRelative[2], this.f699g);
        }
    }

    void a(int i2) {
        this.f700h.a(i2);
    }

    void a(int i2, float f2) {
        if (androidx.core.widget.b.f984a || h()) {
            return;
        }
        b(i2, f2);
    }

    void a(int i2, int i3, int i4, int i5) {
        this.f700h.a(i2, i3, i4, i5);
    }

    void a(Context context, int i2) {
        ColorStateList colorStateListA;
        q0 q0VarA = q0.a(context, i2, b.a.j.TextAppearance);
        if (q0VarA.g(b.a.j.TextAppearance_textAllCaps)) {
            a(q0VarA.a(b.a.j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && q0VarA.g(b.a.j.TextAppearance_android_textColor) && (colorStateListA = q0VarA.a(b.a.j.TextAppearance_android_textColor)) != null) {
            this.f693a.setTextColor(colorStateListA);
        }
        if (q0VarA.g(b.a.j.TextAppearance_android_textSize) && q0VarA.c(b.a.j.TextAppearance_android_textSize, -1) == 0) {
            this.f693a.setTextSize(0, 0.0f);
        }
        a(context, q0VarA);
        q0VarA.a();
        Typeface typeface = this.f702j;
        if (typeface != null) {
            this.f693a.setTypeface(typeface, this.f701i);
        }
    }

    @SuppressLint({"NewApi"})
    void a(AttributeSet attributeSet, int i2) {
        ColorStateList colorStateListA;
        ColorStateList colorStateListA2;
        boolean z;
        boolean zA;
        Context context = this.f693a.getContext();
        j jVarA = j.a();
        q0 q0VarA = q0.a(context, attributeSet, b.a.j.AppCompatTextHelper, i2, 0);
        int iG = q0VarA.g(b.a.j.AppCompatTextHelper_android_textAppearance, -1);
        if (q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableLeft)) {
            this.f694b = a(context, jVarA, q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableTop)) {
            this.f695c = a(context, jVarA, q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableRight)) {
            this.f696d = a(context, jVarA, q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableBottom)) {
            this.f697e = a(context, jVarA, q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableStart)) {
                this.f698f = a(context, jVarA, q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableEnd)) {
                this.f699g = a(context, jVarA, q0VarA.g(b.a.j.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        q0VarA.a();
        boolean z2 = this.f693a.getTransformationMethod() instanceof PasswordTransformationMethod;
        boolean z3 = true;
        if (iG != -1) {
            q0 q0VarA2 = q0.a(context, iG, b.a.j.TextAppearance);
            if (z2 || !q0VarA2.g(b.a.j.TextAppearance_textAllCaps)) {
                z = false;
                zA = false;
            } else {
                zA = q0VarA2.a(b.a.j.TextAppearance_textAllCaps, false);
                z = true;
            }
            a(context, q0VarA2);
            if (Build.VERSION.SDK_INT < 23) {
                ColorStateList colorStateListA3 = q0VarA2.g(b.a.j.TextAppearance_android_textColor) ? q0VarA2.a(b.a.j.TextAppearance_android_textColor) : null;
                colorStateListA2 = q0VarA2.g(b.a.j.TextAppearance_android_textColorHint) ? q0VarA2.a(b.a.j.TextAppearance_android_textColorHint) : null;
                ColorStateList colorStateList = colorStateListA3;
                colorStateListA = q0VarA2.g(b.a.j.TextAppearance_android_textColorLink) ? q0VarA2.a(b.a.j.TextAppearance_android_textColorLink) : null;
                colorStateListA = colorStateList;
            } else {
                colorStateListA = null;
                colorStateListA2 = null;
            }
            q0VarA2.a();
        } else {
            colorStateListA = null;
            colorStateListA2 = null;
            z = false;
            zA = false;
        }
        q0 q0VarA3 = q0.a(context, attributeSet, b.a.j.TextAppearance, i2, 0);
        if (z2 || !q0VarA3.g(b.a.j.TextAppearance_textAllCaps)) {
            z3 = z;
        } else {
            zA = q0VarA3.a(b.a.j.TextAppearance_textAllCaps, false);
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (q0VarA3.g(b.a.j.TextAppearance_android_textColor)) {
                colorStateListA = q0VarA3.a(b.a.j.TextAppearance_android_textColor);
            }
            if (q0VarA3.g(b.a.j.TextAppearance_android_textColorHint)) {
                colorStateListA2 = q0VarA3.a(b.a.j.TextAppearance_android_textColorHint);
            }
            if (q0VarA3.g(b.a.j.TextAppearance_android_textColorLink)) {
                colorStateListA = q0VarA3.a(b.a.j.TextAppearance_android_textColorLink);
            }
        }
        if (Build.VERSION.SDK_INT >= 28 && q0VarA3.g(b.a.j.TextAppearance_android_textSize) && q0VarA3.c(b.a.j.TextAppearance_android_textSize, -1) == 0) {
            this.f693a.setTextSize(0, 0.0f);
        }
        a(context, q0VarA3);
        q0VarA3.a();
        if (colorStateListA != null) {
            this.f693a.setTextColor(colorStateListA);
        }
        if (colorStateListA2 != null) {
            this.f693a.setHintTextColor(colorStateListA2);
        }
        if (colorStateListA != null) {
            this.f693a.setLinkTextColor(colorStateListA);
        }
        if (!z2 && z3) {
            a(zA);
        }
        Typeface typeface = this.f702j;
        if (typeface != null) {
            this.f693a.setTypeface(typeface, this.f701i);
        }
        this.f700h.a(attributeSet, i2);
        if (androidx.core.widget.b.f984a && this.f700h.f() != 0) {
            int[] iArrE = this.f700h.e();
            if (iArrE.length > 0) {
                if (this.f693a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f693a.setAutoSizeTextTypeUniformWithConfiguration(this.f700h.c(), this.f700h.b(), this.f700h.d(), 0);
                } else {
                    this.f693a.setAutoSizeTextTypeUniformWithPresetSizes(iArrE, 0);
                }
            }
        }
        q0 q0VarA4 = q0.a(context, attributeSet, b.a.j.AppCompatTextView);
        int iC = q0VarA4.c(b.a.j.AppCompatTextView_firstBaselineToTopHeight, -1);
        int iC2 = q0VarA4.c(b.a.j.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int iC3 = q0VarA4.c(b.a.j.AppCompatTextView_lineHeight, -1);
        q0VarA4.a();
        if (iC != -1) {
            androidx.core.widget.i.a(this.f693a, iC);
        }
        if (iC2 != -1) {
            androidx.core.widget.i.b(this.f693a, iC2);
        }
        if (iC3 != -1) {
            androidx.core.widget.i.c(this.f693a, iC3);
        }
    }

    void a(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f703k) {
            this.f702j = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.f701i);
            }
        }
    }

    void a(boolean z) {
        this.f693a.setAllCaps(z);
    }

    void a(boolean z, int i2, int i3, int i4, int i5) {
        if (androidx.core.widget.b.f984a) {
            return;
        }
        b();
    }

    void a(int[] iArr, int i2) {
        this.f700h.a(iArr, i2);
    }

    void b() {
        this.f700h.a();
    }

    int c() {
        return this.f700h.b();
    }

    int d() {
        return this.f700h.c();
    }

    int e() {
        return this.f700h.d();
    }

    int[] f() {
        return this.f700h.e();
    }

    int g() {
        return this.f700h.f();
    }

    boolean h() {
        return this.f700h.g();
    }
}
