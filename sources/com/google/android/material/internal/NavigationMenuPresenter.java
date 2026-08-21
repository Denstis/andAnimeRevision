package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.k;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.q;
import androidx.appcompat.view.menu.v;
import androidx.recyclerview.widget.RecyclerView;
import b.h.o.a0;
import b.h.o.s;
import com.google.android.material.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class NavigationMenuPresenter implements p {
    private static final String STATE_ADAPTER = "android:menu:adapter";
    private static final String STATE_HEADER = "android:menu:header";
    private static final String STATE_HIERARCHY = "android:menu:list";
    NavigationMenuAdapter adapter;
    private p.a callback;
    LinearLayout headerLayout;
    ColorStateList iconTintList;
    private int id;
    Drawable itemBackground;
    int itemHorizontalPadding;
    int itemIconPadding;
    LayoutInflater layoutInflater;
    h menu;
    private NavigationMenuView menuView;
    final View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.material.internal.NavigationMenuPresenter.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NavigationMenuPresenter.this.setUpdateSuspended(true);
            k itemData = ((NavigationMenuItemView) view).getItemData();
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            boolean zPerformItemAction = navigationMenuPresenter.menu.performItemAction(itemData, navigationMenuPresenter, 0);
            if (itemData != null && itemData.isCheckable() && zPerformItemAction) {
                NavigationMenuPresenter.this.adapter.setCheckedItem(itemData);
            }
            NavigationMenuPresenter.this.setUpdateSuspended(false);
            NavigationMenuPresenter.this.updateMenuView(false);
        }
    };
    int paddingSeparator;
    private int paddingTopDefault;
    int textAppearance;
    boolean textAppearanceSet;
    ColorStateList textColor;

    private static class HeaderViewHolder extends ViewHolder {
        public HeaderViewHolder(View view) {
            super(view);
        }
    }

    private class NavigationMenuAdapter extends RecyclerView.g<ViewHolder> {
        private static final String STATE_ACTION_VIEWS = "android:menu:action_views";
        private static final String STATE_CHECKED_ITEM = "android:menu:checked";
        private static final int VIEW_TYPE_HEADER = 3;
        private static final int VIEW_TYPE_NORMAL = 0;
        private static final int VIEW_TYPE_SEPARATOR = 2;
        private static final int VIEW_TYPE_SUBHEADER = 1;
        private k checkedItem;
        private final ArrayList<NavigationMenuItem> items = new ArrayList<>();
        private boolean updateSuspended;

        NavigationMenuAdapter() {
            prepareMenuItems();
        }

        private void appendTransparentIconIfMissing(int i2, int i3) {
            while (i2 < i3) {
                ((NavigationMenuTextItem) this.items.get(i2)).needsEmptyIcon = true;
                i2++;
            }
        }

        private void prepareMenuItems() {
            if (this.updateSuspended) {
                return;
            }
            this.updateSuspended = true;
            this.items.clear();
            this.items.add(new NavigationMenuHeaderItem());
            int size = NavigationMenuPresenter.this.menu.getVisibleItems().size();
            int i2 = -1;
            boolean z = false;
            int size2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                k kVar = NavigationMenuPresenter.this.menu.getVisibleItems().get(i3);
                if (kVar.isChecked()) {
                    setCheckedItem(kVar);
                }
                if (kVar.isCheckable()) {
                    kVar.c(false);
                }
                if (kVar.hasSubMenu()) {
                    SubMenu subMenu = kVar.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i3 != 0) {
                            this.items.add(new NavigationMenuSeparatorItem(NavigationMenuPresenter.this.paddingSeparator, 0));
                        }
                        this.items.add(new NavigationMenuTextItem(kVar));
                        int size3 = this.items.size();
                        int size4 = subMenu.size();
                        boolean z2 = false;
                        for (int i4 = 0; i4 < size4; i4++) {
                            k kVar2 = (k) subMenu.getItem(i4);
                            if (kVar2.isVisible()) {
                                if (!z2 && kVar2.getIcon() != null) {
                                    z2 = true;
                                }
                                if (kVar2.isCheckable()) {
                                    kVar2.c(false);
                                }
                                if (kVar.isChecked()) {
                                    setCheckedItem(kVar);
                                }
                                this.items.add(new NavigationMenuTextItem(kVar2));
                            }
                        }
                        if (z2) {
                            appendTransparentIconIfMissing(size3, this.items.size());
                        }
                    }
                } else {
                    int groupId = kVar.getGroupId();
                    if (groupId != i2) {
                        size2 = this.items.size();
                        boolean z3 = kVar.getIcon() != null;
                        if (i3 != 0) {
                            size2++;
                            ArrayList<NavigationMenuItem> arrayList = this.items;
                            int i5 = NavigationMenuPresenter.this.paddingSeparator;
                            arrayList.add(new NavigationMenuSeparatorItem(i5, i5));
                        }
                        z = z3;
                    } else if (!z && kVar.getIcon() != null) {
                        appendTransparentIconIfMissing(size2, this.items.size());
                        z = true;
                    }
                    NavigationMenuTextItem navigationMenuTextItem = new NavigationMenuTextItem(kVar);
                    navigationMenuTextItem.needsEmptyIcon = z;
                    this.items.add(navigationMenuTextItem);
                    i2 = groupId;
                }
            }
            this.updateSuspended = false;
        }

        public Bundle createInstanceState() {
            Bundle bundle = new Bundle();
            k kVar = this.checkedItem;
            if (kVar != null) {
                bundle.putInt(STATE_CHECKED_ITEM, kVar.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.items.size();
            for (int i2 = 0; i2 < size; i2++) {
                NavigationMenuItem navigationMenuItem = this.items.get(i2);
                if (navigationMenuItem instanceof NavigationMenuTextItem) {
                    k menuItem = ((NavigationMenuTextItem) navigationMenuItem).getMenuItem();
                    View actionView = menuItem != null ? menuItem.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(menuItem.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray(STATE_ACTION_VIEWS, sparseArray);
            return bundle;
        }

        public k getCheckedItem() {
            return this.checkedItem;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int getItemCount() {
            return this.items.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public long getItemId(int i2) {
            return i2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int getItemViewType(int i2) {
            NavigationMenuItem navigationMenuItem = this.items.get(i2);
            if (navigationMenuItem instanceof NavigationMenuSeparatorItem) {
                return 2;
            }
            if (navigationMenuItem instanceof NavigationMenuHeaderItem) {
                return 3;
            }
            if (navigationMenuItem instanceof NavigationMenuTextItem) {
                return ((NavigationMenuTextItem) navigationMenuItem).getMenuItem().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onBindViewHolder(ViewHolder viewHolder, int i2) {
            int itemViewType = getItemViewType(i2);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    ((TextView) viewHolder.itemView).setText(((NavigationMenuTextItem) this.items.get(i2)).getMenuItem().getTitle());
                    return;
                } else {
                    if (itemViewType != 2) {
                        return;
                    }
                    NavigationMenuSeparatorItem navigationMenuSeparatorItem = (NavigationMenuSeparatorItem) this.items.get(i2);
                    viewHolder.itemView.setPadding(0, navigationMenuSeparatorItem.getPaddingTop(), 0, navigationMenuSeparatorItem.getPaddingBottom());
                    return;
                }
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) viewHolder.itemView;
            navigationMenuItemView.setIconTintList(NavigationMenuPresenter.this.iconTintList);
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            if (navigationMenuPresenter.textAppearanceSet) {
                navigationMenuItemView.setTextAppearance(navigationMenuPresenter.textAppearance);
            }
            ColorStateList colorStateList = NavigationMenuPresenter.this.textColor;
            if (colorStateList != null) {
                navigationMenuItemView.setTextColor(colorStateList);
            }
            Drawable drawable = NavigationMenuPresenter.this.itemBackground;
            s.a(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            NavigationMenuTextItem navigationMenuTextItem = (NavigationMenuTextItem) this.items.get(i2);
            navigationMenuItemView.setNeedsEmptyIcon(navigationMenuTextItem.needsEmptyIcon);
            navigationMenuItemView.setHorizontalPadding(NavigationMenuPresenter.this.itemHorizontalPadding);
            navigationMenuItemView.setIconPadding(NavigationMenuPresenter.this.itemIconPadding);
            navigationMenuItemView.initialize(navigationMenuTextItem.getMenuItem(), 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            if (i2 == 0) {
                NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
                return new NormalViewHolder(navigationMenuPresenter.layoutInflater, viewGroup, navigationMenuPresenter.onClickListener);
            }
            if (i2 == 1) {
                return new SubheaderViewHolder(NavigationMenuPresenter.this.layoutInflater, viewGroup);
            }
            if (i2 == 2) {
                return new SeparatorViewHolder(NavigationMenuPresenter.this.layoutInflater, viewGroup);
            }
            if (i2 != 3) {
                return null;
            }
            return new HeaderViewHolder(NavigationMenuPresenter.this.headerLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onViewRecycled(ViewHolder viewHolder) {
            if (viewHolder instanceof NormalViewHolder) {
                ((NavigationMenuItemView) viewHolder.itemView).recycle();
            }
        }

        public void restoreInstanceState(Bundle bundle) {
            k menuItem;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            k menuItem2;
            int i2 = bundle.getInt(STATE_CHECKED_ITEM, 0);
            if (i2 != 0) {
                this.updateSuspended = true;
                int size = this.items.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        break;
                    }
                    NavigationMenuItem navigationMenuItem = this.items.get(i3);
                    if ((navigationMenuItem instanceof NavigationMenuTextItem) && (menuItem2 = ((NavigationMenuTextItem) navigationMenuItem).getMenuItem()) != null && menuItem2.getItemId() == i2) {
                        setCheckedItem(menuItem2);
                        break;
                    }
                    i3++;
                }
                this.updateSuspended = false;
                prepareMenuItems();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(STATE_ACTION_VIEWS);
            if (sparseParcelableArray != null) {
                int size2 = this.items.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    NavigationMenuItem navigationMenuItem2 = this.items.get(i4);
                    if ((navigationMenuItem2 instanceof NavigationMenuTextItem) && (menuItem = ((NavigationMenuTextItem) navigationMenuItem2).getMenuItem()) != null && (actionView = menuItem.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(menuItem.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void setCheckedItem(k kVar) {
            if (this.checkedItem == kVar || !kVar.isCheckable()) {
                return;
            }
            k kVar2 = this.checkedItem;
            if (kVar2 != null) {
                kVar2.setChecked(false);
            }
            this.checkedItem = kVar;
            kVar.setChecked(true);
        }

        public void setUpdateSuspended(boolean z) {
            this.updateSuspended = z;
        }

        public void update() {
            prepareMenuItems();
            notifyDataSetChanged();
        }
    }

    private static class NavigationMenuHeaderItem implements NavigationMenuItem {
        NavigationMenuHeaderItem() {
        }
    }

    private interface NavigationMenuItem {
    }

    private static class NavigationMenuSeparatorItem implements NavigationMenuItem {
        private final int paddingBottom;
        private final int paddingTop;

        public NavigationMenuSeparatorItem(int i2, int i3) {
            this.paddingTop = i2;
            this.paddingBottom = i3;
        }

        public int getPaddingBottom() {
            return this.paddingBottom;
        }

        public int getPaddingTop() {
            return this.paddingTop;
        }
    }

    private static class NavigationMenuTextItem implements NavigationMenuItem {
        private final k menuItem;
        boolean needsEmptyIcon;

        NavigationMenuTextItem(k kVar) {
            this.menuItem = kVar;
        }

        public k getMenuItem() {
            return this.menuItem;
        }
    }

    private static class NormalViewHolder extends ViewHolder {
        public NormalViewHolder(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    private static class SeparatorViewHolder extends ViewHolder {
        public SeparatorViewHolder(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    private static class SubheaderViewHolder extends ViewHolder {
        public SubheaderViewHolder(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    private static abstract class ViewHolder extends RecyclerView.d0 {
        public ViewHolder(View view) {
            super(view);
        }
    }

    public void addHeaderView(View view) {
        this.headerLayout.addView(view);
        NavigationMenuView navigationMenuView = this.menuView;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean collapseItemActionView(h hVar, k kVar) {
        return false;
    }

    public void dispatchApplyWindowInsets(a0 a0Var) {
        int iE = a0Var.e();
        if (this.paddingTopDefault != iE) {
            this.paddingTopDefault = iE;
            if (this.headerLayout.getChildCount() == 0) {
                NavigationMenuView navigationMenuView = this.menuView;
                navigationMenuView.setPadding(0, this.paddingTopDefault, 0, navigationMenuView.getPaddingBottom());
            }
        }
        s.a(this.headerLayout, a0Var);
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean expandItemActionView(h hVar, k kVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean flagActionItems() {
        return false;
    }

    public k getCheckedItem() {
        return this.adapter.getCheckedItem();
    }

    public int getHeaderCount() {
        return this.headerLayout.getChildCount();
    }

    public View getHeaderView(int i2) {
        return this.headerLayout.getChildAt(i2);
    }

    @Override // androidx.appcompat.view.menu.p
    public int getId() {
        return this.id;
    }

    public Drawable getItemBackground() {
        return this.itemBackground;
    }

    public int getItemHorizontalPadding() {
        return this.itemHorizontalPadding;
    }

    public int getItemIconPadding() {
        return this.itemIconPadding;
    }

    public ColorStateList getItemTextColor() {
        return this.textColor;
    }

    public ColorStateList getItemTintList() {
        return this.iconTintList;
    }

    public q getMenuView(ViewGroup viewGroup) {
        if (this.menuView == null) {
            this.menuView = (NavigationMenuView) this.layoutInflater.inflate(R.layout.design_navigation_menu, viewGroup, false);
            if (this.adapter == null) {
                this.adapter = new NavigationMenuAdapter();
            }
            this.headerLayout = (LinearLayout) this.layoutInflater.inflate(R.layout.design_navigation_item_header, (ViewGroup) this.menuView, false);
            this.menuView.setAdapter(this.adapter);
        }
        return this.menuView;
    }

    public View inflateHeaderView(int i2) {
        View viewInflate = this.layoutInflater.inflate(i2, (ViewGroup) this.headerLayout, false);
        addHeaderView(viewInflate);
        return viewInflate;
    }

    @Override // androidx.appcompat.view.menu.p
    public void initForMenu(Context context, h hVar) {
        this.layoutInflater = LayoutInflater.from(context);
        this.menu = hVar;
        this.paddingSeparator = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.p
    public void onCloseMenu(h hVar, boolean z) {
        p.a aVar = this.callback;
        if (aVar != null) {
            aVar.onCloseMenu(hVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(STATE_HIERARCHY);
            if (sparseParcelableArray != null) {
                this.menuView.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle(STATE_ADAPTER);
            if (bundle2 != null) {
                this.adapter.restoreInstanceState(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray(STATE_HEADER);
            if (sparseParcelableArray2 != null) {
                this.headerLayout.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.menuView != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.menuView.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray(STATE_HIERARCHY, sparseArray);
        }
        NavigationMenuAdapter navigationMenuAdapter = this.adapter;
        if (navigationMenuAdapter != null) {
            bundle.putBundle(STATE_ADAPTER, navigationMenuAdapter.createInstanceState());
        }
        if (this.headerLayout != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.headerLayout.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray(STATE_HEADER, sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean onSubMenuSelected(v vVar) {
        return false;
    }

    public void removeHeaderView(View view) {
        this.headerLayout.removeView(view);
        if (this.headerLayout.getChildCount() == 0) {
            NavigationMenuView navigationMenuView = this.menuView;
            navigationMenuView.setPadding(0, this.paddingTopDefault, 0, navigationMenuView.getPaddingBottom());
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public void setCallback(p.a aVar) {
        this.callback = aVar;
    }

    public void setCheckedItem(k kVar) {
        this.adapter.setCheckedItem(kVar);
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setItemBackground(Drawable drawable) {
        this.itemBackground = drawable;
        updateMenuView(false);
    }

    public void setItemHorizontalPadding(int i2) {
        this.itemHorizontalPadding = i2;
        updateMenuView(false);
    }

    public void setItemIconPadding(int i2) {
        this.itemIconPadding = i2;
        updateMenuView(false);
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.iconTintList = colorStateList;
        updateMenuView(false);
    }

    public void setItemTextAppearance(int i2) {
        this.textAppearance = i2;
        this.textAppearanceSet = true;
        updateMenuView(false);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.textColor = colorStateList;
        updateMenuView(false);
    }

    public void setUpdateSuspended(boolean z) {
        NavigationMenuAdapter navigationMenuAdapter = this.adapter;
        if (navigationMenuAdapter != null) {
            navigationMenuAdapter.setUpdateSuspended(z);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public void updateMenuView(boolean z) {
        NavigationMenuAdapter navigationMenuAdapter = this.adapter;
        if (navigationMenuAdapter != null) {
            navigationMenuAdapter.update();
        }
    }
}
