package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class n extends w {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private r f1387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private r f1388e;

    private float a(RecyclerView.o oVar, r rVar) {
        int iE = oVar.e();
        if (iE == 0) {
            return 1.0f;
        }
        View view = null;
        View view2 = null;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < iE; i4++) {
            View viewD = oVar.d(i4);
            int iL = oVar.l(viewD);
            if (iL != -1) {
                if (iL < i2) {
                    view = viewD;
                    i2 = iL;
                }
                if (iL > i3) {
                    view2 = viewD;
                    i3 = iL;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int iMax = Math.max(rVar.a(view), rVar.a(view2)) - Math.min(rVar.d(view), rVar.d(view2));
        if (iMax == 0) {
            return 1.0f;
        }
        return (iMax * 1.0f) / ((i3 - i2) + 1);
    }

    private int a(RecyclerView.o oVar, r rVar, int i2, int i3) {
        int[] iArrB = b(i2, i3);
        float fA = a(oVar, rVar);
        if (fA <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(iArrB[0]) > Math.abs(iArrB[1]) ? iArrB[0] : iArrB[1]) / fA);
    }

    private View b(RecyclerView.o oVar, r rVar) {
        int iE = oVar.e();
        View view = null;
        if (iE == 0) {
            return null;
        }
        int iF = oVar.f() ? rVar.f() + (rVar.g() / 2) : rVar.a() / 2;
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < iE; i3++) {
            View viewD = oVar.d(i3);
            int iAbs = Math.abs((rVar.d(viewD) + (rVar.b(viewD) / 2)) - iF);
            if (iAbs < i2) {
                view = viewD;
                i2 = iAbs;
            }
        }
        return view;
    }

    private r d(RecyclerView.o oVar) {
        r rVar = this.f1388e;
        if (rVar == null || rVar.f1391a != oVar) {
            this.f1388e = r.a(oVar);
        }
        return this.f1388e;
    }

    private r e(RecyclerView.o oVar) {
        r rVar = this.f1387d;
        if (rVar == null || rVar.f1391a != oVar) {
            this.f1387d = r.b(oVar);
        }
        return this.f1387d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.w
    public int a(RecyclerView.o oVar, int i2, int i3) {
        int iJ;
        View viewC;
        int iL;
        int i4;
        PointF pointFA;
        int iA;
        int iA2;
        if (!(oVar instanceof RecyclerView.z.b) || (iJ = oVar.j()) == 0 || (viewC = c(oVar)) == null || (iL = oVar.l(viewC)) == -1 || (pointFA = ((RecyclerView.z.b) oVar).a(iJ - 1)) == null) {
            return -1;
        }
        if (oVar.a()) {
            iA = a(oVar, d(oVar), i2, 0);
            if (pointFA.x < 0.0f) {
                iA = -iA;
            }
        } else {
            iA = 0;
        }
        if (oVar.b()) {
            iA2 = a(oVar, e(oVar), 0, i3);
            if (pointFA.y < 0.0f) {
                iA2 = -iA2;
            }
        } else {
            iA2 = 0;
        }
        if (oVar.b()) {
            iA = iA2;
        }
        if (iA == 0) {
            return -1;
        }
        int i5 = iL + iA;
        if (i5 < 0) {
            i5 = 0;
        }
        return i5 >= iJ ? i4 : i5;
    }

    @Override // androidx.recyclerview.widget.w
    public View c(RecyclerView.o oVar) {
        r rVarD;
        if (oVar.b()) {
            rVarD = e(oVar);
        } else {
            if (!oVar.a()) {
                return null;
            }
            rVarD = d(oVar);
        }
        return b(oVar, rVarD);
    }
}
