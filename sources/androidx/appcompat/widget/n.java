package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;

/* JADX INFO: loaded from: classes.dex */
public class n extends MultiAutoCompleteTextView implements b.h.o.r {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f612d = {R.attr.popupBackground};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f614c;

    public n(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.autoCompleteTextViewStyle);
    }

    public n(Context context, AttributeSet attributeSet, int i2) {
        super(n0.b(context), attributeSet, i2);
        q0 q0VarA = q0.a(getContext(), attributeSet, f612d, i2, 0);
        if (q0VarA.g(0)) {
            setDropDownBackgroundDrawable(q0VarA.b(0));
        }
        q0VarA.a();
        this.f613b = new e(this);
        this.f613b.a(attributeSet, i2);
        this.f614c = new v(this);
        this.f614c.a(attributeSet, i2);
        this.f614c.a();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f613b;
        if (eVar != null) {
            eVar.a();
        }
        v vVar = this.f614c;
        if (vVar != null) {
            vVar.a();
        }
    }

    @Override // b.h.o.r
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f613b;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Override // b.h.o.r
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f613b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        l.a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f613b;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        e eVar = this.f613b;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i2) {
        setDropDownBackgroundDrawable(b.a.k.a.a.c(getContext(), i2));
    }

    @Override // b.h.o.r
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f613b;
        if (eVar != null) {
            eVar.b(colorStateList);
        }
    }

    @Override // b.h.o.r
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f613b;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        v vVar = this.f614c;
        if (vVar != null) {
            vVar.a(context, i2);
        }
    }
}
