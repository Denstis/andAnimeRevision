package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
class o extends PopupWindow {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f619b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f620a;

    static {
        f619b = Build.VERSION.SDK_INT < 21;
    }

    public o(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        a(context, attributeSet, i2, i3);
    }

    private void a(Context context, AttributeSet attributeSet, int i2, int i3) {
        q0 q0VarA = q0.a(context, attributeSet, b.a.j.PopupWindow, i2, i3);
        if (q0VarA.g(b.a.j.PopupWindow_overlapAnchor)) {
            a(q0VarA.a(b.a.j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(q0VarA.b(b.a.j.PopupWindow_android_popupBackground));
        q0VarA.a();
    }

    private void a(boolean z) {
        if (f619b) {
            this.f620a = z;
        } else {
            androidx.core.widget.h.a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i3) {
        if (f619b && this.f620a) {
            i3 -= view.getHeight();
        }
        super.showAsDropDown(view, i2, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i3, int i4) {
        if (f619b && this.f620a) {
            i3 -= view.getHeight();
        }
        super.showAsDropDown(view, i2, i3, i4);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i2, int i3, int i4, int i5) {
        if (f619b && this.f620a) {
            i3 -= view.getHeight();
        }
        super.update(view, i2, i3, i4, i5);
    }
}
