package animebestapp.com.f;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n;
import androidx.recyclerview.widget.r;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class b extends n {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r f1542f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private r f1543g;

    private final int a(View view, r rVar) {
        return rVar.d(view) - rVar.f();
    }

    private final View a(RecyclerView.o oVar, r rVar) {
        if (!(oVar instanceof LinearLayoutManager)) {
            return super.c(oVar);
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) oVar;
        int iG = linearLayoutManager.G();
        if ((linearLayoutManager.H() == oVar.j() - 1) || iG == -1) {
            return null;
        }
        View viewC = oVar.c(iG);
        double dA = rVar.a(viewC);
        double dB = rVar.b(viewC);
        Double.isNaN(dB);
        if (dA >= dB / 1.1d && rVar.a(viewC) > 0) {
            return viewC;
        }
        if (linearLayoutManager.H() == oVar.j() - 1) {
            return null;
        }
        return oVar.c(iG + 1);
    }

    private final r d(RecyclerView.o oVar) {
        if (this.f1543g == null) {
            this.f1543g = r.a(oVar);
        }
        r rVar = this.f1543g;
        if (rVar != null) {
            return rVar;
        }
        f.a();
        throw null;
    }

    private final r e(RecyclerView.o oVar) {
        if (this.f1542f == null) {
            this.f1542f = r.b(oVar);
        }
        r rVar = this.f1542f;
        if (rVar != null) {
            return rVar;
        }
        f.a();
        throw null;
    }

    @Override // androidx.recyclerview.widget.w
    public void a(RecyclerView recyclerView) {
        super.a(recyclerView);
    }

    @Override // androidx.recyclerview.widget.w
    public int[] a(RecyclerView.o oVar, View view) {
        f.b(oVar, "layoutManager");
        f.b(view, "targetView");
        int[] iArr = new int[2];
        if (oVar.a()) {
            iArr[0] = a(view, d(oVar));
        } else {
            iArr[0] = 0;
        }
        if (oVar.b()) {
            iArr[1] = a(view, e(oVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.n, androidx.recyclerview.widget.w
    public View c(RecyclerView.o oVar) {
        f.b(oVar, "layoutManager");
        if (oVar instanceof LinearLayoutManager) {
            return a(oVar, oVar.a() ? d(oVar) : e(oVar));
        }
        return super.c(oVar);
    }
}
