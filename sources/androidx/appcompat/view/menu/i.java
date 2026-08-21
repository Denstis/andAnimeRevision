package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.c;
import androidx.appcompat.view.menu.p;

/* JADX INFO: loaded from: classes.dex */
class i implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, p.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.appcompat.app.c f312c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    f f313d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private p.a f314e;

    public i(h hVar) {
        this.f311b = hVar;
    }

    public void a() {
        androidx.appcompat.app.c cVar = this.f312c;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    public void a(IBinder iBinder) {
        h hVar = this.f311b;
        c.a aVar = new c.a(hVar.getContext());
        this.f313d = new f(aVar.b(), b.a.g.abc_list_menu_item_layout);
        this.f313d.setCallback(this);
        this.f311b.addMenuPresenter(this.f313d);
        aVar.a(this.f313d.a(), this);
        View headerView = hVar.getHeaderView();
        if (headerView != null) {
            aVar.a(headerView);
        } else {
            aVar.a(hVar.getHeaderIcon());
            aVar.b(hVar.getHeaderTitle());
        }
        aVar.a((DialogInterface.OnKeyListener) this);
        this.f312c = aVar.a();
        this.f312c.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f312c.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f312c.show();
    }

    @Override // androidx.appcompat.view.menu.p.a
    public boolean a(h hVar) {
        p.a aVar = this.f314e;
        if (aVar != null) {
            return aVar.a(hVar);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        this.f311b.performItemAction((k) this.f313d.a().getItem(i2), 0);
    }

    @Override // androidx.appcompat.view.menu.p.a
    public void onCloseMenu(h hVar, boolean z) {
        if (z || hVar == this.f311b) {
            a();
        }
        p.a aVar = this.f314e;
        if (aVar != null) {
            aVar.onCloseMenu(hVar, z);
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f313d.onCloseMenu(this.f311b, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i2 == 82 || i2 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f312c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f312c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f311b.close(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f311b.performShortcut(i2, keyEvent, 0);
    }
}
