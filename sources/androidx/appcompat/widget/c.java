package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.q;
import androidx.appcompat.widget.ActionMenuView;
import b.h.o.b;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class c extends androidx.appcompat.view.menu.b implements b.a {
    a A;
    RunnableC0011c B;
    private b C;
    final f D;
    int E;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    d f504k;
    private Drawable l;
    private boolean m;
    private boolean n;
    private boolean o;
    private int p;
    private int q;
    private int r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private int w;
    private final SparseBooleanArray x;
    private View y;
    e z;

    private class a extends androidx.appcompat.view.menu.o {
        public a(Context context, androidx.appcompat.view.menu.v vVar, View view) {
            super(context, vVar, view, false, b.a.a.actionOverflowMenuStyle);
            if (!((androidx.appcompat.view.menu.k) vVar.getItem()).h()) {
                View view2 = c.this.f504k;
                a(view2 == null ? (View) ((androidx.appcompat.view.menu.b) c.this).f268i : view2);
            }
            a(c.this.D);
        }

        @Override // androidx.appcompat.view.menu.o
        protected void d() {
            c cVar = c.this;
            cVar.A = null;
            cVar.E = 0;
            super.d();
        }
    }

    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public androidx.appcompat.view.menu.t a() {
            a aVar = c.this.A;
            if (aVar != null) {
                return aVar.b();
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.c$c, reason: collision with other inner class name */
    private class RunnableC0011c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f506b;

        public RunnableC0011c(e eVar) {
            this.f506b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((androidx.appcompat.view.menu.b) c.this).f263d != null) {
                ((androidx.appcompat.view.menu.b) c.this).f263d.changeMenuMode();
            }
            View view = (View) ((androidx.appcompat.view.menu.b) c.this).f268i;
            if (view != null && view.getWindowToken() != null && this.f506b.f()) {
                c.this.z = this.f506b;
            }
            c.this.B = null;
        }
    }

    private class d extends AppCompatImageView implements ActionMenuView.a {

        class a extends d0 {
            a(View view, c cVar) {
                super(view);
            }

            @Override // androidx.appcompat.widget.d0
            public androidx.appcompat.view.menu.t a() {
                e eVar = c.this.z;
                if (eVar == null) {
                    return null;
                }
                return eVar.b();
            }

            @Override // androidx.appcompat.widget.d0
            public boolean b() {
                c.this.h();
                return true;
            }

            @Override // androidx.appcompat.widget.d0
            public boolean c() {
                c cVar = c.this;
                if (cVar.B != null) {
                    return false;
                }
                cVar.d();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, b.a.a.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            s0.a(this, getContentDescription());
            setOnTouchListener(new a(this, c.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            c.this.h();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i2, int i3, int i4, int i5) {
            boolean frame = super.setFrame(i2, i3, i4, i5);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                androidx.core.graphics.drawable.a.a(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    private class e extends androidx.appcompat.view.menu.o {
        public e(Context context, androidx.appcompat.view.menu.h hVar, View view, boolean z) {
            super(context, hVar, view, z, b.a.a.actionOverflowMenuStyle);
            a(8388613);
            a(c.this.D);
        }

        @Override // androidx.appcompat.view.menu.o
        protected void d() {
            if (((androidx.appcompat.view.menu.b) c.this).f263d != null) {
                ((androidx.appcompat.view.menu.b) c.this).f263d.close();
            }
            c.this.z = null;
            super.d();
        }
    }

    private class f implements p.a {
        f() {
        }

        @Override // androidx.appcompat.view.menu.p.a
        public boolean a(androidx.appcompat.view.menu.h hVar) {
            if (hVar == null) {
                return false;
            }
            c.this.E = ((androidx.appcompat.view.menu.v) hVar).getItem().getItemId();
            p.a aVarA = c.this.a();
            if (aVarA != null) {
                return aVarA.a(hVar);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.p.a
        public void onCloseMenu(androidx.appcompat.view.menu.h hVar, boolean z) {
            if (hVar instanceof androidx.appcompat.view.menu.v) {
                hVar.getRootMenu().close(false);
            }
            p.a aVarA = c.this.a();
            if (aVarA != null) {
                aVarA.onCloseMenu(hVar, z);
            }
        }
    }

    private static class g implements Parcelable {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f511b;

        static class a implements Parcelable.Creator<g> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public g createFromParcel(Parcel parcel) {
                return new g(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public g[] newArray(int i2) {
                return new g[i2];
            }
        }

        g() {
        }

        g(Parcel parcel) {
            this.f511b = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f511b);
        }
    }

    public c(Context context) {
        super(context, b.a.g.abc_action_menu_layout, b.a.g.abc_action_menu_item_layout);
        this.x = new SparseBooleanArray();
        this.D = new f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f268i;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof q.a) && ((q.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.b
    public View a(androidx.appcompat.view.menu.k kVar, View view, ViewGroup viewGroup) {
        View actionView = kVar.getActionView();
        if (actionView == null || kVar.f()) {
            actionView = super.a(kVar, view, viewGroup);
        }
        actionView.setVisibility(kVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    public void a(Configuration configuration) {
        if (!this.s) {
            this.r = b.a.n.a.a(this.f262c).c();
        }
        androidx.appcompat.view.menu.h hVar = this.f263d;
        if (hVar != null) {
            hVar.onItemsChanged(true);
        }
    }

    public void a(Drawable drawable) {
        d dVar = this.f504k;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            this.m = true;
            this.l = drawable;
        }
    }

    @Override // androidx.appcompat.view.menu.b
    public void a(androidx.appcompat.view.menu.k kVar, q.a aVar) {
        aVar.initialize(kVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f268i);
        if (this.C == null) {
            this.C = new b();
        }
        actionMenuItemView.setPopupCallback(this.C);
    }

    public void a(ActionMenuView actionMenuView) {
        this.f268i = actionMenuView;
        actionMenuView.initialize(this.f263d);
    }

    public void a(boolean z) {
        this.v = z;
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean a(int i2, androidx.appcompat.view.menu.k kVar) {
        return kVar.h();
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean a(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) == this.f504k) {
            return false;
        }
        return super.a(viewGroup, i2);
    }

    @Override // androidx.appcompat.view.menu.b
    public androidx.appcompat.view.menu.q b(ViewGroup viewGroup) {
        androidx.appcompat.view.menu.q qVar = this.f268i;
        androidx.appcompat.view.menu.q qVarB = super.b(viewGroup);
        if (qVar != qVarB) {
            ((ActionMenuView) qVarB).setPresenter(this);
        }
        return qVarB;
    }

    public void b(boolean z) {
        this.n = z;
        this.o = true;
    }

    public boolean b() {
        return d() | e();
    }

    public Drawable c() {
        d dVar = this.f504k;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.m) {
            return this.l;
        }
        return null;
    }

    public boolean d() {
        Object obj;
        RunnableC0011c runnableC0011c = this.B;
        if (runnableC0011c != null && (obj = this.f268i) != null) {
            ((View) obj).removeCallbacks(runnableC0011c);
            this.B = null;
            return true;
        }
        e eVar = this.z;
        if (eVar == null) {
            return false;
        }
        eVar.a();
        return true;
    }

    public boolean e() {
        a aVar = this.A;
        if (aVar == null) {
            return false;
        }
        aVar.a();
        return true;
    }

    public boolean f() {
        return this.B != null || g();
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean flagActionItems() {
        ArrayList<androidx.appcompat.view.menu.k> visibleItems;
        int size;
        int i2;
        int iA;
        int i3;
        c cVar = this;
        androidx.appcompat.view.menu.h hVar = cVar.f263d;
        int i4 = 0;
        if (hVar != null) {
            visibleItems = hVar.getVisibleItems();
            size = visibleItems.size();
        } else {
            visibleItems = null;
            size = 0;
        }
        int i5 = cVar.r;
        int i6 = cVar.q;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) cVar.f268i;
        int i7 = i5;
        boolean z = false;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            androidx.appcompat.view.menu.k kVar = visibleItems.get(i10);
            if (kVar.k()) {
                i8++;
            } else if (kVar.j()) {
                i9++;
            } else {
                z = true;
            }
            if (cVar.v && kVar.isActionViewExpanded()) {
                i7 = 0;
            }
        }
        if (cVar.n && (z || i9 + i8 > i7)) {
            i7--;
        }
        int i11 = i7 - i8;
        SparseBooleanArray sparseBooleanArray = cVar.x;
        sparseBooleanArray.clear();
        if (cVar.t) {
            int i12 = cVar.w;
            iA = i6 / i12;
            i2 = i12 + ((i6 % i12) / iA);
        } else {
            i2 = 0;
            iA = 0;
        }
        int i13 = i6;
        int i14 = 0;
        int i15 = 0;
        while (i14 < size) {
            androidx.appcompat.view.menu.k kVar2 = visibleItems.get(i14);
            if (kVar2.k()) {
                View viewA = cVar.a(kVar2, cVar.y, viewGroup);
                if (cVar.y == null) {
                    cVar.y = viewA;
                }
                if (cVar.t) {
                    iA -= ActionMenuView.a(viewA, i2, iA, iMakeMeasureSpec, i4);
                } else {
                    viewA.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = viewA.getMeasuredWidth();
                i13 -= measuredWidth;
                if (i15 != 0) {
                    measuredWidth = i15;
                }
                int groupId = kVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                kVar2.d(true);
                i3 = size;
                i15 = measuredWidth;
            } else if (kVar2.j()) {
                int groupId2 = kVar2.getGroupId();
                boolean z2 = sparseBooleanArray.get(groupId2);
                boolean z3 = (i11 > 0 || z2) && i13 > 0 && (!cVar.t || iA > 0);
                boolean z4 = z3;
                if (z3) {
                    View viewA2 = cVar.a(kVar2, cVar.y, viewGroup);
                    i3 = size;
                    if (cVar.y == null) {
                        cVar.y = viewA2;
                    }
                    if (cVar.t) {
                        int iA2 = ActionMenuView.a(viewA2, i2, iA, iMakeMeasureSpec, 0);
                        iA -= iA2;
                        if (iA2 == 0) {
                            z4 = false;
                        }
                    } else {
                        viewA2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    int measuredWidth2 = viewA2.getMeasuredWidth();
                    i13 -= measuredWidth2;
                    if (i15 == 0) {
                        i15 = measuredWidth2;
                    }
                    z3 = z4 & (!cVar.t ? i13 + i15 <= 0 : i13 < 0);
                } else {
                    i3 = size;
                }
                if (z3 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z2) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i16 = 0; i16 < i14; i16++) {
                        androidx.appcompat.view.menu.k kVar3 = visibleItems.get(i16);
                        if (kVar3.getGroupId() == groupId2) {
                            if (kVar3.h()) {
                                i11++;
                            }
                            kVar3.d(false);
                        }
                    }
                }
                if (z3) {
                    i11--;
                }
                kVar2.d(z3);
            } else {
                i3 = size;
                kVar2.d(false);
                i14++;
                i4 = 0;
                cVar = this;
                size = i3;
            }
            i14++;
            i4 = 0;
            cVar = this;
            size = i3;
        }
        return true;
    }

    public boolean g() {
        e eVar = this.z;
        return eVar != null && eVar.c();
    }

    public boolean h() {
        androidx.appcompat.view.menu.h hVar;
        if (!this.n || g() || (hVar = this.f263d) == null || this.f268i == null || this.B != null || hVar.getNonActionItems().isEmpty()) {
            return false;
        }
        this.B = new RunnableC0011c(new e(this.f262c, this.f263d, this.f504k, true));
        ((View) this.f268i).post(this.B);
        super.onSubMenuSelected(null);
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.p
    public void initForMenu(Context context, androidx.appcompat.view.menu.h hVar) {
        super.initForMenu(context, hVar);
        Resources resources = context.getResources();
        b.a.n.a aVarA = b.a.n.a.a(context);
        if (!this.o) {
            this.n = aVarA.g();
        }
        if (!this.u) {
            this.p = aVarA.b();
        }
        if (!this.s) {
            this.r = aVarA.c();
        }
        int measuredWidth = this.p;
        if (this.n) {
            if (this.f504k == null) {
                this.f504k = new d(this.f261b);
                if (this.m) {
                    this.f504k.setImageDrawable(this.l);
                    this.l = null;
                    this.m = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f504k.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f504k.getMeasuredWidth();
        } else {
            this.f504k = null;
        }
        this.q = measuredWidth;
        this.w = (int) (resources.getDisplayMetrics().density * 56.0f);
        this.y = null;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.p
    public void onCloseMenu(androidx.appcompat.view.menu.h hVar, boolean z) {
        b();
        super.onCloseMenu(hVar, z);
    }

    @Override // androidx.appcompat.view.menu.p
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i2;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof g) && (i2 = ((g) parcelable).f511b) > 0 && (menuItemFindItem = this.f263d.findItem(i2)) != null) {
            onSubMenuSelected((androidx.appcompat.view.menu.v) menuItemFindItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public Parcelable onSaveInstanceState() {
        g gVar = new g();
        gVar.f511b = this.E;
        return gVar;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.p
    public boolean onSubMenuSelected(androidx.appcompat.view.menu.v vVar) {
        boolean z = false;
        if (!vVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.v vVar2 = vVar;
        while (vVar2.getParentMenu() != this.f263d) {
            vVar2 = (androidx.appcompat.view.menu.v) vVar2.getParentMenu();
        }
        View viewA = a(vVar2.getItem());
        if (viewA == null) {
            return false;
        }
        this.E = vVar.getItem().getItemId();
        int size = vVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            MenuItem item = vVar.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        this.A = new a(this.f262c, vVar, viewA);
        this.A.a(z);
        this.A.e();
        super.onSubMenuSelected(vVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.p
    public void updateMenuView(boolean z) {
        super.updateMenuView(z);
        ((View) this.f268i).requestLayout();
        androidx.appcompat.view.menu.h hVar = this.f263d;
        boolean z2 = false;
        if (hVar != null) {
            ArrayList<androidx.appcompat.view.menu.k> actionItems = hVar.getActionItems();
            int size = actionItems.size();
            for (int i2 = 0; i2 < size; i2++) {
                b.h.o.b bVarA = actionItems.get(i2).a();
                if (bVarA != null) {
                    bVarA.a(this);
                }
            }
        }
        androidx.appcompat.view.menu.h hVar2 = this.f263d;
        ArrayList<androidx.appcompat.view.menu.k> nonActionItems = hVar2 != null ? hVar2.getNonActionItems() : null;
        if (this.n && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z2 = !nonActionItems.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        d dVar = this.f504k;
        if (z2) {
            if (dVar == null) {
                this.f504k = new d(this.f261b);
            }
            ViewGroup viewGroup = (ViewGroup) this.f504k.getParent();
            if (viewGroup != this.f268i) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f504k);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f268i;
                actionMenuView.addView(this.f504k, actionMenuView.d());
            }
        } else if (dVar != null) {
            Object parent = dVar.getParent();
            Object obj = this.f268i;
            if (parent == obj) {
                ((ViewGroup) obj).removeView(this.f504k);
            }
        }
        ((ActionMenuView) this.f268i).setOverflowReserved(this.n);
    }
}
