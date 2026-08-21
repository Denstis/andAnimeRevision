package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;

/* JADX INFO: loaded from: classes.dex */
public class h extends CheckedTextView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f549c = {R.attr.checkMark};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f550b;

    public h(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    public h(Context context, AttributeSet attributeSet, int i2) {
        super(n0.b(context), attributeSet, i2);
        this.f550b = new v(this);
        this.f550b.a(attributeSet, i2);
        this.f550b.a();
        q0 q0VarA = q0.a(getContext(), attributeSet, f549c, i2, 0);
        setCheckMarkDrawable(q0VarA.b(0));
        q0VarA.a();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        v vVar = this.f550b;
        if (vVar != null) {
            vVar.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        l.a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i2) {
        setCheckMarkDrawable(b.a.k.a.a.c(getContext(), i2));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.a(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        v vVar = this.f550b;
        if (vVar != null) {
            vVar.a(context, i2);
        }
    }
}
