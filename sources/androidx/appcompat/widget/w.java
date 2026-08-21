package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import b.h.m.c;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class w extends TextView implements b.h.o.r, androidx.core.widget.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Future<b.h.m.c> f710d;

    public w(Context context) {
        this(context, null);
    }

    public w(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public w(Context context, AttributeSet attributeSet, int i2) {
        super(n0.b(context), attributeSet, i2);
        this.f708b = new e(this);
        this.f708b.a(attributeSet, i2);
        this.f709c = new v(this);
        this.f709c.a(attributeSet, i2);
        this.f709c.a();
    }

    private void c() {
        Future<b.h.m.c> future = this.f710d;
        if (future != null) {
            try {
                this.f710d = null;
                androidx.core.widget.i.a(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f708b;
        if (eVar != null) {
            eVar.a();
        }
        v vVar = this.f709c;
        if (vVar != null) {
            vVar.a();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (androidx.core.widget.b.f984a) {
            return super.getAutoSizeMaxTextSize();
        }
        v vVar = this.f709c;
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
        v vVar = this.f709c;
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
        v vVar = this.f709c;
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
        v vVar = this.f709c;
        return vVar != null ? vVar.f() : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (androidx.core.widget.b.f984a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        v vVar = this.f709c;
        if (vVar != null) {
            return vVar.g();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return androidx.core.widget.i.b(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return androidx.core.widget.i.c(this);
    }

    @Override // b.h.o.r
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f708b;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Override // b.h.o.r
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f708b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        c();
        return super.getText();
    }

    public c.a getTextMetricsParamsCompat() {
        return androidx.core.widget.i.f(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        l.a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        v vVar = this.f709c;
        if (vVar != null) {
            vVar.a(z, i2, i3, i4, i5);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i2, int i3) {
        c();
        super.onMeasure(i2, i3);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        v vVar = this.f709c;
        if (vVar == null || androidx.core.widget.b.f984a || !vVar.h()) {
            return;
        }
        this.f709c.b();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5) {
        if (androidx.core.widget.b.f984a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i2, i3, i4, i5);
            return;
        }
        v vVar = this.f709c;
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
        v vVar = this.f709c;
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
        v vVar = this.f709c;
        if (vVar != null) {
            vVar.a(i2);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f708b;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        e eVar = this.f708b;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.a(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i2);
        } else {
            androidx.core.widget.i.a(this, i2);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i2);
        } else {
            androidx.core.widget.i.b(this, i2);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i2) {
        androidx.core.widget.i.c(this, i2);
    }

    public void setPrecomputedText(b.h.m.c cVar) {
        androidx.core.widget.i.a(this, cVar);
    }

    @Override // b.h.o.r
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f708b;
        if (eVar != null) {
            eVar.b(colorStateList);
        }
    }

    @Override // b.h.o.r
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f708b;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        v vVar = this.f709c;
        if (vVar != null) {
            vVar.a(context, i2);
        }
    }

    public void setTextFuture(Future<b.h.m.c> future) {
        this.f710d = future;
        requestLayout();
    }

    public void setTextMetricsParamsCompat(c.a aVar) {
        androidx.core.widget.i.a(this, aVar);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f2) {
        if (androidx.core.widget.b.f984a) {
            super.setTextSize(i2, f2);
            return;
        }
        v vVar = this.f709c;
        if (vVar != null) {
            vVar.a(i2, f2);
        }
    }
}
