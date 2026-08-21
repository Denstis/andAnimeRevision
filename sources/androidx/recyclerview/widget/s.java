package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class s extends w {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private r f1394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private r f1395e;

    private int a(RecyclerView.o oVar, View view, r rVar) {
        return (rVar.d(view) + (rVar.b(view) / 2)) - (oVar.f() ? rVar.f() + (rVar.g() / 2) : rVar.a() / 2);
    }

    private View a(RecyclerView.o oVar, r rVar) {
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

    private View b(RecyclerView.o oVar, r rVar) {
        int iE = oVar.e();
        View view = null;
        if (iE == 0) {
            return null;
        }
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < iE; i3++) {
            View viewD = oVar.d(i3);
            int iD = rVar.d(viewD);
            if (iD < i2) {
                view = viewD;
                i2 = iD;
            }
        }
        return view;
    }

    private r d(RecyclerView.o oVar) {
        r rVar = this.f1395e;
        if (rVar == null || rVar.f1391a != oVar) {
            this.f1395e = r.a(oVar);
        }
        return this.f1395e;
    }

    private r e(RecyclerView.o oVar) {
        r rVar = this.f1394d;
        if (rVar == null || rVar.f1391a != oVar) {
            this.f1394d = r.b(oVar);
        }
        return this.f1394d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0060  */
    @Override // androidx.recyclerview.widget.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int a(androidx.recyclerview.widget.RecyclerView.o r6, int r7, int r8) {
        /*
            r5 = this;
            int r0 = r6.j()
            r1 = -1
            if (r0 != 0) goto L8
            return r1
        L8:
            r2 = 0
            boolean r3 = r6.b()
            if (r3 == 0) goto L18
            androidx.recyclerview.widget.r r2 = r5.e(r6)
        L13:
            android.view.View r2 = r5.b(r6, r2)
            goto L23
        L18:
            boolean r3 = r6.a()
            if (r3 == 0) goto L23
            androidx.recyclerview.widget.r r2 = r5.d(r6)
            goto L13
        L23:
            if (r2 != 0) goto L26
            return r1
        L26:
            int r2 = r6.l(r2)
            if (r2 != r1) goto L2d
            return r1
        L2d:
            boolean r1 = r6.a()
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L3b
            if (r7 <= 0) goto L39
        L37:
            r7 = 1
            goto L3e
        L39:
            r7 = 0
            goto L3e
        L3b:
            if (r8 <= 0) goto L39
            goto L37
        L3e:
            boolean r8 = r6 instanceof androidx.recyclerview.widget.RecyclerView.z.b
            if (r8 == 0) goto L59
            androidx.recyclerview.widget.RecyclerView$z$b r6 = (androidx.recyclerview.widget.RecyclerView.z.b) r6
            int r0 = r0 - r4
            android.graphics.PointF r6 = r6.a(r0)
            if (r6 == 0) goto L59
            float r8 = r6.x
            r0 = 0
            int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r8 < 0) goto L58
            float r6 = r6.y
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 >= 0) goto L59
        L58:
            r3 = 1
        L59:
            if (r3 == 0) goto L60
            if (r7 == 0) goto L64
            int r2 = r2 + (-1)
            goto L64
        L60:
            if (r7 == 0) goto L64
            int r2 = r2 + 1
        L64:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.s.a(androidx.recyclerview.widget.RecyclerView$o, int, int):int");
    }

    @Override // androidx.recyclerview.widget.w
    public int[] a(RecyclerView.o oVar, View view) {
        int[] iArr = new int[2];
        if (oVar.a()) {
            iArr[0] = a(oVar, view, d(oVar));
        } else {
            iArr[0] = 0;
        }
        if (oVar.b()) {
            iArr[1] = a(oVar, view, e(oVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
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
        return a(oVar, rVarD);
    }
}
