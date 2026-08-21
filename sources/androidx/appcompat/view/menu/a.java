package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;

/* JADX INFO: loaded from: classes.dex */
public class a implements b.h.i.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CharSequence f253d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f254e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Intent f255f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private char f256g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private char f258i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Drawable f260k;
    private Context l;
    private CharSequence m;
    private CharSequence n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f257h = MpegAudioHeader.MAX_FRAME_SIZE_BYTES;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f259j = MpegAudioHeader.MAX_FRAME_SIZE_BYTES;
    private ColorStateList o = null;
    private PorterDuff.Mode p = null;
    private boolean q = false;
    private boolean r = false;
    private int s = 16;

    public a(Context context, int i2, int i3, int i4, int i5, CharSequence charSequence) {
        this.l = context;
        this.f250a = i3;
        this.f251b = i2;
        this.f252c = i5;
        this.f253d = charSequence;
    }

    private void b() {
        if (this.f260k != null) {
            if (this.q || this.r) {
                this.f260k = androidx.core.graphics.drawable.a.i(this.f260k);
                this.f260k = this.f260k.mutate();
                if (this.q) {
                    androidx.core.graphics.drawable.a.a(this.f260k, this.o);
                }
                if (this.r) {
                    androidx.core.graphics.drawable.a.a(this.f260k, this.p);
                }
            }
        }
    }

    @Override // b.h.i.a.b
    public b.h.i.a.b a(b.h.o.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override // b.h.i.a.b
    public b.h.o.b a() {
        return null;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f259j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f258i;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.m;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f251b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f260k;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.o;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.p;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f255f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f250a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f257h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f256g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f252c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f253d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f254e;
        return charSequence != null ? charSequence : this.f253d;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.n;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.s & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.s & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.s & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.s & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(int i2) {
        setActionView(i2);
        throw null;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        setActionView(view);
        throw null;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public b.h.i.a.b setActionView(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public b.h.i.a.b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        this.f258i = Character.toLowerCase(c2);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        this.f258i = Character.toLowerCase(c2);
        this.f259j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.s = (z ? 1 : 0) | (this.s & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.s = (z ? 2 : 0) | (this.s & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public b.h.i.a.b setContentDescription(CharSequence charSequence) {
        this.m = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.s = (z ? 16 : 0) | (this.s & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.f260k = androidx.core.content.a.c(this.l, i2);
        b();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f260k = drawable;
        b();
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.o = colorStateList;
        this.q = true;
        b();
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.p = mode;
        this.r = true;
        b();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f255f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        this.f256g = c2;
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i2) {
        this.f256g = c2;
        this.f257h = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.f256g = c2;
        this.f258i = Character.toLowerCase(c3);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f256g = c2;
        this.f257h = KeyEvent.normalizeMetaState(i2);
        this.f258i = Character.toLowerCase(c3);
        this.f259j = KeyEvent.normalizeMetaState(i3);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public void setShowAsAction(int i2) {
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
        this.f253d = this.l.getResources().getString(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f253d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f254e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // b.h.i.a.b, android.view.MenuItem
    public b.h.i.a.b setTooltipText(CharSequence charSequence) {
        this.n = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.s = (this.s & 8) | (z ? 0 : 8);
        return this;
    }
}
