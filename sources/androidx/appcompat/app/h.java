package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import b.a.n.b;
import b.h.o.d;

/* JADX INFO: loaded from: classes.dex */
public class h extends Dialog implements e {
    private f mDelegate;
    private final d.a mKeyDispatcher;

    class a implements d.a {
        a() {
        }

        @Override // b.h.o.d.a
        public boolean a(KeyEvent keyEvent) {
            return h.this.superDispatchKeyEvent(keyEvent);
        }
    }

    public h(Context context) {
        this(context, 0);
    }

    public h(Context context, int i2) {
        super(context, getThemeResId(context, i2));
        this.mKeyDispatcher = new a();
        getDelegate().a((Bundle) null);
        getDelegate().a();
    }

    protected h(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.mKeyDispatcher = new a();
    }

    private static int getThemeResId(Context context, int i2) {
        if (i2 != 0) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(b.a.a.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().a(view, layoutParams);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return b.h.o.d.a(this.mKeyDispatcher, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i2) {
        return (T) getDelegate().a(i2);
    }

    public f getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = f.a(this, this);
        }
        return this.mDelegate;
    }

    public androidx.appcompat.app.a getSupportActionBar() {
        return getDelegate().c();
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        getDelegate().e();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        getDelegate().d();
        super.onCreate(bundle);
        getDelegate().a(bundle);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        getDelegate().i();
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeFinished(b.a.n.b bVar) {
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeStarted(b.a.n.b bVar) {
    }

    @Override // androidx.appcompat.app.e
    public b.a.n.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i2) {
        getDelegate().c(i2);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        getDelegate().a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().b(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i2) {
        super.setTitle(i2);
        getDelegate().a(getContext().getString(i2));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().a(charSequence);
    }

    boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean supportRequestWindowFeature(int i2) {
        return getDelegate().b(i2);
    }
}
