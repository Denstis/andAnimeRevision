package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.q;
import b.h.o.b;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;

/* JADX INFO: loaded from: classes.dex */
public final class k implements b.h.i.a.b {
    private View A;
    private b.h.o.b B;
    private MenuItem.OnActionExpandListener C;
    private ContextMenu.ContextMenuInfo E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f319e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f320f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Intent f321g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private char f322h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private char f324j;
    private Drawable l;
    h n;
    private v o;
    private Runnable p;
    private MenuItem.OnMenuItemClickListener q;
    private CharSequence r;
    private CharSequence s;
    private int z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f323i = MpegAudioHeader.MAX_FRAME_SIZE_BYTES;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f325k = MpegAudioHeader.MAX_FRAME_SIZE_BYTES;
    private int m = 0;
    private ColorStateList t = null;
    private PorterDuff.Mode u = null;
    private boolean v = false;
    private boolean w = false;
    private boolean x = false;
    private int y = 16;
    private boolean D = false;

    class a implements b.InterfaceC0106b {
        a() {
        }

        @Override // b.h.o.b.InterfaceC0106b
        public void onActionProviderVisibilityChanged(boolean z) {
            k kVar = k.this;
            kVar.n.onItemVisibleChanged(kVar);
        }
    }

    k(h hVar, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        this.z = 0;
        this.n = hVar;
        this.f315a = i3;
        this.f316b = i2;
        this.f317c = i4;
        this.f318d = i5;
        this.f319e = charSequence;
        this.z = i6;
    }

    private Drawable a(Drawable drawable) {
        if (drawable != null && this.x && (this.v || this.w)) {
            drawable = androidx.core.graphics.drawable.a.i(drawable).mutate();
            if (this.v) {
                androidx.core.graphics.drawable.a.a(drawable, this.t);
            }
            if (this.w) {
                androidx.core.graphics.drawable.a.a(drawable, this.u);
            }
            this.x = false;
        }
        return drawable;
    }

    private static void a(StringBuilder sb, int i2, int i3, String str) {
        if ((i2 & i3) == i3) {
            sb.append(str);
        }
    }

    @Override // b.h.i.a.b
    public b.h.i.a.b a(b.h.o.b bVar) {
        b.h.o.b bVar2 = this.B;
        if (bVar2 != null) {
            bVar2.f();
        }
        this.A = null;
        this.B = bVar;
        this.n.onItemsChanged(true);
        b.h.o.b bVar3 = this.B;
        if (bVar3 != null) {
            bVar3.a(new a());
        }
        return this;
    }

    @Override // b.h.i.a.b
    public b.h.o.b a() {
        return this.B;
    }

    CharSequence a(q.a aVar) {
        return (aVar == null || !aVar.prefersCondensedTitle()) ? getTitle() : getTitleCondensed();
    }

    void a(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    public void a(v vVar) {
        this.o = vVar;
        vVar.setHeaderTitle(getTitle());
    }

    public void a(boolean z) {
        this.D = z;
        this.n.onItemsChanged(false);
    }

    public void b() {
        this.n.onItemActionRequestChanged(this);
    }

    void b(boolean z) {
        int i2 = this.y;
        this.y = (z ? 2 : 0) | (i2 & (-3));
        if (i2 != this.y) {
            this.n.onItemsChanged(false);
        }
    }

    public int c() {
        return this.f318d;
    }

    public void c(boolean z) {
        this.y = (z ? 4 : 0) | (this.y & (-5));
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.n.collapseItemActionView(this);
        }
        return false;
    }

    char d() {
        return this.n.isQwertyMode() ? this.f324j : this.f322h;
    }

    public void d(boolean z) {
        this.y = z ? this.y | 32 : this.y & (-33);
    }

    String e() {
        int i2;
        char cD = d();
        if (cD == 0) {
            return "";
        }
        Resources resources = this.n.getContext().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.n.getContext()).hasPermanentMenuKey()) {
            sb.append(resources.getString(b.a.h.abc_prepend_shortcut_label));
        }
        int i3 = this.n.isQwertyMode() ? this.f325k : this.f323i;
        a(sb, i3, C.DEFAULT_BUFFER_SEGMENT_SIZE, resources.getString(b.a.h.abc_menu_meta_shortcut_label));
        a(sb, i3, MpegAudioHeader.MAX_FRAME_SIZE_BYTES, resources.getString(b.a.h.abc_menu_ctrl_shortcut_label));
        a(sb, i3, 2, resources.getString(b.a.h.abc_menu_alt_shortcut_label));
        a(sb, i3, 1, resources.getString(b.a.h.abc_menu_shift_shortcut_label));
        a(sb, i3, 4, resources.getString(b.a.h.abc_menu_sym_shortcut_label));
        a(sb, i3, 8, resources.getString(b.a.h.abc_menu_function_shortcut_label));
        if (cD == '\b') {
            i2 = b.a.h.abc_menu_delete_shortcut_label;
        } else if (cD == '\n') {
            i2 = b.a.h.abc_menu_enter_shortcut_label;
        } else {
            if (cD != ' ') {
                sb.append(cD);
                return sb.toString();
            }
            i2 = b.a.h.abc_menu_space_shortcut_label;
        }
        sb.append(resources.getString(i2));
        return sb.toString();
    }

    boolean e(boolean z) {
        int i2 = this.y;
        this.y = (z ? 0 : 8) | (i2 & (-9));
        return i2 != this.y;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!f()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.n.expandItemActionView(this);
        }
        return false;
    }

    public boolean f() {
        b.h.o.b bVar;
        if ((this.z & 8) == 0) {
            return false;
        }
        if (this.A == null && (bVar = this.B) != null) {
            this.A = bVar.a(this);
        }
        return this.A != null;
    }

    public boolean g() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        h hVar = this.n;
        if (hVar.dispatchMenuItemSelected(hVar, this)) {
            return true;
        }
        Runnable runnable = this.p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f321g != null) {
            try {
                this.n.getContext().startActivity(this.f321g);
                return true;
            } catch (ActivityNotFoundException e2) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e2);
            }
        }
        b.h.o.b bVar = this.B;
        return bVar != null && bVar.d();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public View getActionView() {
        View view = this.A;
        if (view != null) {
            return view;
        }
        b.h.o.b bVar = this.B;
        if (bVar == null) {
            return null;
        }
        this.A = bVar.a(this);
        return this.A;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f325k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f324j;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f316b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.l;
        if (drawable != null) {
            return a(drawable);
        }
        if (this.m == 0) {
            return null;
        }
        Drawable drawableC = b.a.k.a.a.c(this.n.getContext(), this.m);
        this.m = 0;
        this.l = drawableC;
        return a(drawableC);
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.t;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f321g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f315a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f323i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f322h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f317c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f319e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f320f;
        if (charSequence == null) {
            charSequence = this.f319e;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.s;
    }

    public boolean h() {
        return (this.y & 32) == 32;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.o != null;
    }

    public boolean i() {
        return (this.y & 4) != 0;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        b.h.o.b bVar = this.B;
        return (bVar == null || !bVar.e()) ? (this.y & 8) == 0 : (this.y & 8) == 0 && this.B.b();
    }

    public boolean j() {
        return (this.z & 1) == 1;
    }

    public boolean k() {
        return (this.z & 2) == 2;
    }

    public boolean l() {
        return this.n.getOptionalIconsVisible();
    }

    boolean m() {
        return this.n.isShortcutsVisible() && d() != 0;
    }

    public boolean n() {
        return (this.z & 4) == 4;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(int i2) {
        setActionView(i2);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        setActionView(view);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public b.h.i.a.b setActionView(int i2) {
        Context context = this.n.getContext();
        setActionView(LayoutInflater.from(context).inflate(i2, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public b.h.i.a.b setActionView(View view) {
        int i2;
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1 && (i2 = this.f315a) > 0) {
            view.setId(i2);
        }
        this.n.onItemActionRequestChanged(this);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        if (this.f324j == c2) {
            return this;
        }
        this.f324j = Character.toLowerCase(c2);
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        if (this.f324j == c2 && this.f325k == i2) {
            return this;
        }
        this.f324j = Character.toLowerCase(c2);
        this.f325k = KeyEvent.normalizeMetaState(i2);
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i2 = this.y;
        this.y = (z ? 1 : 0) | (i2 & (-2));
        if (i2 != this.y) {
            this.n.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.y & 4) != 0) {
            this.n.setExclusiveItemChecked(this);
        } else {
            b(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public b.h.i.a.b setContentDescription(CharSequence charSequence) {
        this.r = charSequence;
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.y = z ? this.y | 16 : this.y & (-17);
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.l = null;
        this.m = i2;
        this.x = true;
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.m = 0;
        this.l = drawable;
        this.x = true;
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.t = colorStateList;
        this.v = true;
        this.x = true;
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.u = mode;
        this.w = true;
        this.x = true;
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f321g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        if (this.f322h == c2) {
            return this;
        }
        this.f322h = c2;
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i2) {
        if (this.f322h == c2 && this.f323i == i2) {
            return this;
        }
        this.f322h = c2;
        this.f323i = KeyEvent.normalizeMetaState(i2);
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.f322h = c2;
        this.f324j = Character.toLowerCase(c3);
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f322h = c2;
        this.f323i = KeyEvent.normalizeMetaState(i2);
        this.f324j = Character.toLowerCase(c3);
        this.f325k = KeyEvent.normalizeMetaState(i3);
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public void setShowAsAction(int i2) {
        int i3 = i2 & 3;
        if (i3 != 0 && i3 != 1 && i3 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.z = i2;
        this.n.onItemActionRequestChanged(this);
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setShowAsActionFlags(int i2) {
        setShowAsActionFlags(i2);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public b.h.i.a.b setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        setTitle(this.n.getContext().getString(i2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f319e = charSequence;
        this.n.onItemsChanged(false);
        v vVar = this.o;
        if (vVar != null) {
            vVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f320f = charSequence;
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public b.h.i.a.b setTooltipText(CharSequence charSequence) {
        this.s = charSequence;
        this.n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (e(z)) {
            this.n.onItemVisibleChanged(this);
        }
        return this;
    }

    public String toString() {
        CharSequence charSequence = this.f319e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }
}
