package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class l extends androidx.appcompat.view.menu.c<b.h.i.a.b> implements MenuItem {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Method f327e;

    class a extends b.h.o.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ActionProvider f328b;

        public a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f328b = actionProvider;
        }

        @Override // b.h.o.b
        public void a(SubMenu subMenu) {
            this.f328b.onPrepareSubMenu(l.this.a(subMenu));
        }

        @Override // b.h.o.b
        public boolean a() {
            return this.f328b.hasSubMenu();
        }

        @Override // b.h.o.b
        public View c() {
            return this.f328b.onCreateActionView();
        }

        @Override // b.h.o.b
        public boolean d() {
            return this.f328b.onPerformDefaultAction();
        }
    }

    static class b extends FrameLayout implements b.a.n.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final CollapsibleActionView f330b;

        /* JADX WARN: Multi-variable type inference failed */
        b(View view) {
            super(view.getContext());
            this.f330b = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // b.a.n.c
        public void a() {
            this.f330b.onActionViewExpanded();
        }

        @Override // b.a.n.c
        public void b() {
            this.f330b.onActionViewCollapsed();
        }

        View c() {
            return (View) this.f330b;
        }
    }

    private class c extends androidx.appcompat.view.menu.d<MenuItem.OnActionExpandListener> implements MenuItem.OnActionExpandListener {
        c(MenuItem.OnActionExpandListener onActionExpandListener) {
            super(onActionExpandListener);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.f273a).onMenuItemActionCollapse(l.this.a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.f273a).onMenuItemActionExpand(l.this.a(menuItem));
        }
    }

    private class d extends androidx.appcompat.view.menu.d<MenuItem.OnMenuItemClickListener> implements MenuItem.OnMenuItemClickListener {
        d(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            super(onMenuItemClickListener);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return ((MenuItem.OnMenuItemClickListener) this.f273a).onMenuItemClick(l.this.a(menuItem));
        }
    }

    l(Context context, b.h.i.a.b bVar) {
        super(context, bVar);
    }

    a a(ActionProvider actionProvider) {
        return new a(this.f270b, actionProvider);
    }

    public void a(boolean z) {
        try {
            if (this.f327e == null) {
                this.f327e = ((b.h.i.a.b) this.f273a).getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f327e.invoke(this.f273a, Boolean.valueOf(z));
        } catch (Exception e2) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e2);
        }
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return ((b.h.i.a.b) this.f273a).collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return ((b.h.i.a.b) this.f273a).expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        b.h.o.b bVarA = ((b.h.i.a.b) this.f273a).a();
        if (bVarA instanceof a) {
            return ((a) bVarA).f328b;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = ((b.h.i.a.b) this.f273a).getActionView();
        return actionView instanceof b ? ((b) actionView).c() : actionView;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return ((b.h.i.a.b) this.f273a).getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return ((b.h.i.a.b) this.f273a).getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return ((b.h.i.a.b) this.f273a).getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return ((b.h.i.a.b) this.f273a).getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return ((b.h.i.a.b) this.f273a).getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return ((b.h.i.a.b) this.f273a).getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return ((b.h.i.a.b) this.f273a).getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return ((b.h.i.a.b) this.f273a).getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return ((b.h.i.a.b) this.f273a).getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return ((b.h.i.a.b) this.f273a).getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return ((b.h.i.a.b) this.f273a).getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return ((b.h.i.a.b) this.f273a).getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return ((b.h.i.a.b) this.f273a).getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return a(((b.h.i.a.b) this.f273a).getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return ((b.h.i.a.b) this.f273a).getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return ((b.h.i.a.b) this.f273a).getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return ((b.h.i.a.b) this.f273a).getTooltipText();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return ((b.h.i.a.b) this.f273a).hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return ((b.h.i.a.b) this.f273a).isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return ((b.h.i.a.b) this.f273a).isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return ((b.h.i.a.b) this.f273a).isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return ((b.h.i.a.b) this.f273a).isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return ((b.h.i.a.b) this.f273a).isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ((b.h.i.a.b) this.f273a).a(actionProvider != null ? a(actionProvider) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i2) {
        ((b.h.i.a.b) this.f273a).setActionView(i2);
        View actionView = ((b.h.i.a.b) this.f273a).getActionView();
        if (actionView instanceof CollapsibleActionView) {
            ((b.h.i.a.b) this.f273a).setActionView(new b(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new b(view);
        }
        ((b.h.i.a.b) this.f273a).setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        ((b.h.i.a.b) this.f273a).setAlphabeticShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        ((b.h.i.a.b) this.f273a).setAlphabeticShortcut(c2, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        ((b.h.i.a.b) this.f273a).setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        ((b.h.i.a.b) this.f273a).setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        ((b.h.i.a.b) this.f273a).setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        ((b.h.i.a.b) this.f273a).setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        ((b.h.i.a.b) this.f273a).setIcon(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        ((b.h.i.a.b) this.f273a).setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        ((b.h.i.a.b) this.f273a).setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        ((b.h.i.a.b) this.f273a).setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        ((b.h.i.a.b) this.f273a).setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        ((b.h.i.a.b) this.f273a).setNumericShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i2) {
        ((b.h.i.a.b) this.f273a).setNumericShortcut(c2, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        ((b.h.i.a.b) this.f273a).setOnActionExpandListener(onActionExpandListener != null ? new c(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        ((b.h.i.a.b) this.f273a).setOnMenuItemClickListener(onMenuItemClickListener != null ? new d(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        ((b.h.i.a.b) this.f273a).setShortcut(c2, c3);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        ((b.h.i.a.b) this.f273a).setShortcut(c2, c3, i2, i3);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i2) {
        ((b.h.i.a.b) this.f273a).setShowAsAction(i2);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i2) {
        ((b.h.i.a.b) this.f273a).setShowAsActionFlags(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        ((b.h.i.a.b) this.f273a).setTitle(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        ((b.h.i.a.b) this.f273a).setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        ((b.h.i.a.b) this.f273a).setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        ((b.h.i.a.b) this.f273a).setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return ((b.h.i.a.b) this.f273a).setVisible(z);
    }
}
