package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
class u {
    static int a(RecyclerView.a0 a0Var, r rVar, View view, View view2, RecyclerView.o oVar, boolean z) {
        if (oVar.e() == 0 || a0Var.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(oVar.l(view) - oVar.l(view2)) + 1;
        }
        return Math.min(rVar.g(), rVar.a(view2) - rVar.d(view));
    }

    static int a(RecyclerView.a0 a0Var, r rVar, View view, View view2, RecyclerView.o oVar, boolean z, boolean z2) {
        if (oVar.e() == 0 || a0Var.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z2 ? Math.max(0, (a0Var.a() - Math.max(oVar.l(view), oVar.l(view2))) - 1) : Math.max(0, Math.min(oVar.l(view), oVar.l(view2)));
        if (z) {
            return Math.round((iMax * (Math.abs(rVar.a(view2) - rVar.d(view)) / (Math.abs(oVar.l(view) - oVar.l(view2)) + 1))) + (rVar.f() - rVar.d(view)));
        }
        return iMax;
    }

    static int b(RecyclerView.a0 a0Var, r rVar, View view, View view2, RecyclerView.o oVar, boolean z) {
        if (oVar.e() == 0 || a0Var.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return a0Var.a();
        }
        return (int) (((rVar.a(view2) - rVar.d(view)) / (Math.abs(oVar.l(view) - oVar.l(view2)) + 1)) * a0Var.a());
    }
}
