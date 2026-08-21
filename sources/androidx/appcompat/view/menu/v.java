package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.h;

/* JADX INFO: loaded from: classes.dex */
public class v extends h implements SubMenu {
    private k mItem;
    private h mParentMenu;

    public v(Context context, h hVar, k kVar) {
        super(context);
        this.mParentMenu = hVar;
        this.mItem = kVar;
    }

    @Override // androidx.appcompat.view.menu.h
    public boolean collapseItemActionView(k kVar) {
        return this.mParentMenu.collapseItemActionView(kVar);
    }

    @Override // androidx.appcompat.view.menu.h
    boolean dispatchMenuItemSelected(h hVar, MenuItem menuItem) {
        return super.dispatchMenuItemSelected(hVar, menuItem) || this.mParentMenu.dispatchMenuItemSelected(hVar, menuItem);
    }

    @Override // androidx.appcompat.view.menu.h
    public boolean expandItemActionView(k kVar) {
        return this.mParentMenu.expandItemActionView(kVar);
    }

    @Override // androidx.appcompat.view.menu.h
    public String getActionViewStatesKey() {
        k kVar = this.mItem;
        int itemId = kVar != null ? kVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.getActionViewStatesKey() + ":" + itemId;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.mItem;
    }

    public Menu getParentMenu() {
        return this.mParentMenu;
    }

    @Override // androidx.appcompat.view.menu.h
    public h getRootMenu() {
        return this.mParentMenu.getRootMenu();
    }

    @Override // androidx.appcompat.view.menu.h
    public boolean isGroupDividerEnabled() {
        return this.mParentMenu.isGroupDividerEnabled();
    }

    @Override // androidx.appcompat.view.menu.h
    public boolean isQwertyMode() {
        return this.mParentMenu.isQwertyMode();
    }

    @Override // androidx.appcompat.view.menu.h
    public boolean isShortcutsVisible() {
        return this.mParentMenu.isShortcutsVisible();
    }

    @Override // androidx.appcompat.view.menu.h
    public void setCallback(h.a aVar) {
        this.mParentMenu.setCallback(aVar);
    }

    @Override // androidx.appcompat.view.menu.h, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.mParentMenu.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i2) {
        return (SubMenu) super.setHeaderIconInt(i2);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.setHeaderIconInt(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i2) {
        return (SubMenu) super.setHeaderTitleInt(i2);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.setHeaderTitleInt(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.setHeaderViewInt(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i2) {
        this.mItem.setIcon(i2);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.mItem.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.h, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.mParentMenu.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.h
    public void setShortcutsVisible(boolean z) {
        this.mParentMenu.setShortcutsVisible(z);
    }
}
