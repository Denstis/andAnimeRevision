package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.e;
import androidx.lifecycle.o;
import b.h.o.d;

/* JADX INFO: loaded from: classes.dex */
public class e extends Activity implements androidx.lifecycle.g, d.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.lifecycle.h f829b;

    public e() {
        new b.e.g();
        this.f829b = new androidx.lifecycle.h(this);
    }

    @Override // b.h.o.d.a
    public boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !b.h.o.d.a(decorView, keyEvent)) {
            return b.h.o.d.a(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !b.h.o.d.a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.lifecycle.g
    public androidx.lifecycle.e getLifecycle() {
        return this.f829b;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o.a(this);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        this.f829b.a(e.b.CREATED);
        super.onSaveInstanceState(bundle);
    }
}
