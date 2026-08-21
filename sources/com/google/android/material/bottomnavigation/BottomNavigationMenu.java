package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.k;

/* JADX INFO: loaded from: classes.dex */
public final class BottomNavigationMenu extends h {
    public static final int MAX_ITEM_COUNT = 5;

    public BottomNavigationMenu(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.h
    protected MenuItem addInternal(int i2, int i3, int i4, CharSequence charSequence) {
        if (size() + 1 > 5) {
            throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
        }
        stopDispatchingItemsChanged();
        MenuItem menuItemAddInternal = super.addInternal(i2, i3, i4, charSequence);
        if (menuItemAddInternal instanceof k) {
            ((k) menuItemAddInternal).c(true);
        }
        startDispatchingItemsChanged();
        return menuItemAddInternal;
    }

    @Override // androidx.appcompat.view.menu.h, android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }
}
