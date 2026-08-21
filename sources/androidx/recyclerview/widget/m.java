package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class m extends RecyclerView.z {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected PointF f1386k;
    private final float l;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected final LinearInterpolator f1384i = new LinearInterpolator();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected final DecelerateInterpolator f1385j = new DecelerateInterpolator();
    protected int m = 0;
    protected int n = 0;

    public m(Context context) {
        this.l = a(context.getResources().getDisplayMetrics());
    }

    private int b(int i2, int i3) {
        int i4 = i2 - i3;
        if (i2 * i4 <= 0) {
            return 0;
        }
        return i4;
    }

    protected float a(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int a(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == -1) {
            return i4 - i2;
        }
        if (i6 != 0) {
            if (i6 == 1) {
                return i5 - i3;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i7 = i4 - i2;
        if (i7 > 0) {
            return i7;
        }
        int i8 = i5 - i3;
        if (i8 < 0) {
            return i8;
        }
        return 0;
    }

    public int a(View view, int i2) {
        RecyclerView.o oVarB = b();
        if (oVarB == null || !oVarB.a()) {
            return 0;
        }
        RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
        return a(oVarB.f(view) - ((ViewGroup.MarginLayoutParams) pVar).leftMargin, oVarB.i(view) + ((ViewGroup.MarginLayoutParams) pVar).rightMargin, oVarB.o(), oVarB.r() - oVarB.p(), i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void a(int i2, int i3, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
        if (a() == 0) {
            h();
            return;
        }
        this.m = b(this.m, i2);
        this.n = b(this.n, i3);
        if (this.m == 0 && this.n == 0) {
            a(aVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void a(View view, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
        int iA = a(view, i());
        int iB = b(view, j());
        int iD = d((int) Math.sqrt((iA * iA) + (iB * iB)));
        if (iD > 0) {
            aVar.a(-iA, -iB, iD, this.f1385j);
        }
    }

    protected void a(RecyclerView.z.a aVar) {
        PointF pointFA = a(c());
        if (pointFA == null || (pointFA.x == 0.0f && pointFA.y == 0.0f)) {
            aVar.a(c());
            h();
            return;
        }
        a(pointFA);
        this.f1386k = pointFA;
        this.m = (int) (pointFA.x * 10000.0f);
        this.n = (int) (pointFA.y * 10000.0f);
        aVar.a((int) (this.m * 1.2f), (int) (this.n * 1.2f), (int) (e(10000) * 1.2f), this.f1384i);
    }

    public int b(View view, int i2) {
        RecyclerView.o oVarB = b();
        if (oVarB == null || !oVarB.b()) {
            return 0;
        }
        RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
        return a(oVarB.j(view) - ((ViewGroup.MarginLayoutParams) pVar).topMargin, oVarB.e(view) + ((ViewGroup.MarginLayoutParams) pVar).bottomMargin, oVarB.q(), oVarB.h() - oVarB.n(), i2);
    }

    protected int d(int i2) {
        double dE = e(i2);
        Double.isNaN(dE);
        return (int) Math.ceil(dE / 0.3356d);
    }

    protected int e(int i2) {
        return (int) Math.ceil(Math.abs(i2) * this.l);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void f() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void g() {
        this.n = 0;
        this.m = 0;
        this.f1386k = null;
    }

    protected int i() {
        PointF pointF = this.f1386k;
        if (pointF != null) {
            float f2 = pointF.x;
            if (f2 != 0.0f) {
                return f2 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    protected int j() {
        PointF pointF = this.f1386k;
        if (pointF != null) {
            float f2 = pointF.y;
            if (f2 != 0.0f) {
                return f2 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }
}
