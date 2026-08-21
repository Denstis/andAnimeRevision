package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: loaded from: classes.dex */
class s extends c<b.h.i.a.a> implements Menu {
    s(Context context, b.h.i.a.a aVar) {
        super(context, aVar);
    }

    @Override // android.view.Menu
    public MenuItem add(int i2) {
        return a(((b.h.i.a.a) this.f273a).add(i2));
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i3, int i4, int i5) {
        return a(((b.h.i.a.a) this.f273a).add(i2, i3, i4, i5));
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i3, int i4, CharSequence charSequence) {
        return a(((b.h.i.a.a) this.f273a).add(i2, i3, i4, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(((b.h.i.a.a) this.f273a).add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i2, int i3, int i4, ComponentName componentName, Intent[] intentArr, Intent intent, int i5, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = ((b.h.i.a.a) this.f273a).addIntentOptions(i2, i3, i4, componentName, intentArr, intent, i5, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i6 = 0; i6 < length; i6++) {
                menuItemArr[i6] = a(menuItemArr2[i6]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2) {
        return a(((b.h.i.a.a) this.f273a).addSubMenu(i2));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, int i5) {
        return a(((b.h.i.a.a) this.f273a).addSubMenu(i2, i3, i4, i5));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        return a(((b.h.i.a.a) this.f273a).addSubMenu(i2, i3, i4, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return a(((b.h.i.a.a) this.f273a).addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        b();
        ((b.h.i.a.a) this.f273a).clear();
    }

    @Override // android.view.Menu
    public void close() {
        ((b.h.i.a.a) this.f273a).close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i2) {
        return a(((b.h.i.a.a) this.f273a).findItem(i2));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i2) {
        return a(((b.h.i.a.a) this.f273a).getItem(i2));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return ((b.h.i.a.a) this.f273a).hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return ((b.h.i.a.a) this.f273a).isShortcutKey(i2, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i2, int i3) {
        return ((b.h.i.a.a) this.f273a).performIdentifierAction(i2, i3);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i2, KeyEvent keyEvent, int i3) {
        return ((b.h.i.a.a) this.f273a).performShortcut(i2, keyEvent, i3);
    }

    @Override // android.view.Menu
    public void removeGroup(int i2) {
        a(i2);
        ((b.h.i.a.a) this.f273a).removeGroup(i2);
    }

    @Override // android.view.Menu
    public void removeItem(int i2) {
        b(i2);
        ((b.h.i.a.a) this.f273a).removeItem(i2);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i2, boolean z, boolean z2) {
        ((b.h.i.a.a) this.f273a).setGroupCheckable(i2, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i2, boolean z) {
        ((b.h.i.a.a) this.f273a).setGroupEnabled(i2, z);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i2, boolean z) {
        ((b.h.i.a.a) this.f273a).setGroupVisible(i2, z);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        ((b.h.i.a.a) this.f273a).setQwertyMode(z);
    }

    @Override // android.view.Menu
    public int size() {
        return ((b.h.i.a.a) this.f273a).size();
    }
}
