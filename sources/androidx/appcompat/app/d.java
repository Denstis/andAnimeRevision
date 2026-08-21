package androidx.appcompat.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.v0;
import androidx.core.app.n;
import b.a.n.b;

/* JADX INFO: loaded from: classes.dex */
public class d extends b.k.a.e implements e, n.a, b {
    private f n;
    private int o = 0;
    private Resources p;

    private boolean a(int i2, KeyEvent keyEvent) {
        Window window;
        return (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    public void a(Intent intent) {
        androidx.core.app.f.a(this, intent);
    }

    public void a(Toolbar toolbar) {
        t().a(toolbar);
    }

    public void a(androidx.core.app.n nVar) {
        nVar.a((Activity) this);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        t().a(view, layoutParams);
    }

    public void b(androidx.core.app.n nVar) {
    }

    public boolean b(Intent intent) {
        return androidx.core.app.f.b(this, intent);
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        a aVarU = u();
        if (getWindow().hasFeature(0)) {
            if (aVarU == null || !aVarU.e()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.e, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        a aVarU = u();
        if (keyCode == 82 && aVarU != null && aVarU.a(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i2) {
        return (T) t().a(i2);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return t().b();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.p == null && v0.b()) {
            this.p = new v0(this, super.getResources());
        }
        Resources resources = this.p;
        return resources == null ? super.getResources() : resources;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        t().e();
    }

    @Override // androidx.core.app.n.a
    public Intent o() {
        return androidx.core.app.f.a(this);
    }

    @Override // b.k.a.e, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        t().a(configuration);
        if (this.p != null) {
            this.p.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        v();
    }

    @Override // b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i2;
        f fVarT = t();
        fVarT.d();
        fVarT.a(bundle);
        if (fVarT.a() && (i2 = this.o) != 0) {
            if (Build.VERSION.SDK_INT >= 23) {
                onApplyThemeResource(getTheme(), this.o, false);
            } else {
                setTheme(i2);
            }
        }
        super.onCreate(bundle);
    }

    @Override // b.k.a.e, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        t().f();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (a(i2, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // b.k.a.e, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        a aVarU = u();
        if (menuItem.getItemId() != 16908332 || aVarU == null || (aVarU.g() & 4) == 0) {
            return false;
        }
        return w();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        return super.onMenuOpened(i2, menu);
    }

    @Override // b.k.a.e, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
        super.onPanelClosed(i2, menu);
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        t().b(bundle);
    }

    @Override // b.k.a.e, android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        t().g();
    }

    @Override // b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        t().c(bundle);
    }

    @Override // b.k.a.e, android.app.Activity
    protected void onStart() {
        super.onStart();
        t().h();
    }

    @Override // b.k.a.e, android.app.Activity
    protected void onStop() {
        super.onStop();
        t().i();
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeFinished(b.a.n.b bVar) {
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeStarted(b.a.n.b bVar) {
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i2) {
        super.onTitleChanged(charSequence, i2);
        t().a(charSequence);
    }

    @Override // androidx.appcompat.app.e
    public b.a.n.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        a aVarU = u();
        if (getWindow().hasFeature(0)) {
            if (aVarU == null || !aVarU.k()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // b.k.a.e
    public void s() {
        t().e();
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        t().c(i2);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        t().a(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        t().b(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        super.setTheme(i2);
        this.o = i2;
    }

    public f t() {
        if (this.n == null) {
            this.n = f.a(this, this);
        }
        return this.n;
    }

    public a u() {
        return t().c();
    }

    @Deprecated
    public void v() {
    }

    public boolean w() {
        Intent intentO = o();
        if (intentO == null) {
            return false;
        }
        if (!b(intentO)) {
            a(intentO);
            return true;
        }
        androidx.core.app.n nVarA = androidx.core.app.n.a((Context) this);
        a(nVarA);
        b(nVarA);
        nVarA.a();
        try {
            androidx.core.app.a.a((Activity) this);
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }
}
