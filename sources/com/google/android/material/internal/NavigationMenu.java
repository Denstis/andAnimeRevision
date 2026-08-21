package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.k;

/* JADX INFO: loaded from: classes.dex */
public class NavigationMenu extends h {
    public NavigationMenu(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.h, android.view.Menu
    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        k kVar = (k) addInternal(i2, i3, i4, charSequence);
        NavigationSubMenu navigationSubMenu = new NavigationSubMenu(getContext(), this, kVar);
        kVar.a(navigationSubMenu);
        return navigationSubMenu;
    }
}
