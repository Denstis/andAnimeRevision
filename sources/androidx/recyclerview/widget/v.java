package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public abstract class v extends RecyclerView.l {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f1399g = true;

    public final void a(RecyclerView.d0 d0Var, boolean z) {
        c(d0Var, z);
        b(d0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean a(RecyclerView.d0 d0Var) {
        return !this.f1399g || d0Var.isInvalid();
    }

    public abstract boolean a(RecyclerView.d0 d0Var, int i2, int i3, int i4, int i5);

    public abstract boolean a(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2, int i2, int i3, int i4, int i5);

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean a(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2, RecyclerView.l.c cVar, RecyclerView.l.c cVar2) {
        int i2;
        int i3;
        int i4 = cVar.f1147a;
        int i5 = cVar.f1148b;
        if (d0Var2.shouldIgnore()) {
            int i6 = cVar.f1147a;
            i3 = cVar.f1148b;
            i2 = i6;
        } else {
            i2 = cVar2.f1147a;
            i3 = cVar2.f1148b;
        }
        return a(d0Var, d0Var2, i4, i5, i2, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean a(RecyclerView.d0 d0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2) {
        return (cVar == null || (cVar.f1147a == cVar2.f1147a && cVar.f1148b == cVar2.f1148b)) ? f(d0Var) : a(d0Var, cVar.f1147a, cVar.f1148b, cVar2.f1147a, cVar2.f1148b);
    }

    public final void b(RecyclerView.d0 d0Var, boolean z) {
        d(d0Var, z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean b(RecyclerView.d0 d0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2) {
        int i2 = cVar.f1147a;
        int i3 = cVar.f1148b;
        View view = d0Var.itemView;
        int left = cVar2 == null ? view.getLeft() : cVar2.f1147a;
        int top = cVar2 == null ? view.getTop() : cVar2.f1148b;
        if (d0Var.isRemoved() || (i2 == left && i3 == top)) {
            return g(d0Var);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return a(d0Var, i2, i3, left, top);
    }

    public void c(RecyclerView.d0 d0Var, boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean c(RecyclerView.d0 d0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2) {
        if (cVar.f1147a != cVar2.f1147a || cVar.f1148b != cVar2.f1148b) {
            return a(d0Var, cVar.f1147a, cVar.f1148b, cVar2.f1147a, cVar2.f1148b);
        }
        j(d0Var);
        return false;
    }

    public void d(RecyclerView.d0 d0Var, boolean z) {
    }

    public abstract boolean f(RecyclerView.d0 d0Var);

    public abstract boolean g(RecyclerView.d0 d0Var);

    public final void h(RecyclerView.d0 d0Var) {
        n(d0Var);
        b(d0Var);
    }

    public final void i(RecyclerView.d0 d0Var) {
        o(d0Var);
    }

    public final void j(RecyclerView.d0 d0Var) {
        p(d0Var);
        b(d0Var);
    }

    public final void k(RecyclerView.d0 d0Var) {
        q(d0Var);
    }

    public final void l(RecyclerView.d0 d0Var) {
        r(d0Var);
        b(d0Var);
    }

    public final void m(RecyclerView.d0 d0Var) {
        s(d0Var);
    }

    public void n(RecyclerView.d0 d0Var) {
    }

    public void o(RecyclerView.d0 d0Var) {
    }

    public void p(RecyclerView.d0 d0Var) {
    }

    public void q(RecyclerView.d0 d0Var) {
    }

    public void r(RecyclerView.d0 d0Var) {
    }

    public void s(RecyclerView.d0 d0Var) {
    }
}
