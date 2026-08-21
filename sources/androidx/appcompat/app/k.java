package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.r0;
import androidx.appcompat.widget.z;
import b.h.o.s;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class k extends androidx.appcompat.app.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    z f182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Window.Callback f184c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<a.b> f187f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f188g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Toolbar.f f189h = new b();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k.this.m();
        }
    }

    class b implements Toolbar.f {
        b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.f
        public boolean onMenuItemClick(MenuItem menuItem) {
            return k.this.f184c.onMenuItemSelected(0, menuItem);
        }
    }

    private final class c implements p.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f192b;

        c() {
        }

        @Override // androidx.appcompat.view.menu.p.a
        public boolean a(androidx.appcompat.view.menu.h hVar) {
            Window.Callback callback = k.this.f184c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(108, hVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.p.a
        public void onCloseMenu(androidx.appcompat.view.menu.h hVar, boolean z) {
            if (this.f192b) {
                return;
            }
            this.f192b = true;
            k.this.f182a.g();
            Window.Callback callback = k.this.f184c;
            if (callback != null) {
                callback.onPanelClosed(108, hVar);
            }
            this.f192b = false;
        }
    }

    private final class d implements h.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.h.a
        public boolean onMenuItemSelected(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.h.a
        public void onMenuModeChange(androidx.appcompat.view.menu.h hVar) {
            k kVar = k.this;
            if (kVar.f184c != null) {
                if (kVar.f182a.a()) {
                    k.this.f184c.onPanelClosed(108, hVar);
                } else if (k.this.f184c.onPreparePanel(0, null, hVar)) {
                    k.this.f184c.onMenuOpened(108, hVar);
                }
            }
        }
    }

    private class e extends b.a.n.i {
        public e(Window.Callback callback) {
            super(callback);
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public View onCreatePanelView(int i2) {
            return i2 == 0 ? new View(k.this.f182a.getContext()) : super.onCreatePanelView(i2);
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public boolean onPreparePanel(int i2, View view, Menu menu) {
            boolean zOnPreparePanel = super.onPreparePanel(i2, view, menu);
            if (zOnPreparePanel) {
                k kVar = k.this;
                if (!kVar.f183b) {
                    kVar.f182a.b();
                    k.this.f183b = true;
                }
            }
            return zOnPreparePanel;
        }
    }

    k(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f182a = new r0(toolbar, false);
        this.f184c = new e(callback);
        this.f182a.setWindowCallback(this.f184c);
        toolbar.setOnMenuItemClickListener(this.f189h);
        this.f182a.setWindowTitle(charSequence);
    }

    private Menu n() {
        if (!this.f185d) {
            this.f182a.a(new c(), new d());
            this.f185d = true;
        }
        return this.f182a.i();
    }

    public void a(int i2, int i3) {
        this.f182a.a((i2 & i3) | ((i3 ^ (-1)) & this.f182a.l()));
    }

    @Override // androidx.appcompat.app.a
    public void a(Configuration configuration) {
        super.a(configuration);
    }

    @Override // androidx.appcompat.app.a
    public void a(CharSequence charSequence) {
        this.f182a.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public boolean a(int i2, KeyEvent keyEvent) {
        Menu menuN = n();
        if (menuN == null) {
            return false;
        }
        menuN.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuN.performShortcut(i2, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            k();
        }
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void b(CharSequence charSequence) {
        this.f182a.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void b(boolean z) {
        if (z == this.f186e) {
            return;
        }
        this.f186e = z;
        int size = this.f187f.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f187f.get(i2).a(z);
        }
    }

    @Override // androidx.appcompat.app.a
    public void c(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void d(boolean z) {
        a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.a
    public void e(boolean z) {
        a(z ? 2 : 0, 2);
    }

    @Override // androidx.appcompat.app.a
    public boolean e() {
        return this.f182a.e();
    }

    @Override // androidx.appcompat.app.a
    public void f(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public boolean f() {
        if (!this.f182a.h()) {
            return false;
        }
        this.f182a.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public int g() {
        return this.f182a.l();
    }

    @Override // androidx.appcompat.app.a
    public Context h() {
        return this.f182a.getContext();
    }

    @Override // androidx.appcompat.app.a
    public boolean i() {
        this.f182a.k().removeCallbacks(this.f188g);
        s.a(this.f182a.k(), this.f188g);
        return true;
    }

    @Override // androidx.appcompat.app.a
    void j() {
        this.f182a.k().removeCallbacks(this.f188g);
    }

    @Override // androidx.appcompat.app.a
    public boolean k() {
        return this.f182a.f();
    }

    public Window.Callback l() {
        return this.f184c;
    }

    void m() {
        Menu menuN = n();
        androidx.appcompat.view.menu.h hVar = menuN instanceof androidx.appcompat.view.menu.h ? (androidx.appcompat.view.menu.h) menuN : null;
        if (hVar != null) {
            hVar.stopDispatchingItemsChanged();
        }
        try {
            menuN.clear();
            if (!this.f184c.onCreatePanelMenu(0, menuN) || !this.f184c.onPreparePanel(0, null, menuN)) {
                menuN.clear();
            }
        } finally {
            if (hVar != null) {
                hVar.startDispatchingItemsChanged();
            }
        }
    }
}
