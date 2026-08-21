package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;

/* JADX INFO: loaded from: classes.dex */
public class f extends Button implements b.h.o.r, androidx.core.widget.b {
    private final e mBackgroundTintHelper;
    private final v mTextHelper;

    public f(Context context) {
        this(context, null);
    }

    public f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.buttonStyle);
    }

    public f(Context context, AttributeSet attributeSet, int i2) {
        super(n0.b(context), attributeSet, i2);
        this.mBackgroundTintHelper = new e(this);
        this.mBackgroundTintHelper.a(attributeSet, i2);
        this.mTextHelper = new v(this);
        this.mTextHelper.a(attributeSet, i2);
        this.mTextHelper.a();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            eVar.a();
        }
        v vVar = this.mTextHelper;
        if (vVar != null) {
            vVar.a();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (androidx.core.widget.b.f984a) {
            return super.getAutoSizeMaxTextSize();
        }
        v vVar = this.mTextHelper;
        if (vVar != null) {
            return vVar.c();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (androidx.core.widget.b.f984a) {
            return super.getAutoSizeMinTextSize();
        }
        v vVar = this.mTextHelper;
        if (vVar != null) {
            return vVar.d();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (androidx.core.widget.b.f984a) {
            return super.getAutoSizeStepGranularity();
        }
        v vVar = this.mTextHelper;
        if (vVar != null) {
            return vVar.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (androidx.core.widget.b.f984a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        v vVar = this.mTextHelper;
        return vVar != null ? vVar.f() : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (androidx.core.widget.b.f984a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        v vVar = this.mTextHelper;
        if (vVar != null) {
            return vVar.g();
        }
        return 0;
    }

    @Override // b.h.o.r
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Override // b.h.o.r
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        v vVar = this.mTextHelper;
        if (vVar != null) {
            vVar.a(z, i2, i3, i4, i5);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        v vVar = this.mTextHelper;
        if (vVar == null || androidx.core.widget.b.f984a || !vVar.h()) {
            return;
        }
        this.mTextHelper.b();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5) {
        if (androidx.core.widget.b.f984a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i2, i3, i4, i5);
            return;
        }
        v vVar = this.mTextHelper;
        if (vVar != null) {
            vVar.a(i2, i3, i4, i5);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i2) {
        if (androidx.core.widget.b.f984a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
            return;
        }
        v vVar = this.mTextHelper;
        if (vVar != null) {
            vVar.a(iArr, i2);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i2) {
        if (androidx.core.widget.b.f984a) {
            super.setAutoSizeTextTypeWithDefaults(i2);
            return;
        }
        v vVar = this.mTextHelper;
        if (vVar != null) {
            vVar.a(i2);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.a(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        v vVar = this.mTextHelper;
        if (vVar != null) {
            vVar.a(z);
        }
    }

    @Override // b.h.o.r
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            eVar.b(colorStateList);
        }
    }

    @Override // b.h.o.r
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        v vVar = this.mTextHelper;
        if (vVar != null) {
            vVar.a(context, i2);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f2) {
        if (androidx.core.widget.b.f984a) {
            super.setTextSize(i2, f2);
            return;
        }
        v vVar = this.mTextHelper;
        if (vVar != null) {
            vVar.a(i2, f2);
        }
    }
}
