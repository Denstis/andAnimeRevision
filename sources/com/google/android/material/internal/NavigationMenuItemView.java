package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.k;
import androidx.appcompat.view.menu.q;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.s0;
import androidx.core.content.c.f;
import androidx.core.widget.i;
import b.h.o.a;
import b.h.o.b0.c;
import b.h.o.s;

/* JADX INFO: loaded from: classes.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements q.a {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private final a accessibilityDelegate;
    private FrameLayout actionArea;
    boolean checkable;
    private Drawable emptyDrawable;
    private boolean hasIconTintList;
    private final int iconSize;
    private ColorStateList iconTintList;
    private k itemData;
    private boolean needsEmptyIcon;
    private final CheckedTextView textView;

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.accessibilityDelegate = new a() { // from class: com.google.android.material.internal.NavigationMenuItemView.1
            @Override // b.h.o.a
            public void onInitializeAccessibilityNodeInfo(View view, c cVar) {
                super.onInitializeAccessibilityNodeInfo(view, cVar);
                cVar.b(NavigationMenuItemView.this.checkable);
            }
        };
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.google.android.material.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.iconSize = context.getResources().getDimensionPixelSize(com.google.android.material.R.dimen.design_navigation_icon_size);
        this.textView = (CheckedTextView) findViewById(com.google.android.material.R.id.design_menu_item_text);
        this.textView.setDuplicateParentStateEnabled(true);
        s.a(this.textView, this.accessibilityDelegate);
    }

    private void adjustAppearance() {
        LinearLayoutCompat.a aVar;
        int i2;
        if (shouldExpandActionArea()) {
            this.textView.setVisibility(8);
            FrameLayout frameLayout = this.actionArea;
            if (frameLayout == null) {
                return;
            }
            aVar = (LinearLayoutCompat.a) frameLayout.getLayoutParams();
            i2 = -1;
        } else {
            this.textView.setVisibility(0);
            FrameLayout frameLayout2 = this.actionArea;
            if (frameLayout2 == null) {
                return;
            }
            aVar = (LinearLayoutCompat.a) frameLayout2.getLayoutParams();
            i2 = -2;
        }
        ((ViewGroup.MarginLayoutParams) aVar).width = i2;
        this.actionArea.setLayoutParams(aVar);
    }

    private StateListDrawable createDefaultBackground() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(b.a.a.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(CHECKED_STATE_SET, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.actionArea == null) {
                this.actionArea = (FrameLayout) ((ViewStub) findViewById(com.google.android.material.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.actionArea.removeAllViews();
            this.actionArea.addView(view);
        }
    }

    private boolean shouldExpandActionArea() {
        return this.itemData.getTitle() == null && this.itemData.getIcon() == null && this.itemData.getActionView() != null;
    }

    @Override // androidx.appcompat.view.menu.q.a
    public k getItemData() {
        return this.itemData;
    }

    @Override // androidx.appcompat.view.menu.q.a
    public void initialize(k kVar, int i2) {
        this.itemData = kVar;
        setVisibility(kVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            s.a(this, createDefaultBackground());
        }
        setCheckable(kVar.isCheckable());
        setChecked(kVar.isChecked());
        setEnabled(kVar.isEnabled());
        setTitle(kVar.getTitle());
        setIcon(kVar.getIcon());
        setActionView(kVar.getActionView());
        setContentDescription(kVar.getContentDescription());
        s0.a(this, kVar.getTooltipText());
        adjustAppearance();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        k kVar = this.itemData;
        if (kVar != null && kVar.isCheckable() && this.itemData.isChecked()) {
            ViewGroup.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.q.a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void recycle() {
        FrameLayout frameLayout = this.actionArea;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.textView.setCompoundDrawables(null, null, null, null);
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.checkable != z) {
            this.checkable = z;
            this.accessibilityDelegate.sendAccessibilityEvent(this.textView, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.textView.setChecked(z);
    }

    public void setHorizontalPadding(int i2) {
        setPadding(i2, 0, i2, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.hasIconTintList) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = androidx.core.graphics.drawable.a.i(drawable).mutate();
                androidx.core.graphics.drawable.a.a(drawable, this.iconTintList);
            }
            int i2 = this.iconSize;
            drawable.setBounds(0, 0, i2, i2);
        } else if (this.needsEmptyIcon) {
            if (this.emptyDrawable == null) {
                this.emptyDrawable = f.a(getResources(), com.google.android.material.R.drawable.navigation_empty_icon, getContext().getTheme());
                Drawable drawable2 = this.emptyDrawable;
                if (drawable2 != null) {
                    int i3 = this.iconSize;
                    drawable2.setBounds(0, 0, i3, i3);
                }
            }
            drawable = this.emptyDrawable;
        }
        i.a(this.textView, drawable, null, null, null);
    }

    public void setIconPadding(int i2) {
        this.textView.setCompoundDrawablePadding(i2);
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.iconTintList = colorStateList;
        this.hasIconTintList = this.iconTintList != null;
        k kVar = this.itemData;
        if (kVar != null) {
            setIcon(kVar.getIcon());
        }
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.needsEmptyIcon = z;
    }

    public void setShortcut(boolean z, char c2) {
    }

    public void setTextAppearance(int i2) {
        i.d(this.textView, i2);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.textView.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.textView.setText(charSequence);
    }

    public boolean showsIcon() {
        return true;
    }
}
