package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* JADX INFO: loaded from: classes.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CompoundButton f552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f553b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f554c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f555d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f556e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f557f;

    i(CompoundButton compoundButton) {
        this.f552a = compoundButton;
    }

    int a(int i2) {
        Drawable drawableA;
        return (Build.VERSION.SDK_INT >= 17 || (drawableA = androidx.core.widget.c.a(this.f552a)) == null) ? i2 : i2 + drawableA.getIntrinsicWidth();
    }

    void a() {
        Drawable drawableA = androidx.core.widget.c.a(this.f552a);
        if (drawableA != null) {
            if (this.f555d || this.f556e) {
                Drawable drawableMutate = androidx.core.graphics.drawable.a.i(drawableA).mutate();
                if (this.f555d) {
                    androidx.core.graphics.drawable.a.a(drawableMutate, this.f553b);
                }
                if (this.f556e) {
                    androidx.core.graphics.drawable.a.a(drawableMutate, this.f554c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f552a.getDrawableState());
                }
                this.f552a.setButtonDrawable(drawableMutate);
            }
        }
    }

    void a(ColorStateList colorStateList) {
        this.f553b = colorStateList;
        this.f555d = true;
        a();
    }

    void a(PorterDuff.Mode mode) {
        this.f554c = mode;
        this.f556e = true;
        a();
    }

    void a(AttributeSet attributeSet, int i2) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.f552a.getContext().obtainStyledAttributes(attributeSet, b.a.j.CompoundButton, i2, 0);
        try {
            if (typedArrayObtainStyledAttributes.hasValue(b.a.j.CompoundButton_android_button) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(b.a.j.CompoundButton_android_button, 0)) != 0) {
                this.f552a.setButtonDrawable(b.a.k.a.a.c(this.f552a.getContext(), resourceId));
            }
            if (typedArrayObtainStyledAttributes.hasValue(b.a.j.CompoundButton_buttonTint)) {
                androidx.core.widget.c.a(this.f552a, typedArrayObtainStyledAttributes.getColorStateList(b.a.j.CompoundButton_buttonTint));
            }
            if (typedArrayObtainStyledAttributes.hasValue(b.a.j.CompoundButton_buttonTintMode)) {
                androidx.core.widget.c.a(this.f552a, a0.a(typedArrayObtainStyledAttributes.getInt(b.a.j.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    ColorStateList b() {
        return this.f553b;
    }

    PorterDuff.Mode c() {
        return this.f554c;
    }

    void d() {
        if (this.f557f) {
            this.f557f = false;
        } else {
            this.f557f = true;
            a();
        }
    }
}
