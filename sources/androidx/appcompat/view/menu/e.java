package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.f0;
import androidx.appcompat.widget.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class e extends n implements p, View.OnKeyListener, PopupWindow.OnDismissListener {
    private static final int C = b.a.g.abc_cascading_menu_item_layout;
    private PopupWindow.OnDismissListener A;
    boolean B;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f277f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f278g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Handler f279h;
    private View p;
    View q;
    private boolean s;
    private boolean t;
    private int u;
    private int v;
    private boolean x;
    private p.a y;
    ViewTreeObserver z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List<h> f280i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final List<d> f281j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f282k = new a();
    private final View.OnAttachStateChangeListener l = new b();
    private final f0 m = new c();
    private int n = 0;
    private int o = 0;
    private boolean w = false;
    private int r = f();

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!e.this.a() || e.this.f281j.size() <= 0 || e.this.f281j.get(0).f290a.j()) {
                return;
            }
            View view = e.this.q;
            if (view == null || !view.isShown()) {
                e.this.dismiss();
                return;
            }
            Iterator<d> it = e.this.f281j.iterator();
            while (it.hasNext()) {
                it.next().f290a.show();
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
            ViewTreeObserver viewTreeObserver = e.this.z;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    e.this.z = view.getViewTreeObserver();
                }
                e eVar = e.this;
                eVar.z.removeGlobalOnLayoutListener(eVar.f282k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    class c implements f0 {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ d f286b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ MenuItem f287c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ h f288d;

            a(d dVar, MenuItem menuItem, h hVar) {
                this.f286b = dVar;
                this.f287c = menuItem;
                this.f288d = hVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                d dVar = this.f286b;
                if (dVar != null) {
                    e.this.B = true;
                    dVar.f291b.close(false);
                    e.this.B = false;
                }
                if (this.f287c.isEnabled() && this.f287c.hasSubMenu()) {
                    this.f288d.performItemAction(this.f287c, 4);
                }
            }
        }

        c() {
        }

        @Override // androidx.appcompat.widget.f0
        public void a(h hVar, MenuItem menuItem) {
            e.this.f279h.removeCallbacksAndMessages(null);
            int size = e.this.f281j.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (hVar == e.this.f281j.get(i2).f291b) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return;
            }
            int i3 = i2 + 1;
            e.this.f279h.postAtTime(new a(i3 < e.this.f281j.size() ? e.this.f281j.get(i3) : null, menuItem, hVar), hVar, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.f0
        public void b(h hVar, MenuItem menuItem) {
            e.this.f279h.removeCallbacksAndMessages(hVar);
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final g0 f290a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final h f291b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f292c;

        public d(g0 g0Var, h hVar, int i2) {
            this.f290a = g0Var;
            this.f291b = hVar;
            this.f292c = i2;
        }

        public ListView a() {
            return this.f290a.b();
        }
    }

    public e(Context context, View view, int i2, int i3, boolean z) {
        this.f274c = context;
        this.p = view;
        this.f276e = i2;
        this.f277f = i3;
        this.f278g = z;
        Resources resources = context.getResources();
        this.f275d = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(b.a.d.abc_config_prefDialogWidth));
        this.f279h = new Handler();
    }

    private MenuItem a(h hVar, h hVar2) {
        int size = hVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = hVar.getItem(i2);
            if (item.hasSubMenu() && hVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View a(d dVar, h hVar) {
        g gVar;
        int headersCount;
        int firstVisiblePosition;
        MenuItem menuItemA = a(dVar.f291b, hVar);
        if (menuItemA == null) {
            return null;
        }
        ListView listViewA = dVar.a();
        ListAdapter adapter = listViewA.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            gVar = (g) headerViewListAdapter.getWrappedAdapter();
        } else {
            gVar = (g) adapter;
            headersCount = 0;
        }
        int count = gVar.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            }
            if (menuItemA == gVar.getItem(i2)) {
                break;
            }
            i2++;
        }
        if (i2 != -1 && (firstVisiblePosition = (i2 + headersCount) - listViewA.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listViewA.getChildCount()) {
            return listViewA.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    private int c(h hVar) {
        int size = this.f281j.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (hVar == this.f281j.get(i2).f291b) {
                return i2;
            }
        }
        return -1;
    }

    private int d(int i2) {
        List<d> list = this.f281j;
        ListView listViewA = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        listViewA.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.q.getWindowVisibleDisplayFrame(rect);
        return this.r == 1 ? (iArr[0] + listViewA.getWidth()) + i2 > rect.right ? 0 : 1 : iArr[0] - i2 < 0 ? 1 : 0;
    }

    private void d(h hVar) {
        d dVar;
        View viewA;
        int i2;
        int i3;
        int i4;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f274c);
        g gVar = new g(hVar, layoutInflaterFrom, this.f278g, C);
        if (!a() && this.w) {
            gVar.a(true);
        } else if (a()) {
            gVar.a(n.b(hVar));
        }
        int iA = n.a(gVar, null, this.f274c, this.f275d);
        g0 g0VarE = e();
        g0VarE.a((ListAdapter) gVar);
        g0VarE.b(iA);
        g0VarE.c(this.o);
        if (this.f281j.size() > 0) {
            List<d> list = this.f281j;
            dVar = list.get(list.size() - 1);
            viewA = a(dVar, hVar);
        } else {
            dVar = null;
            viewA = null;
        }
        if (viewA != null) {
            g0VarE.c(false);
            g0VarE.a((Object) null);
            int iD = d(iA);
            boolean z = iD == 1;
            this.r = iD;
            if (Build.VERSION.SDK_INT >= 26) {
                g0VarE.a(viewA);
                i3 = 0;
                i2 = 0;
            } else {
                int[] iArr = new int[2];
                this.p.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewA.getLocationOnScreen(iArr2);
                if ((this.o & 7) == 5) {
                    iArr[0] = iArr[0] + this.p.getWidth();
                    iArr2[0] = iArr2[0] + viewA.getWidth();
                }
                i2 = iArr2[0] - iArr[0];
                i3 = iArr2[1] - iArr[1];
            }
            if ((this.o & 5) == 5) {
                if (!z) {
                    iA = viewA.getWidth();
                    i4 = i2 - iA;
                }
                i4 = i2 + iA;
            } else {
                if (z) {
                    iA = viewA.getWidth();
                    i4 = i2 + iA;
                }
                i4 = i2 - iA;
            }
            g0VarE.d(i4);
            g0VarE.b(true);
            g0VarE.h(i3);
        } else {
            if (this.s) {
                g0VarE.d(this.u);
            }
            if (this.t) {
                g0VarE.h(this.v);
            }
            g0VarE.a(d());
        }
        this.f281j.add(new d(g0VarE, hVar, this.r));
        g0VarE.show();
        ListView listViewB = g0VarE.b();
        listViewB.setOnKeyListener(this);
        if (dVar == null && this.x && hVar.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(b.a.g.abc_popup_menu_header_item_layout, (ViewGroup) listViewB, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(hVar.getHeaderTitle());
            listViewB.addHeaderView(frameLayout, null, false);
            g0VarE.show();
        }
    }

    private g0 e() {
        g0 g0Var = new g0(this.f274c, null, this.f276e, this.f277f);
        g0Var.a(this.m);
        g0Var.a((AdapterView.OnItemClickListener) this);
        g0Var.a((PopupWindow.OnDismissListener) this);
        g0Var.a(this.p);
        g0Var.c(this.o);
        g0Var.a(true);
        g0Var.e(2);
        return g0Var;
    }

    private int f() {
        return b.h.o.s.k(this.p) == 1 ? 0 : 1;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(int i2) {
        if (this.n != i2) {
            this.n = i2;
            this.o = b.h.o.c.a(i2, b.h.o.s.k(this.p));
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(View view) {
        if (this.p != view) {
            this.p = view;
            this.o = b.h.o.c.a(this.n, b.h.o.s.k(this.p));
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.A = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(h hVar) {
        hVar.addMenuPresenter(this, this.f274c);
        if (a()) {
            d(hVar);
        } else {
            this.f280i.add(hVar);
        }
    }

    @Override // androidx.appcompat.view.menu.n
    public void a(boolean z) {
        this.w = z;
    }

    @Override // androidx.appcompat.view.menu.t
    public boolean a() {
        return this.f281j.size() > 0 && this.f281j.get(0).f290a.a();
    }

    @Override // androidx.appcompat.view.menu.t
    public ListView b() {
        if (this.f281j.isEmpty()) {
            return null;
        }
        return this.f281j.get(r0.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(int i2) {
        this.s = true;
        this.u = i2;
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(boolean z) {
        this.x = z;
    }

    @Override // androidx.appcompat.view.menu.n
    public void c(int i2) {
        this.t = true;
        this.v = i2;
    }

    @Override // androidx.appcompat.view.menu.n
    protected boolean c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.t
    public void dismiss() {
        int size = this.f281j.size();
        if (size > 0) {
            d[] dVarArr = (d[]) this.f281j.toArray(new d[size]);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                d dVar = dVarArr[i2];
                if (dVar.f290a.a()) {
                    dVar.f290a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void onCloseMenu(h hVar, boolean z) {
        int iC = c(hVar);
        if (iC < 0) {
            return;
        }
        int i2 = iC + 1;
        if (i2 < this.f281j.size()) {
            this.f281j.get(i2).f291b.close(false);
        }
        d dVarRemove = this.f281j.remove(iC);
        dVarRemove.f291b.removeMenuPresenter(this);
        if (this.B) {
            dVarRemove.f290a.b((Object) null);
            dVarRemove.f290a.a(0);
        }
        dVarRemove.f290a.dismiss();
        int size = this.f281j.size();
        this.r = size > 0 ? this.f281j.get(size - 1).f292c : f();
        if (size != 0) {
            if (z) {
                this.f281j.get(0).f291b.close(false);
                return;
            }
            return;
        }
        dismiss();
        p.a aVar = this.y;
        if (aVar != null) {
            aVar.onCloseMenu(hVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.z;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.z.removeGlobalOnLayoutListener(this.f282k);
            }
            this.z = null;
        }
        this.q.removeOnAttachStateChangeListener(this.l);
        this.A.onDismiss();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        d dVar;
        int size = this.f281j.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                dVar = null;
                break;
            }
            dVar = this.f281j.get(i2);
            if (!dVar.f290a.a()) {
                break;
            } else {
                i2++;
            }
        }
        if (dVar != null) {
            dVar.f291b.close(false);
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
        for (d dVar : this.f281j) {
            if (vVar == dVar.f291b) {
                dVar.a().requestFocus();
                return true;
            }
        }
        if (!vVar.hasVisibleItems()) {
            return false;
        }
        a(vVar);
        p.a aVar = this.y;
        if (aVar != null) {
            aVar.a(vVar);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.p
    public void setCallback(p.a aVar) {
        this.y = aVar;
    }

    @Override // androidx.appcompat.view.menu.t
    public void show() {
        if (a()) {
            return;
        }
        Iterator<h> it = this.f280i.iterator();
        while (it.hasNext()) {
            d(it.next());
        }
        this.f280i.clear();
        this.q = this.p;
        if (this.q != null) {
            boolean z = this.z == null;
            this.z = this.q.getViewTreeObserver();
            if (z) {
                this.z.addOnGlobalLayoutListener(this.f282k);
            }
            this.q.addOnAttachStateChangeListener(this.l);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public void updateMenuView(boolean z) {
        Iterator<d> it = this.f281j.iterator();
        while (it.hasNext()) {
            n.a(it.next().a().getAdapter()).notifyDataSetChanged();
        }
    }
}
