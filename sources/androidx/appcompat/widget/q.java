package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;

/* JADX INFO: loaded from: classes.dex */
public class q extends RadioButton implements androidx.core.widget.j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f630c;

    public q(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.radioButtonStyle);
    }

    public q(Context context, AttributeSet attributeSet, int i2) {
        super(n0.b(context), attributeSet, i2);
        this.f629b = new i(this);
        this.f629b.a(attributeSet, i2);
        this.f630c = new v(this);
        this.f630c.a(attributeSet, i2);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        i iVar = this.f629b;
        return iVar != null ? iVar.a(compoundPaddingLeft) : compoundPaddingLeft;
    }

    public ColorStateList getSupportButtonTintList() {
        i iVar = this.f629b;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        i iVar = this.f629b;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i2) {
        setButtonDrawable(b.a.k.a.a.c(getContext(), i2));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        i iVar = this.f629b;
        if (iVar != null) {
            iVar.d();
        }
    }

    @Override // androidx.core.widget.j
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        i iVar = this.f629b;
        if (iVar != null) {
            iVar.a(colorStateList);
        }
    }

    @Override // androidx.core.widget.j
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        i iVar = this.f629b;
        if (iVar != null) {
            iVar.a(mode);
        }
    }
}
