package b.h.o;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InterfaceC0106b f2564a;

    public interface a {
    }

    /* JADX INFO: renamed from: b.h.o.b$b, reason: collision with other inner class name */
    public interface InterfaceC0106b {
        void onActionProviderVisibilityChanged(boolean z);
    }

    public b(Context context) {
    }

    public View a(MenuItem menuItem) {
        return c();
    }

    public void a(SubMenu subMenu) {
    }

    public void a(a aVar) {
    }

    public void a(InterfaceC0106b interfaceC0106b) {
        if (this.f2564a != null && interfaceC0106b != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f2564a = interfaceC0106b;
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    public abstract View c();

    public boolean d() {
        return false;
    }

    public boolean e() {
        return false;
    }

    public void f() {
        this.f2564a = null;
    }
}
