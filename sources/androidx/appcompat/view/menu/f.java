package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.q;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f implements p, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    LayoutInflater f294c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    h f295d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ExpandedMenuView f296e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f297f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f298g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f299h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private p.a f300i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    a f301j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f302k;

    private class a extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f303b = -1;

        public a() {
            a();
        }

        void a() {
            k expandedItem = f.this.f295d.getExpandedItem();
            if (expandedItem != null) {
                ArrayList<k> nonActionItems = f.this.f295d.getNonActionItems();
                int size = nonActionItems.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (nonActionItems.get(i2) == expandedItem) {
                        this.f303b = i2;
                        return;
                    }
                }
            }
            this.f303b = -1;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = f.this.f295d.getNonActionItems().size() - f.this.f297f;
            return this.f303b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public k getItem(int i2) {
            ArrayList<k> nonActionItems = f.this.f295d.getNonActionItems();
            int i3 = i2 + f.this.f297f;
            int i4 = this.f303b;
            if (i4 >= 0 && i3 >= i4) {
                i3++;
            }
            return nonActionItems.get(i3);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                f fVar = f.this;
                view = fVar.f294c.inflate(fVar.f299h, viewGroup, false);
            }
            ((q.a) view).initialize(getItem(i2), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public f(int i2, int i3) {
        this.f299h = i2;
        this.f298g = i3;
    }

    public f(Context context, int i2) {
        this(i2, 0);
        this.f293b = context;
        this.f294c = LayoutInflater.from(this.f293b);
    }

    public ListAdapter a() {
        if (this.f301j == null) {
            this.f301j = new a();
        }
        return this.f301j;
    }

    public q a(ViewGroup viewGroup) {
        if (this.f296e == null) {
            this.f296e = (ExpandedMenuView) this.f294c.inflate(b.a.g.abc_expanded_menu_layout, viewGroup, false);
            if (this.f301j == null) {
                this.f301j = new a();
            }
            this.f296e.setAdapter((ListAdapter) this.f301j);
            this.f296e.setOnItemClickListener(this);
        }
        return this.f296e;
    }

    public void a(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f296e.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public void b(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f296e;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean collapseItemActionView(h hVar, k kVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean expandItemActionView(h hVar, k kVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public int getId() {
        return this.f302k;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.view.menu.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void initForMenu(android.content.Context r3, androidx.appcompat.view.menu.h r4) {
        /*
            r2 = this;
            int r0 = r2.f298g
            if (r0 == 0) goto L14
            android.view.ContextThemeWrapper r1 = new android.view.ContextThemeWrapper
            r1.<init>(r3, r0)
            r2.f293b = r1
        Lb:
            android.content.Context r3 = r2.f293b
            android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
            r2.f294c = r3
            goto L1f
        L14:
            android.content.Context r0 = r2.f293b
            if (r0 == 0) goto L1f
            r2.f293b = r3
            android.view.LayoutInflater r3 = r2.f294c
            if (r3 != 0) goto L1f
            goto Lb
        L1f:
            r2.f295d = r4
            androidx.appcompat.view.menu.f$a r3 = r2.f301j
            if (r3 == 0) goto L28
            r3.notifyDataSetChanged()
        L28:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.f.initForMenu(android.content.Context, androidx.appcompat.view.menu.h):void");
    }

    @Override // androidx.appcompat.view.menu.p
    public void onCloseMenu(h hVar, boolean z) {
        p.a aVar = this.f300i;
        if (aVar != null) {
            aVar.onCloseMenu(hVar, z);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.f295d.performItemAction(this.f301j.getItem(i2), this, 0);
    }

    @Override // androidx.appcompat.view.menu.p
    public void onRestoreInstanceState(Parcelable parcelable) {
        a((Bundle) parcelable);
    }

    @Override // androidx.appcompat.view.menu.p
    public Parcelable onSaveInstanceState() {
        if (this.f296e == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        b(bundle);
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean onSubMenuSelected(v vVar) {
        if (!vVar.hasVisibleItems()) {
            return false;
        }
        new i(vVar).a((IBinder) null);
        p.a aVar = this.f300i;
        if (aVar == null) {
            return true;
        }
        aVar.a(vVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.p
    public void setCallback(p.a aVar) {
        this.f300i = aVar;
    }

    @Override // androidx.appcompat.view.menu.p
    public void updateMenuView(boolean z) {
        a aVar = this.f301j;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }
}
