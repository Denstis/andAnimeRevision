package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.q;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Context f262c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected h f263d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected LayoutInflater f264e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private p.a f265f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f266g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f267h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected q f268i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f269j;

    public b(Context context, int i2, int i3) {
        this.f261b = context;
        this.f264e = LayoutInflater.from(context);
        this.f266g = i2;
        this.f267h = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View a(k kVar, View view, ViewGroup viewGroup) {
        q.a aVarA = view instanceof q.a ? (q.a) view : a(viewGroup);
        a(kVar, aVarA);
        return (View) aVarA;
    }

    public p.a a() {
        return this.f265f;
    }

    public q.a a(ViewGroup viewGroup) {
        return (q.a) this.f264e.inflate(this.f267h, viewGroup, false);
    }

    public void a(int i2) {
        this.f269j = i2;
    }

    protected void a(View view, int i2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f268i).addView(view, i2);
    }

    public abstract void a(k kVar, q.a aVar);

    public abstract boolean a(int i2, k kVar);

    protected boolean a(ViewGroup viewGroup, int i2) {
        viewGroup.removeViewAt(i2);
        return true;
    }

    public q b(ViewGroup viewGroup) {
        if (this.f268i == null) {
            this.f268i = (q) this.f264e.inflate(this.f266g, viewGroup, false);
            this.f268i.initialize(this.f263d);
            updateMenuView(true);
        }
        return this.f268i;
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
    public int getId() {
        return this.f269j;
    }

    @Override // androidx.appcompat.view.menu.p
    public void initForMenu(Context context, h hVar) {
        this.f262c = context;
        LayoutInflater.from(this.f262c);
        this.f263d = hVar;
    }

    @Override // androidx.appcompat.view.menu.p
    public void onCloseMenu(h hVar, boolean z) {
        p.a aVar = this.f265f;
        if (aVar != null) {
            aVar.onCloseMenu(hVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean onSubMenuSelected(v vVar) {
        p.a aVar = this.f265f;
        if (aVar != null) {
            return aVar.a(vVar);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void setCallback(p.a aVar) {
        this.f265f = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.p
    public void updateMenuView(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f268i;
        if (viewGroup == null) {
            return;
        }
        h hVar = this.f263d;
        int i2 = 0;
        if (hVar != null) {
            hVar.flagActionItems();
            ArrayList<k> visibleItems = this.f263d.getVisibleItems();
            int size = visibleItems.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                k kVar = visibleItems.get(i4);
                if (a(i3, kVar)) {
                    View childAt = viewGroup.getChildAt(i3);
                    k itemData = childAt instanceof q.a ? ((q.a) childAt).getItemData() : null;
                    View viewA = a(kVar, childAt, viewGroup);
                    if (kVar != itemData) {
                        viewA.setPressed(false);
                        viewA.jumpDrawablesToCurrentState();
                    }
                    if (viewA != childAt) {
                        a(viewA, i3);
                    }
                    i3++;
                }
            }
            i2 = i3;
        }
        while (i2 < viewGroup.getChildCount()) {
            if (!a(viewGroup, i2)) {
                i2++;
            }
        }
    }
}
