package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.j0;
import b.a.n.b;
import b.h.o.s;
import b.h.o.w;
import b.h.o.x;
import b.h.o.y;
import b.h.o.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class n extends androidx.appcompat.app.a implements ActionBarOverlayLayout.d {
    private static final Interpolator B = new AccelerateInterpolator();
    private static final Interpolator C = new DecelerateInterpolator();
    final z A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ActionBarOverlayLayout f212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ActionBarContainer f213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    androidx.appcompat.widget.z f214e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ActionBarContextView f215f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    View f216g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    j0 f217h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f218i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    d f219j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    b.a.n.b f220k;
    b.a l;
    private boolean m;
    private ArrayList<a.b> n;
    private boolean o;
    private int p;
    boolean q;
    boolean r;
    boolean s;
    private boolean t;
    private boolean u;
    b.a.n.h v;
    private boolean w;
    boolean x;
    final x y;
    final x z;

    class a extends y {
        a() {
        }

        @Override // b.h.o.x
        public void b(View view) {
            View view2;
            n nVar = n.this;
            if (nVar.q && (view2 = nVar.f216g) != null) {
                view2.setTranslationY(0.0f);
                n.this.f213d.setTranslationY(0.0f);
            }
            n.this.f213d.setVisibility(8);
            n.this.f213d.setTransitioning(false);
            n nVar2 = n.this;
            nVar2.v = null;
            nVar2.l();
            ActionBarOverlayLayout actionBarOverlayLayout = n.this.f212c;
            if (actionBarOverlayLayout != null) {
                s.D(actionBarOverlayLayout);
            }
        }
    }

    class b extends y {
        b() {
        }

        @Override // b.h.o.x
        public void b(View view) {
            n nVar = n.this;
            nVar.v = null;
            nVar.f213d.requestLayout();
        }
    }

    class c implements z {
        c() {
        }

        @Override // b.h.o.z
        public void a(View view) {
            ((View) n.this.f213d.getParent()).invalidate();
        }
    }

    public class d extends b.a.n.b implements h.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Context f224d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final androidx.appcompat.view.menu.h f225e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private b.a f226f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private WeakReference<View> f227g;

        public d(Context context, b.a aVar) {
            this.f224d = context;
            this.f226f = aVar;
            this.f225e = new androidx.appcompat.view.menu.h(context).setDefaultShowAsAction(1);
            this.f225e.setCallback(this);
        }

        @Override // b.a.n.b
        public void a() {
            n nVar = n.this;
            if (nVar.f219j != this) {
                return;
            }
            if (n.a(nVar.r, nVar.s, false)) {
                this.f226f.a(this);
            } else {
                n nVar2 = n.this;
                nVar2.f220k = this;
                nVar2.l = this.f226f;
            }
            this.f226f = null;
            n.this.g(false);
            n.this.f215f.a();
            n.this.f214e.k().sendAccessibilityEvent(32);
            n nVar3 = n.this;
            nVar3.f212c.setHideOnContentScrollEnabled(nVar3.x);
            n.this.f219j = null;
        }

        @Override // b.a.n.b
        public void a(int i2) {
            a((CharSequence) n.this.f210a.getResources().getString(i2));
        }

        @Override // b.a.n.b
        public void a(View view) {
            n.this.f215f.setCustomView(view);
            this.f227g = new WeakReference<>(view);
        }

        @Override // b.a.n.b
        public void a(CharSequence charSequence) {
            n.this.f215f.setSubtitle(charSequence);
        }

        @Override // b.a.n.b
        public void a(boolean z) {
            super.a(z);
            n.this.f215f.setTitleOptional(z);
        }

        @Override // b.a.n.b
        public View b() {
            WeakReference<View> weakReference = this.f227g;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // b.a.n.b
        public void b(int i2) {
            b(n.this.f210a.getResources().getString(i2));
        }

        @Override // b.a.n.b
        public void b(CharSequence charSequence) {
            n.this.f215f.setTitle(charSequence);
        }

        @Override // b.a.n.b
        public Menu c() {
            return this.f225e;
        }

        @Override // b.a.n.b
        public MenuInflater d() {
            return new b.a.n.g(this.f224d);
        }

        @Override // b.a.n.b
        public CharSequence e() {
            return n.this.f215f.getSubtitle();
        }

        @Override // b.a.n.b
        public CharSequence g() {
            return n.this.f215f.getTitle();
        }

        @Override // b.a.n.b
        public void i() {
            if (n.this.f219j != this) {
                return;
            }
            this.f225e.stopDispatchingItemsChanged();
            try {
                this.f226f.b(this, this.f225e);
            } finally {
                this.f225e.startDispatchingItemsChanged();
            }
        }

        @Override // b.a.n.b
        public boolean j() {
            return n.this.f215f.b();
        }

        public boolean k() {
            this.f225e.stopDispatchingItemsChanged();
            try {
                return this.f226f.a(this, this.f225e);
            } finally {
                this.f225e.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.view.menu.h.a
        public boolean onMenuItemSelected(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
            b.a aVar = this.f226f;
            if (aVar != null) {
                return aVar.a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.h.a
        public void onMenuModeChange(androidx.appcompat.view.menu.h hVar) {
            if (this.f226f == null) {
                return;
            }
            i();
            n.this.f215f.d();
        }
    }

    public n(Activity activity, boolean z) {
        new ArrayList();
        this.n = new ArrayList<>();
        this.p = 0;
        this.q = true;
        this.u = true;
        this.y = new a();
        this.z = new b();
        this.A = new c();
        View decorView = activity.getWindow().getDecorView();
        b(decorView);
        if (z) {
            return;
        }
        this.f216g = decorView.findViewById(R.id.content);
    }

    public n(Dialog dialog) {
        new ArrayList();
        this.n = new ArrayList<>();
        this.p = 0;
        this.q = true;
        this.u = true;
        this.y = new a();
        this.z = new b();
        this.A = new c();
        b(dialog.getWindow().getDecorView());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private androidx.appcompat.widget.z a(View view) {
        if (view instanceof androidx.appcompat.widget.z) {
            return (androidx.appcompat.widget.z) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    static boolean a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    private void b(View view) {
        this.f212c = (ActionBarOverlayLayout) view.findViewById(b.a.f.decor_content_parent);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f212c;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f214e = a(view.findViewById(b.a.f.action_bar));
        this.f215f = (ActionBarContextView) view.findViewById(b.a.f.action_context_bar);
        this.f213d = (ActionBarContainer) view.findViewById(b.a.f.action_bar_container);
        androidx.appcompat.widget.z zVar = this.f214e;
        if (zVar == null || this.f215f == null || this.f213d == null) {
            throw new IllegalStateException(n.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f210a = zVar.getContext();
        boolean z = (this.f214e.l() & 4) != 0;
        if (z) {
            this.f218i = true;
        }
        b.a.n.a aVarA = b.a.n.a.a(this.f210a);
        k(aVarA.a() || z);
        l(aVarA.f());
        TypedArray typedArrayObtainStyledAttributes = this.f210a.obtainStyledAttributes(null, b.a.j.ActionBar, b.a.a.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(b.a.j.ActionBar_hideOnContentScroll, false)) {
            j(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.a.j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            a(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void l(boolean z) {
        this.o = z;
        if (this.o) {
            this.f213d.setTabContainer(null);
            this.f214e.a(this.f217h);
        } else {
            this.f214e.a((j0) null);
            this.f213d.setTabContainer(this.f217h);
        }
        boolean z2 = m() == 2;
        j0 j0Var = this.f217h;
        if (j0Var != null) {
            if (z2) {
                j0Var.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f212c;
                if (actionBarOverlayLayout != null) {
                    s.D(actionBarOverlayLayout);
                }
            } else {
                j0Var.setVisibility(8);
            }
        }
        this.f214e.b(!this.o && z2);
        this.f212c.setHasNonEmbeddedTabs(!this.o && z2);
    }

    private void m(boolean z) {
        if (a(this.r, this.s, this.t)) {
            if (this.u) {
                return;
            }
            this.u = true;
            i(z);
            return;
        }
        if (this.u) {
            this.u = false;
            h(z);
        }
    }

    private void n() {
        if (this.t) {
            this.t = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f212c;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m(false);
        }
    }

    private boolean o() {
        return s.z(this.f213d);
    }

    private void p() {
        if (this.t) {
            return;
        }
        this.t = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f212c;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        m(false);
    }

    @Override // androidx.appcompat.app.a
    public b.a.n.b a(b.a aVar) {
        d dVar = this.f219j;
        if (dVar != null) {
            dVar.a();
        }
        this.f212c.setHideOnContentScrollEnabled(false);
        this.f215f.c();
        d dVar2 = new d(this.f215f.getContext(), aVar);
        if (!dVar2.k()) {
            return null;
        }
        this.f219j = dVar2;
        dVar2.i();
        this.f215f.a(dVar2);
        g(true);
        this.f215f.sendAccessibilityEvent(32);
        return dVar2;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a() {
        if (this.s) {
            this.s = false;
            m(true);
        }
    }

    public void a(float f2) {
        s.a(this.f213d, f2);
    }

    public void a(int i2, int i3) {
        int iL = this.f214e.l();
        if ((i3 & 4) != 0) {
            this.f218i = true;
        }
        this.f214e.a((i2 & i3) | ((i3 ^ (-1)) & iL));
    }

    @Override // androidx.appcompat.app.a
    public void a(Configuration configuration) {
        l(b.a.n.a.a(this.f210a).f());
    }

    @Override // androidx.appcompat.app.a
    public void a(CharSequence charSequence) {
        this.f214e.setTitle(charSequence);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a(boolean z) {
        this.q = z;
    }

    @Override // androidx.appcompat.app.a
    public boolean a(int i2, KeyEvent keyEvent) {
        Menu menuC;
        d dVar = this.f219j;
        if (dVar == null || (menuC = dVar.c()) == null) {
            return false;
        }
        menuC.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuC.performShortcut(i2, keyEvent, 0);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void b() {
    }

    @Override // androidx.appcompat.app.a
    public void b(CharSequence charSequence) {
        this.f214e.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void b(boolean z) {
        if (z == this.m) {
            return;
        }
        this.m = z;
        int size = this.n.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.n.get(i2).a(z);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void c() {
        if (this.s) {
            return;
        }
        this.s = true;
        m(true);
    }

    @Override // androidx.appcompat.app.a
    public void c(boolean z) {
        if (this.f218i) {
            return;
        }
        d(z);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void d() {
        b.a.n.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
            this.v = null;
        }
    }

    @Override // androidx.appcompat.app.a
    public void d(boolean z) {
        a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.a
    public void e(boolean z) {
        a(z ? 2 : 0, 2);
    }

    @Override // androidx.appcompat.app.a
    public void f(boolean z) {
        b.a.n.h hVar;
        this.w = z;
        if (z || (hVar = this.v) == null) {
            return;
        }
        hVar.a();
    }

    @Override // androidx.appcompat.app.a
    public boolean f() {
        androidx.appcompat.widget.z zVar = this.f214e;
        if (zVar == null || !zVar.h()) {
            return false;
        }
        this.f214e.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public int g() {
        return this.f214e.l();
    }

    public void g(boolean z) {
        w wVarA;
        w wVarA2;
        if (z) {
            p();
        } else {
            n();
        }
        if (!o()) {
            if (z) {
                this.f214e.c(4);
                this.f215f.setVisibility(0);
                return;
            } else {
                this.f214e.c(0);
                this.f215f.setVisibility(8);
                return;
            }
        }
        if (z) {
            wVarA2 = this.f214e.a(4, 100L);
            wVarA = this.f215f.a(0, 200L);
        } else {
            wVarA = this.f214e.a(0, 200L);
            wVarA2 = this.f215f.a(8, 100L);
        }
        b.a.n.h hVar = new b.a.n.h();
        hVar.a(wVarA2, wVarA);
        hVar.c();
    }

    @Override // androidx.appcompat.app.a
    public Context h() {
        if (this.f211b == null) {
            TypedValue typedValue = new TypedValue();
            this.f210a.getTheme().resolveAttribute(b.a.a.actionBarWidgetTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.f211b = new ContextThemeWrapper(this.f210a, i2);
            } else {
                this.f211b = this.f210a;
            }
        }
        return this.f211b;
    }

    public void h(boolean z) {
        View view;
        b.a.n.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
        }
        if (this.p != 0 || (!this.w && !z)) {
            this.y.b(null);
            return;
        }
        this.f213d.setAlpha(1.0f);
        this.f213d.setTransitioning(true);
        b.a.n.h hVar2 = new b.a.n.h();
        float f2 = -this.f213d.getHeight();
        if (z) {
            this.f213d.getLocationInWindow(new int[]{0, 0});
            f2 -= r5[1];
        }
        w wVarA = s.a(this.f213d);
        wVarA.b(f2);
        wVarA.a(this.A);
        hVar2.a(wVarA);
        if (this.q && (view = this.f216g) != null) {
            w wVarA2 = s.a(view);
            wVarA2.b(f2);
            hVar2.a(wVarA2);
        }
        hVar2.a(B);
        hVar2.a(250L);
        hVar2.a(this.y);
        this.v = hVar2;
        hVar2.c();
    }

    public void i(boolean z) {
        View view;
        View view2;
        b.a.n.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
        }
        this.f213d.setVisibility(0);
        if (this.p == 0 && (this.w || z)) {
            this.f213d.setTranslationY(0.0f);
            float f2 = -this.f213d.getHeight();
            if (z) {
                this.f213d.getLocationInWindow(new int[]{0, 0});
                f2 -= r5[1];
            }
            this.f213d.setTranslationY(f2);
            b.a.n.h hVar2 = new b.a.n.h();
            w wVarA = s.a(this.f213d);
            wVarA.b(0.0f);
            wVarA.a(this.A);
            hVar2.a(wVarA);
            if (this.q && (view2 = this.f216g) != null) {
                view2.setTranslationY(f2);
                w wVarA2 = s.a(this.f216g);
                wVarA2.b(0.0f);
                hVar2.a(wVarA2);
            }
            hVar2.a(C);
            hVar2.a(250L);
            hVar2.a(this.z);
            this.v = hVar2;
            hVar2.c();
        } else {
            this.f213d.setAlpha(1.0f);
            this.f213d.setTranslationY(0.0f);
            if (this.q && (view = this.f216g) != null) {
                view.setTranslationY(0.0f);
            }
            this.z.b(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f212c;
        if (actionBarOverlayLayout != null) {
            s.D(actionBarOverlayLayout);
        }
    }

    public void j(boolean z) {
        if (z && !this.f212c.i()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.x = z;
        this.f212c.setHideOnContentScrollEnabled(z);
    }

    public void k(boolean z) {
        this.f214e.a(z);
    }

    void l() {
        b.a aVar = this.l;
        if (aVar != null) {
            aVar.a(this.f220k);
            this.f220k = null;
            this.l = null;
        }
    }

    public int m() {
        return this.f214e.j();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void onWindowVisibilityChanged(int i2) {
        this.p = i2;
    }
}
