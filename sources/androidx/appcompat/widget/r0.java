package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: loaded from: classes.dex */
public class r0 implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Toolbar f635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f637c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f638d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f640f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f641g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f642h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    CharSequence f643i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CharSequence f644j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private CharSequence f645k;
    Window.Callback l;
    boolean m;
    private c n;
    private int o;
    private int p;
    private Drawable q;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final androidx.appcompat.view.menu.a f646b;

        a() {
            this.f646b = new androidx.appcompat.view.menu.a(r0.this.f635a.getContext(), 0, R.id.home, 0, 0, r0.this.f643i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r0 r0Var = r0.this;
            Window.Callback callback = r0Var.l;
            if (callback == null || !r0Var.m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f646b);
        }
    }

    class b extends b.h.o.y {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f648a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f649b;

        b(int i2) {
            this.f649b = i2;
        }

        @Override // b.h.o.y, b.h.o.x
        public void a(View view) {
            this.f648a = true;
        }

        @Override // b.h.o.x
        public void b(View view) {
            if (this.f648a) {
                return;
            }
            r0.this.f635a.setVisibility(this.f649b);
        }

        @Override // b.h.o.y, b.h.o.x
        public void c(View view) {
            r0.this.f635a.setVisibility(0);
        }
    }

    public r0(Toolbar toolbar, boolean z) {
        this(toolbar, z, b.a.h.abc_action_bar_up_description, b.a.e.abc_ic_ab_back_material);
    }

    public r0(Toolbar toolbar, boolean z, int i2, int i3) {
        Drawable drawable;
        this.o = 0;
        this.p = 0;
        this.f635a = toolbar;
        this.f643i = toolbar.getTitle();
        this.f644j = toolbar.getSubtitle();
        this.f642h = this.f643i != null;
        this.f641g = toolbar.getNavigationIcon();
        q0 q0VarA = q0.a(toolbar.getContext(), null, b.a.j.ActionBar, b.a.a.actionBarStyle, 0);
        this.q = q0VarA.b(b.a.j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence charSequenceE = q0VarA.e(b.a.j.ActionBar_title);
            if (!TextUtils.isEmpty(charSequenceE)) {
                setTitle(charSequenceE);
            }
            CharSequence charSequenceE2 = q0VarA.e(b.a.j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(charSequenceE2)) {
                b(charSequenceE2);
            }
            Drawable drawableB = q0VarA.b(b.a.j.ActionBar_logo);
            if (drawableB != null) {
                a(drawableB);
            }
            Drawable drawableB2 = q0VarA.b(b.a.j.ActionBar_icon);
            if (drawableB2 != null) {
                setIcon(drawableB2);
            }
            if (this.f641g == null && (drawable = this.q) != null) {
                b(drawable);
            }
            a(q0VarA.d(b.a.j.ActionBar_displayOptions, 0));
            int iG = q0VarA.g(b.a.j.ActionBar_customNavigationLayout, 0);
            if (iG != 0) {
                a(LayoutInflater.from(this.f635a.getContext()).inflate(iG, (ViewGroup) this.f635a, false));
                a(this.f636b | 16);
            }
            int iF = q0VarA.f(b.a.j.ActionBar_height, 0);
            if (iF > 0) {
                ViewGroup.LayoutParams layoutParams = this.f635a.getLayoutParams();
                layoutParams.height = iF;
                this.f635a.setLayoutParams(layoutParams);
            }
            int iB = q0VarA.b(b.a.j.ActionBar_contentInsetStart, -1);
            int iB2 = q0VarA.b(b.a.j.ActionBar_contentInsetEnd, -1);
            if (iB >= 0 || iB2 >= 0) {
                this.f635a.setContentInsetsRelative(Math.max(iB, 0), Math.max(iB2, 0));
            }
            int iG2 = q0VarA.g(b.a.j.ActionBar_titleTextStyle, 0);
            if (iG2 != 0) {
                Toolbar toolbar2 = this.f635a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), iG2);
            }
            int iG3 = q0VarA.g(b.a.j.ActionBar_subtitleTextStyle, 0);
            if (iG3 != 0) {
                Toolbar toolbar3 = this.f635a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), iG3);
            }
            int iG4 = q0VarA.g(b.a.j.ActionBar_popupTheme, 0);
            if (iG4 != 0) {
                this.f635a.setPopupTheme(iG4);
            }
        } else {
            this.f636b = o();
        }
        q0VarA.a();
        d(i2);
        this.f645k = this.f635a.getNavigationContentDescription();
        this.f635a.setNavigationOnClickListener(new a());
    }

    private void c(CharSequence charSequence) {
        this.f643i = charSequence;
        if ((this.f636b & 8) != 0) {
            this.f635a.setTitle(charSequence);
        }
    }

    private int o() {
        if (this.f635a.getNavigationIcon() == null) {
            return 11;
        }
        this.q = this.f635a.getNavigationIcon();
        return 15;
    }

    private void p() {
        if ((this.f636b & 4) != 0) {
            if (TextUtils.isEmpty(this.f645k)) {
                this.f635a.setNavigationContentDescription(this.p);
            } else {
                this.f635a.setNavigationContentDescription(this.f645k);
            }
        }
    }

    private void q() {
        Toolbar toolbar;
        Drawable drawable;
        if ((this.f636b & 4) != 0) {
            toolbar = this.f635a;
            drawable = this.f641g;
            if (drawable == null) {
                drawable = this.q;
            }
        } else {
            toolbar = this.f635a;
            drawable = null;
        }
        toolbar.setNavigationIcon(drawable);
    }

    private void r() {
        Drawable drawable;
        int i2 = this.f636b;
        if ((i2 & 2) == 0) {
            drawable = null;
        } else if ((i2 & 1) == 0 || (drawable = this.f640f) == null) {
            drawable = this.f639e;
        }
        this.f635a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.z
    public b.h.o.w a(int i2, long j2) {
        b.h.o.w wVarA = b.h.o.s.a(this.f635a);
        wVarA.a(i2 == 0 ? 1.0f : 0.0f);
        wVarA.a(j2);
        wVarA.a(new b(i2));
        return wVarA;
    }

    @Override // androidx.appcompat.widget.z
    public void a(int i2) {
        View view;
        CharSequence charSequence;
        Toolbar toolbar;
        int i3 = this.f636b ^ i2;
        this.f636b = i2;
        if (i3 != 0) {
            if ((i3 & 4) != 0) {
                if ((i2 & 4) != 0) {
                    p();
                }
                q();
            }
            if ((i3 & 3) != 0) {
                r();
            }
            if ((i3 & 8) != 0) {
                if ((i2 & 8) != 0) {
                    this.f635a.setTitle(this.f643i);
                    toolbar = this.f635a;
                    charSequence = this.f644j;
                } else {
                    charSequence = null;
                    this.f635a.setTitle((CharSequence) null);
                    toolbar = this.f635a;
                }
                toolbar.setSubtitle(charSequence);
            }
            if ((i3 & 16) == 0 || (view = this.f638d) == null) {
                return;
            }
            if ((i2 & 16) != 0) {
                this.f635a.addView(view);
            } else {
                this.f635a.removeView(view);
            }
        }
    }

    public void a(Drawable drawable) {
        this.f640f = drawable;
        r();
    }

    @Override // androidx.appcompat.widget.z
    public void a(Menu menu, p.a aVar) {
        if (this.n == null) {
            this.n = new c(this.f635a.getContext());
            this.n.a(b.a.f.action_menu_presenter);
        }
        this.n.setCallback(aVar);
        this.f635a.setMenu((androidx.appcompat.view.menu.h) menu, this.n);
    }

    public void a(View view) {
        View view2 = this.f638d;
        if (view2 != null && (this.f636b & 16) != 0) {
            this.f635a.removeView(view2);
        }
        this.f638d = view;
        if (view == null || (this.f636b & 16) == 0) {
            return;
        }
        this.f635a.addView(this.f638d);
    }

    @Override // androidx.appcompat.widget.z
    public void a(p.a aVar, h.a aVar2) {
        this.f635a.setMenuCallbacks(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.z
    public void a(j0 j0Var) {
        View view = this.f637c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f635a;
            if (parent == toolbar) {
                toolbar.removeView(this.f637c);
            }
        }
        this.f637c = j0Var;
        if (j0Var == null || this.o != 2) {
            return;
        }
        this.f635a.addView(this.f637c, 0);
        Toolbar.e eVar = (Toolbar.e) this.f637c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) eVar).width = -2;
        ((ViewGroup.MarginLayoutParams) eVar).height = -2;
        eVar.f127a = 8388691;
        j0Var.setAllowCollapse(true);
    }

    public void a(CharSequence charSequence) {
        this.f645k = charSequence;
        p();
    }

    @Override // androidx.appcompat.widget.z
    public void a(boolean z) {
    }

    @Override // androidx.appcompat.widget.z
    public boolean a() {
        return this.f635a.isOverflowMenuShowing();
    }

    @Override // androidx.appcompat.widget.z
    public void b() {
        this.m = true;
    }

    @Override // androidx.appcompat.widget.z
    public void b(int i2) {
        a(i2 != 0 ? b.a.k.a.a.c(getContext(), i2) : null);
    }

    public void b(Drawable drawable) {
        this.f641g = drawable;
        q();
    }

    public void b(CharSequence charSequence) {
        this.f644j = charSequence;
        if ((this.f636b & 8) != 0) {
            this.f635a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.z
    public void b(boolean z) {
        this.f635a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.z
    public void c(int i2) {
        this.f635a.setVisibility(i2);
    }

    @Override // androidx.appcompat.widget.z
    public boolean c() {
        return this.f635a.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.z
    public void collapseActionView() {
        this.f635a.collapseActionView();
    }

    public void d(int i2) {
        if (i2 == this.p) {
            return;
        }
        this.p = i2;
        if (TextUtils.isEmpty(this.f635a.getNavigationContentDescription())) {
            e(this.p);
        }
    }

    @Override // androidx.appcompat.widget.z
    public boolean d() {
        return this.f635a.isOverflowMenuShowPending();
    }

    public void e(int i2) {
        a(i2 == 0 ? null : getContext().getString(i2));
    }

    @Override // androidx.appcompat.widget.z
    public boolean e() {
        return this.f635a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.z
    public boolean f() {
        return this.f635a.showOverflowMenu();
    }

    @Override // androidx.appcompat.widget.z
    public void g() {
        this.f635a.dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.z
    public Context getContext() {
        return this.f635a.getContext();
    }

    @Override // androidx.appcompat.widget.z
    public CharSequence getTitle() {
        return this.f635a.getTitle();
    }

    @Override // androidx.appcompat.widget.z
    public boolean h() {
        return this.f635a.hasExpandedActionView();
    }

    @Override // androidx.appcompat.widget.z
    public Menu i() {
        return this.f635a.getMenu();
    }

    @Override // androidx.appcompat.widget.z
    public int j() {
        return this.o;
    }

    @Override // androidx.appcompat.widget.z
    public ViewGroup k() {
        return this.f635a;
    }

    @Override // androidx.appcompat.widget.z
    public int l() {
        return this.f636b;
    }

    @Override // androidx.appcompat.widget.z
    public void m() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.z
    public void n() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.z
    public void setIcon(int i2) {
        setIcon(i2 != 0 ? b.a.k.a.a.c(getContext(), i2) : null);
    }

    @Override // androidx.appcompat.widget.z
    public void setIcon(Drawable drawable) {
        this.f639e = drawable;
        r();
    }

    @Override // androidx.appcompat.widget.z
    public void setTitle(CharSequence charSequence) {
        this.f642h = true;
        c(charSequence);
    }

    @Override // androidx.appcompat.widget.z
    public void setWindowCallback(Window.Callback callback) {
        this.l = callback;
    }

    @Override // androidx.appcompat.widget.z
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f642h) {
            return;
        }
        c(charSequence);
    }
}
