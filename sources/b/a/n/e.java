package b.a.n;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.widget.ActionBarContextView;
import b.a.n.b;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class e extends b implements h.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f2184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ActionBarContextView f2185e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b.a f2186f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WeakReference<View> f2187g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.appcompat.view.menu.h f2189i;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z) {
        this.f2184d = context;
        this.f2185e = actionBarContextView;
        this.f2186f = aVar;
        this.f2189i = new androidx.appcompat.view.menu.h(actionBarContextView.getContext()).setDefaultShowAsAction(1);
        this.f2189i.setCallback(this);
    }

    @Override // b.a.n.b
    public void a() {
        if (this.f2188h) {
            return;
        }
        this.f2188h = true;
        this.f2185e.sendAccessibilityEvent(32);
        this.f2186f.a(this);
    }

    @Override // b.a.n.b
    public void a(int i2) {
        a((CharSequence) this.f2184d.getString(i2));
    }

    @Override // b.a.n.b
    public void a(View view) {
        this.f2185e.setCustomView(view);
        this.f2187g = view != null ? new WeakReference<>(view) : null;
    }

    @Override // b.a.n.b
    public void a(CharSequence charSequence) {
        this.f2185e.setSubtitle(charSequence);
    }

    @Override // b.a.n.b
    public void a(boolean z) {
        super.a(z);
        this.f2185e.setTitleOptional(z);
    }

    @Override // b.a.n.b
    public View b() {
        WeakReference<View> weakReference = this.f2187g;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // b.a.n.b
    public void b(int i2) {
        b(this.f2184d.getString(i2));
    }

    @Override // b.a.n.b
    public void b(CharSequence charSequence) {
        this.f2185e.setTitle(charSequence);
    }

    @Override // b.a.n.b
    public Menu c() {
        return this.f2189i;
    }

    @Override // b.a.n.b
    public MenuInflater d() {
        return new g(this.f2185e.getContext());
    }

    @Override // b.a.n.b
    public CharSequence e() {
        return this.f2185e.getSubtitle();
    }

    @Override // b.a.n.b
    public CharSequence g() {
        return this.f2185e.getTitle();
    }

    @Override // b.a.n.b
    public void i() {
        this.f2186f.b(this, this.f2189i);
    }

    @Override // b.a.n.b
    public boolean j() {
        return this.f2185e.b();
    }

    @Override // androidx.appcompat.view.menu.h.a
    public boolean onMenuItemSelected(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
        return this.f2186f.a(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.h.a
    public void onMenuModeChange(androidx.appcompat.view.menu.h hVar) {
        i();
        this.f2185e.d();
    }
}
