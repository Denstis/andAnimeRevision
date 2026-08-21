package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.l;
import b.h.o.b;

/* JADX INFO: loaded from: classes.dex */
class m extends l {

    class a extends l.a implements ActionProvider.VisibilityListener {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        b.InterfaceC0106b f333d;

        public a(m mVar, Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // b.h.o.b
        public View a(MenuItem menuItem) {
            return this.f328b.onCreateActionView(menuItem);
        }

        @Override // b.h.o.b
        public void a(b.InterfaceC0106b interfaceC0106b) {
            this.f333d = interfaceC0106b;
            this.f328b.setVisibilityListener(interfaceC0106b != null ? this : null);
        }

        @Override // b.h.o.b
        public boolean b() {
            return this.f328b.isVisible();
        }

        @Override // b.h.o.b
        public boolean e() {
            return this.f328b.overridesItemVisibility();
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            b.InterfaceC0106b interfaceC0106b = this.f333d;
            if (interfaceC0106b != null) {
                interfaceC0106b.onActionProviderVisibilityChanged(z);
            }
        }
    }

    m(Context context, b.h.i.a.b bVar) {
        super(context, bVar);
    }

    @Override // androidx.appcompat.view.menu.l
    l.a a(ActionProvider actionProvider) {
        return new a(this, this.f270b, actionProvider);
    }
}
