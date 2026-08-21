package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class n implements t, p, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Rect f334b;

    n() {
    }

    protected static int a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        ViewGroup frameLayout = viewGroup;
        View view = null;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < count; i5++) {
            int itemViewType = listAdapter.getItemViewType(i5);
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = listAdapter.getView(i5, view, frameLayout);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i2) {
                return i2;
            }
            if (measuredWidth > i3) {
                i3 = measuredWidth;
            }
        }
        return i3;
    }

    protected static g a(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (g) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (g) listAdapter;
    }

    protected static boolean b(h hVar) {
        int size = hVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = hVar.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    public abstract void a(int i2);

    public void a(Rect rect) {
        this.f334b = rect;
    }

    public abstract void a(View view);

    public abstract void a(PopupWindow.OnDismissListener onDismissListener);

    public abstract void a(h hVar);

    public abstract void a(boolean z);

    public abstract void b(int i2);

    public abstract void b(boolean z);

    public abstract void c(int i2);

    protected boolean c() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean collapseItemActionView(h hVar, k kVar) {
        return false;
    }

    public Rect d() {
        return this.f334b;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean expandItemActionView(h hVar, k kVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.p
    public void initForMenu(Context context, h hVar) {
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        a(listAdapter).f305b.performItemAction((MenuItem) listAdapter.getItem(i2), this, c() ? 0 : 4);
    }
}
