package com.google.android.material.internal;

import android.content.Context;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.k;
import androidx.appcompat.view.menu.v;

/* JADX INFO: loaded from: classes.dex */
public class NavigationSubMenu extends v {
    public NavigationSubMenu(Context context, NavigationMenu navigationMenu, k kVar) {
        super(context, navigationMenu, kVar);
    }

    @Override // androidx.appcompat.view.menu.h
    public void onItemsChanged(boolean z) {
        super.onItemsChanged(z);
        ((h) getParentMenu()).onItemsChanged(z);
    }
}
