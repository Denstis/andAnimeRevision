package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.g0;

/* JADX INFO: loaded from: classes.dex */
final class u extends n implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, p, View.OnKeyListener {
    private static final int w = b.a.g.abc_popup_menu_item_layout;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f349e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f351g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final g0 f354j;
    private PopupWindow.OnDismissListener m;
    private View n;
    View o;
    private p.a p;
    ViewTreeObserver q;
    private boolean r;
    private boolean s;
    private int t;
    private boolean v;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f355k = new a();
    private final View.OnAttachStateChangeListener l = new b();
    private int u = 0;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!u.this.a() || u.this.f354j.j()) {
                return;
            }
            View view = u.this.o;
            if (view == null || !view.isShown()) {
                u.this.dismiss();
            } else {
                u.this.f354j.show();
            }
        }
    }

    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = u.this.q;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    u.this.q = view.getViewTreeObserver();
                }
                u uVar = u.this;
                uVar.q.removeGlobalOnLayoutListener(uVar.f355k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public u(Context context, h hVar, View view, int i2, int i3, boolean z) {
        this.f347c = context;
        this.f348d = hVar;
        this.f350f = z;
        this.f349e = new g(hVar, LayoutInflater.from(context), this.f350f, w);
        this.f352h = i2;
        this.f353i = i3;
        Resources resources = context.getResources();
        this.f351g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(b.a.d.abc_config_prefDialogWidth));
        this.n = view;
        this.f354j = new g0(this.f347c, null, this.f352h, this.f353i);
        hVar.addMenuPresenter(this, context);
    }

    private boolean e() {
        View view;
        if (a()) {
            return true;
        }
        if (this.r || (view = this.n) == null) {
            return false;
        }
        this.o = view;
        this.f354j.a((PopupWindow.OnDismissListener) this);
        this.f354j.a((AdapterView.OnItemClickListener) this);
        this.f354j.a(true);
        View view2 = this.o;
        boolean z = this.q == null;
        this.q = view2.getViewTreeObserver();
        if (z) {
            this.q.addOnGlobalLayoutListener(this.f355k);
        }
        view2.addOnAttachStateChangeListener(this.l);
        this.f354j.a(view2);
        this.f354j.c(this.u);
        if (!this.s) {
            this.t = n.a(this.f349e, null, this.f347c, this.f351g);
            this.s = true;
        }
        this.f354j.b(this.t);
        this.f354j.e(2);
        this.f354j.a(d());
        this.f354j.show();
        ListView listViewB = this.f354j.b();
        listViewB.setOnKeyListener(this);
        if (this.v && this.f348d.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f347c).inflate(b.a.g.abc_popup_menu_header_item_layout, (ViewGroup) listViewB, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.f348d.getHeaderTitle());
            }
            frameLayout.setEnabled(false);
            listViewB.addHeaderView(frameLayout, null, false);
        }
        this.f354j.a((ListAdapter) this.f349e);
        this.f354j.show();
        return true;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(int i2) {
        this.u = i2;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(View view) {
        this.n = view;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.m = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(h hVar) {
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(boolean z) {
        this.f349e.a(z);
    }

    @Override // androidx.appcompat.view.menu.t
    public boolean a() {
        return !this.r && this.f354j.a();
    }

    @Override // androidx.appcompat.view.menu.t
    public ListView b() {
        return this.f354j.b();
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(int i2) {
        this.f354j.d(i2);
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(boolean z) {
        this.v = z;
    }

    @Override // androidx.appcompat.view.menu.n
    public void c(int i2) {
        this.f354j.h(i2);
    }

    @Override // androidx.appcompat.view.menu.t
    public void dismiss() {
        if (a()) {
            this.f354j.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void onCloseMenu(h hVar, boolean z) {
        if (hVar != this.f348d) {
            return;
        }
        dismiss();
        p.a aVar = this.p;
        if (aVar != null) {
            aVar.onCloseMenu(hVar, z);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.r = true;
        this.f348d.close();
        ViewTreeObserver viewTreeObserver = this.q;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.q = this.o.getViewTreeObserver();
            }
            this.q.removeGlobalOnLayoutListener(this.f355k);
            this.q = null;
        }
        this.o.removeOnAttachStateChangeListener(this.l);
        PopupWindow.OnDismissListener onDismissListener = this.m;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.p
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.p
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean onSubMenuSelected(v vVar) {
        if (vVar.hasVisibleItems()) {
            o oVar = new o(this.f347c, vVar, this.o, this.f350f, this.f352h, this.f353i);
            oVar.a(this.p);
            oVar.a(n.b(vVar));
            oVar.a(this.m);
            this.m = null;
            this.f348d.close(false);
            int iF = this.f354j.f();
            int iG = this.f354j.g();
            if ((Gravity.getAbsoluteGravity(this.u, b.h.o.s.k(this.n)) & 7) == 5) {
                iF += this.n.getWidth();
            }
            if (oVar.a(iF, iG)) {
                p.a aVar = this.p;
                if (aVar == null) {
                    return true;
                }
                aVar.a(vVar);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void setCallback(p.a aVar) {
        this.p = aVar;
    }

    @Override // androidx.appcompat.view.menu.t
    public void show() {
        if (!e()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public void updateMenuView(boolean z) {
        this.s = false;
        g gVar = this.f349e;
        if (gVar != null) {
            gVar.notifyDataSetChanged();
        }
    }
}
