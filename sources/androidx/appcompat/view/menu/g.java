package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.q;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class g extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h f305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f306c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f307d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f308e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final LayoutInflater f309f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f310g;

    public g(h hVar, LayoutInflater layoutInflater, boolean z, int i2) {
        this.f308e = z;
        this.f309f = layoutInflater;
        this.f305b = hVar;
        this.f310g = i2;
        a();
    }

    void a() {
        k expandedItem = this.f305b.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<k> nonActionItems = this.f305b.getNonActionItems();
            int size = nonActionItems.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (nonActionItems.get(i2) == expandedItem) {
                    this.f306c = i2;
                    return;
                }
            }
        }
        this.f306c = -1;
    }

    public void a(boolean z) {
        this.f307d = z;
    }

    public h b() {
        return this.f305b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<k> nonActionItems = this.f308e ? this.f305b.getNonActionItems() : this.f305b.getVisibleItems();
        int i2 = this.f306c;
        int size = nonActionItems.size();
        return i2 < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public k getItem(int i2) {
        ArrayList<k> nonActionItems = this.f308e ? this.f305b.getNonActionItems() : this.f305b.getVisibleItems();
        int i3 = this.f306c;
        if (i3 >= 0 && i2 >= i3) {
            i2++;
        }
        return nonActionItems.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f309f.inflate(this.f310g, viewGroup, false);
        }
        int groupId = getItem(i2).getGroupId();
        int i3 = i2 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f305b.isGroupDividerEnabled() && groupId != (i3 >= 0 ? getItem(i3).getGroupId() : groupId));
        q.a aVar = (q.a) view;
        if (this.f307d) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.initialize(getItem(i2), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
