package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.k;
import androidx.appcompat.widget.q0;
import b.a.n.g;
import b.h.o.a0;
import b.h.o.s;
import b.j.a.a;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.ThemeEnforcement;

/* JADX INFO: loaded from: classes.dex */
public class NavigationView extends ScrimInsetsFrameLayout {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] DISABLED_STATE_SET = {-16842910};
    private static final int PRESENTER_NAVIGATION_VIEW_ID = 1;
    OnNavigationItemSelectedListener listener;
    private final int maxWidth;
    private final NavigationMenu menu;
    private MenuInflater menuInflater;
    private final NavigationMenuPresenter presenter;

    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    public static class SavedState extends a {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.navigation.NavigationView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public Bundle menuState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // b.j.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeBundle(this.menuState);
        }
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.navigationViewStyle);
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i2) {
        boolean z;
        int iG;
        super(context, attributeSet, i2);
        this.presenter = new NavigationMenuPresenter();
        this.menu = new NavigationMenu(context);
        q0 q0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context, attributeSet, com.google.android.material.R.styleable.NavigationView, i2, com.google.android.material.R.style.Widget_Design_NavigationView, new int[0]);
        s.a(this, q0VarObtainTintedStyledAttributes.b(com.google.android.material.R.styleable.NavigationView_android_background));
        if (q0VarObtainTintedStyledAttributes.g(com.google.android.material.R.styleable.NavigationView_elevation)) {
            s.a(this, q0VarObtainTintedStyledAttributes.c(com.google.android.material.R.styleable.NavigationView_elevation, 0));
        }
        s.a(this, q0VarObtainTintedStyledAttributes.a(com.google.android.material.R.styleable.NavigationView_android_fitsSystemWindows, false));
        this.maxWidth = q0VarObtainTintedStyledAttributes.c(com.google.android.material.R.styleable.NavigationView_android_maxWidth, 0);
        ColorStateList colorStateListA = q0VarObtainTintedStyledAttributes.g(com.google.android.material.R.styleable.NavigationView_itemIconTint) ? q0VarObtainTintedStyledAttributes.a(com.google.android.material.R.styleable.NavigationView_itemIconTint) : createDefaultColorStateList(R.attr.textColorSecondary);
        if (q0VarObtainTintedStyledAttributes.g(com.google.android.material.R.styleable.NavigationView_itemTextAppearance)) {
            iG = q0VarObtainTintedStyledAttributes.g(com.google.android.material.R.styleable.NavigationView_itemTextAppearance, 0);
            z = true;
        } else {
            z = false;
            iG = 0;
        }
        ColorStateList colorStateListA2 = q0VarObtainTintedStyledAttributes.g(com.google.android.material.R.styleable.NavigationView_itemTextColor) ? q0VarObtainTintedStyledAttributes.a(com.google.android.material.R.styleable.NavigationView_itemTextColor) : null;
        if (!z && colorStateListA2 == null) {
            colorStateListA2 = createDefaultColorStateList(R.attr.textColorPrimary);
        }
        Drawable drawableB = q0VarObtainTintedStyledAttributes.b(com.google.android.material.R.styleable.NavigationView_itemBackground);
        if (q0VarObtainTintedStyledAttributes.g(com.google.android.material.R.styleable.NavigationView_itemHorizontalPadding)) {
            this.presenter.setItemHorizontalPadding(q0VarObtainTintedStyledAttributes.c(com.google.android.material.R.styleable.NavigationView_itemHorizontalPadding, 0));
        }
        int iC = q0VarObtainTintedStyledAttributes.c(com.google.android.material.R.styleable.NavigationView_itemIconPadding, 0);
        this.menu.setCallback(new h.a() { // from class: com.google.android.material.navigation.NavigationView.1
            @Override // androidx.appcompat.view.menu.h.a
            public boolean onMenuItemSelected(h hVar, MenuItem menuItem) {
                OnNavigationItemSelectedListener onNavigationItemSelectedListener = NavigationView.this.listener;
                return onNavigationItemSelectedListener != null && onNavigationItemSelectedListener.onNavigationItemSelected(menuItem);
            }

            @Override // androidx.appcompat.view.menu.h.a
            public void onMenuModeChange(h hVar) {
            }
        });
        this.presenter.setId(1);
        this.presenter.initForMenu(context, this.menu);
        this.presenter.setItemIconTintList(colorStateListA);
        if (z) {
            this.presenter.setItemTextAppearance(iG);
        }
        this.presenter.setItemTextColor(colorStateListA2);
        this.presenter.setItemBackground(drawableB);
        this.presenter.setItemIconPadding(iC);
        this.menu.addMenuPresenter(this.presenter);
        addView((View) this.presenter.getMenuView(this));
        if (q0VarObtainTintedStyledAttributes.g(com.google.android.material.R.styleable.NavigationView_menu)) {
            inflateMenu(q0VarObtainTintedStyledAttributes.g(com.google.android.material.R.styleable.NavigationView_menu, 0));
        }
        if (q0VarObtainTintedStyledAttributes.g(com.google.android.material.R.styleable.NavigationView_headerLayout)) {
            inflateHeaderView(q0VarObtainTintedStyledAttributes.g(com.google.android.material.R.styleable.NavigationView_headerLayout, 0));
        }
        q0VarObtainTintedStyledAttributes.a();
    }

    private ColorStateList createDefaultColorStateList(int i2) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListB = b.a.k.a.a.b(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(b.a.a.colorPrimary, typedValue, true)) {
            return null;
        }
        int i3 = typedValue.data;
        int defaultColor = colorStateListB.getDefaultColor();
        return new ColorStateList(new int[][]{DISABLED_STATE_SET, CHECKED_STATE_SET, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateListB.getColorForState(DISABLED_STATE_SET, defaultColor), i3, defaultColor});
    }

    private MenuInflater getMenuInflater() {
        if (this.menuInflater == null) {
            this.menuInflater = new g(getContext());
        }
        return this.menuInflater;
    }

    public void addHeaderView(View view) {
        this.presenter.addHeaderView(view);
    }

    public MenuItem getCheckedItem() {
        return this.presenter.getCheckedItem();
    }

    public int getHeaderCount() {
        return this.presenter.getHeaderCount();
    }

    public View getHeaderView(int i2) {
        return this.presenter.getHeaderView(i2);
    }

    public Drawable getItemBackground() {
        return this.presenter.getItemBackground();
    }

    public int getItemHorizontalPadding() {
        return this.presenter.getItemHorizontalPadding();
    }

    public int getItemIconPadding() {
        return this.presenter.getItemIconPadding();
    }

    public ColorStateList getItemIconTintList() {
        return this.presenter.getItemTintList();
    }

    public ColorStateList getItemTextColor() {
        return this.presenter.getItemTextColor();
    }

    public Menu getMenu() {
        return this.menu;
    }

    public View inflateHeaderView(int i2) {
        return this.presenter.inflateHeaderView(i2);
    }

    public void inflateMenu(int i2) {
        this.presenter.setUpdateSuspended(true);
        getMenuInflater().inflate(i2, this.menu);
        this.presenter.setUpdateSuspended(false);
        this.presenter.updateMenuView(false);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    protected void onInsetsChanged(a0 a0Var) {
        this.presenter.dispatchApplyWindowInsets(a0Var);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        int iMin;
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                iMin = this.maxWidth;
            }
            super.onMeasure(i2, i3);
        }
        iMin = Math.min(View.MeasureSpec.getSize(i2), this.maxWidth);
        i2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        super.onMeasure(i2, i3);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.menu.restorePresenterStates(savedState.menuState);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.menuState = new Bundle();
        this.menu.savePresenterStates(savedState.menuState);
        return savedState;
    }

    public void removeHeaderView(View view) {
        this.presenter.removeHeaderView(view);
    }

    public void setCheckedItem(int i2) {
        MenuItem menuItemFindItem = this.menu.findItem(i2);
        if (menuItemFindItem != null) {
            this.presenter.setCheckedItem((k) menuItemFindItem);
        }
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem menuItemFindItem = this.menu.findItem(menuItem.getItemId());
        if (menuItemFindItem == null) {
            throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
        }
        this.presenter.setCheckedItem((k) menuItemFindItem);
    }

    public void setItemBackground(Drawable drawable) {
        this.presenter.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i2) {
        setItemBackground(androidx.core.content.a.c(getContext(), i2));
    }

    public void setItemHorizontalPadding(int i2) {
        this.presenter.setItemHorizontalPadding(i2);
    }

    public void setItemHorizontalPaddingResource(int i2) {
        this.presenter.setItemHorizontalPadding(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconPadding(int i2) {
        this.presenter.setItemIconPadding(i2);
    }

    public void setItemIconPaddingResource(int i2) {
        this.presenter.setItemIconPadding(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.presenter.setItemIconTintList(colorStateList);
    }

    public void setItemTextAppearance(int i2) {
        this.presenter.setItemTextAppearance(i2);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.presenter.setItemTextColor(colorStateList);
    }

    public void setNavigationItemSelectedListener(OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.listener = onNavigationItemSelectedListener;
    }
}
