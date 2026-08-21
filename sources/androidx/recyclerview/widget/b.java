package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class b implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RecyclerView.g f1247a;

    public b(RecyclerView.g gVar) {
        this.f1247a = gVar;
    }

    @Override // androidx.recyclerview.widget.p
    public void a(int i2, int i3) {
        this.f1247a.notifyItemMoved(i2, i3);
    }

    @Override // androidx.recyclerview.widget.p
    public void a(int i2, int i3, Object obj) {
        this.f1247a.notifyItemRangeChanged(i2, i3, obj);
    }

    @Override // androidx.recyclerview.widget.p
    public void b(int i2, int i3) {
        this.f1247a.notifyItemRangeInserted(i2, i3);
    }

    @Override // androidx.recyclerview.widget.p
    public void c(int i2, int i3) {
        this.f1247a.notifyItemRangeRemoved(i2, i3);
    }
}
