package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.d0;
import androidx.recyclerview.widget.c;
import androidx.recyclerview.widget.h;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class o<T, VH extends RecyclerView.d0> extends RecyclerView.g<VH> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d<T> f1389a;

    protected o(h.d<T> dVar) {
        this.f1389a = new d<>(new b(this), new c.a(dVar).a());
    }

    protected T a(int i2) {
        return this.f1389a.a().get(i2);
    }

    public void a(List<T> list) {
        this.f1389a.a(list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        return this.f1389a.a().size();
    }
}
