package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.h.o.b0.c;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    boolean H;
    int I;
    int[] J;
    View[] K;
    final SparseIntArray L;
    final SparseIntArray M;
    c N;
    final Rect O;

    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int b(int i2) {
            return 1;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int c(int i2, int i3) {
            return i2 % i3;
        }
    }

    public static class b extends RecyclerView.p {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1091e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1092f;

        public b(int i2, int i3) {
            super(i2, i3);
            this.f1091e = -1;
            this.f1092f = 0;
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1091e = -1;
            this.f1092f = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1091e = -1;
            this.f1092f = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1091e = -1;
            this.f1092f = 0;
        }

        public int e() {
            return this.f1091e;
        }

        public int f() {
            return this.f1092f;
        }
    }

    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final SparseIntArray f1093a = new SparseIntArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1094b = false;

        int a(int i2) {
            int size = this.f1093a.size() - 1;
            int i3 = 0;
            while (i3 <= size) {
                int i4 = (i3 + size) >>> 1;
                if (this.f1093a.keyAt(i4) < i2) {
                    i3 = i4 + 1;
                } else {
                    size = i4 - 1;
                }
            }
            int i5 = i3 - 1;
            if (i5 < 0 || i5 >= this.f1093a.size()) {
                return -1;
            }
            return this.f1093a.keyAt(i5);
        }

        int a(int i2, int i3) {
            if (!this.f1094b) {
                return c(i2, i3);
            }
            int i4 = this.f1093a.get(i2, -1);
            if (i4 != -1) {
                return i4;
            }
            int iC = c(i2, i3);
            this.f1093a.put(i2, iC);
            return iC;
        }

        public void a() {
            this.f1093a.clear();
        }

        public abstract int b(int i2);

        public int b(int i2, int i3) {
            int iB = b(i2);
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                int iB2 = b(i6);
                i4 += iB2;
                if (i4 == i3) {
                    i5++;
                    i4 = 0;
                } else if (i4 > i3) {
                    i5++;
                    i4 = iB2;
                }
            }
            return i4 + iB > i3 ? i5 + 1 : i5;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0031 -> B:19:0x0036). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0033 -> B:19:0x0036). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0035 -> B:19:0x0036). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int c(int r6, int r7) {
            /*
                r5 = this;
                int r0 = r5.b(r6)
                r1 = 0
                if (r0 != r7) goto L8
                return r1
            L8:
                boolean r2 = r5.f1094b
                if (r2 == 0) goto L26
                android.util.SparseIntArray r2 = r5.f1093a
                int r2 = r2.size()
                if (r2 <= 0) goto L26
                int r2 = r5.a(r6)
                if (r2 < 0) goto L26
                android.util.SparseIntArray r3 = r5.f1093a
                int r3 = r3.get(r2)
                int r4 = r5.b(r2)
                int r3 = r3 + r4
                goto L36
            L26:
                r2 = 0
                r3 = 0
            L28:
                if (r2 >= r6) goto L39
                int r4 = r5.b(r2)
                int r3 = r3 + r4
                if (r3 != r7) goto L33
                r3 = 0
                goto L36
            L33:
                if (r3 <= r7) goto L36
                r3 = r4
            L36:
                int r2 = r2 + 1
                goto L28
            L39:
                int r0 = r0 + r3
                if (r0 > r7) goto L3d
                return r3
            L3d:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.c.c(int, int):int");
        }
    }

    public GridLayoutManager(Context context, int i2) {
        super(context);
        this.H = false;
        this.I = -1;
        this.L = new SparseIntArray();
        this.M = new SparseIntArray();
        this.N = new a();
        this.O = new Rect();
        l(i2);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.H = false;
        this.I = -1;
        this.L = new SparseIntArray();
        this.M = new SparseIntArray();
        this.N = new a();
        this.O = new Rect();
        l(RecyclerView.o.a(context, attributeSet, i2, i3).f1164b);
    }

    private void M() {
        int iE = e();
        for (int i2 = 0; i2 < iE; i2++) {
            b bVar = (b) d(i2).getLayoutParams();
            int iA = bVar.a();
            this.L.put(iA, bVar.f());
            this.M.put(iA, bVar.e());
        }
    }

    private void N() {
        this.L.clear();
        this.M.clear();
    }

    private void O() {
        View[] viewArr = this.K;
        if (viewArr == null || viewArr.length != this.I) {
            this.K = new View[this.I];
        }
    }

    private void P() {
        int iH;
        int iQ;
        if (J() == 1) {
            iH = r() - p();
            iQ = o();
        } else {
            iH = h() - n();
            iQ = q();
        }
        m(iH - iQ);
    }

    private int a(RecyclerView.v vVar, RecyclerView.a0 a0Var, int i2) {
        if (!a0Var.d()) {
            return this.N.b(i2, this.I);
        }
        int iA = vVar.a(i2);
        if (iA != -1) {
            return this.N.b(iA, this.I);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i2);
        return 0;
    }

    private void a(float f2, int i2) {
        m(Math.max(Math.round(f2 * this.I), i2));
    }

    private void a(View view, int i2, int i3, boolean z) {
        RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
        if (z ? b(view, i2, i3, pVar) : a(view, i2, i3, pVar)) {
            view.measure(i2, i3);
        }
    }

    private void a(View view, int i2, boolean z) {
        int iA;
        int iA2;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.f1168b;
        int i3 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i4 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int iG = g(bVar.f1091e, bVar.f1092f);
        if (this.s == 1) {
            iA2 = RecyclerView.o.a(iG, i2, i4, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            iA = RecyclerView.o.a(this.u.g(), i(), i3, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int iA3 = RecyclerView.o.a(iG, i2, i3, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int iA4 = RecyclerView.o.a(this.u.g(), s(), i4, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            iA = iA3;
            iA2 = iA4;
        }
        a(view, iA2, iA, z);
    }

    private void a(RecyclerView.v vVar, RecyclerView.a0 a0Var, int i2, int i3, boolean z) {
        int i4;
        int i5;
        int i6 = 0;
        int i7 = -1;
        if (z) {
            i7 = i2;
            i4 = 0;
            i5 = 1;
        } else {
            i4 = i2 - 1;
            i5 = -1;
        }
        while (i4 != i7) {
            View view = this.K[i4];
            b bVar = (b) view.getLayoutParams();
            bVar.f1092f = c(vVar, a0Var, l(view));
            bVar.f1091e = i6;
            i6 += bVar.f1092f;
            i4 += i5;
        }
    }

    static int[] a(int[] iArr, int i2, int i3) {
        int i4;
        if (iArr == null || iArr.length != i2 + 1 || iArr[iArr.length - 1] != i3) {
            iArr = new int[i2 + 1];
        }
        int i5 = 0;
        iArr[0] = 0;
        int i6 = i3 / i2;
        int i7 = i3 % i2;
        int i8 = 0;
        for (int i9 = 1; i9 <= i2; i9++) {
            i5 += i7;
            if (i5 <= 0 || i2 - i5 >= i7) {
                i4 = i6;
            } else {
                i4 = i6 + 1;
                i5 -= i2;
            }
            i8 += i4;
            iArr[i9] = i8;
        }
        return iArr;
    }

    private int b(RecyclerView.v vVar, RecyclerView.a0 a0Var, int i2) {
        if (!a0Var.d()) {
            return this.N.a(i2, this.I);
        }
        int i3 = this.M.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        int iA = vVar.a(i2);
        if (iA != -1) {
            return this.N.a(iA, this.I);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 0;
    }

    private void b(RecyclerView.v vVar, RecyclerView.a0 a0Var, LinearLayoutManager.a aVar, int i2) {
        boolean z = i2 == 1;
        int iB = b(vVar, a0Var, aVar.f1096b);
        if (z) {
            while (iB > 0) {
                int i3 = aVar.f1096b;
                if (i3 <= 0) {
                    return;
                }
                aVar.f1096b = i3 - 1;
                iB = b(vVar, a0Var, aVar.f1096b);
            }
            return;
        }
        int iA = a0Var.a() - 1;
        int i4 = aVar.f1096b;
        while (i4 < iA) {
            int i5 = i4 + 1;
            int iB2 = b(vVar, a0Var, i5);
            if (iB2 <= iB) {
                break;
            }
            i4 = i5;
            iB = iB2;
        }
        aVar.f1096b = i4;
    }

    private int c(RecyclerView.v vVar, RecyclerView.a0 a0Var, int i2) {
        if (!a0Var.d()) {
            return this.N.b(i2);
        }
        int i3 = this.L.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        int iA = vVar.a(i2);
        if (iA != -1) {
            return this.N.b(iA);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 1;
    }

    private void m(int i2) {
        this.J = a(this.J, this.I, i2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public boolean D() {
        return this.D == null && !this.H;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int a(int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        P();
        O();
        return super.a(i2, vVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int a(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        if (this.s == 1) {
            return this.I;
        }
        if (a0Var.a() < 1) {
            return 0;
        }
        return a(vVar, a0Var, a0Var.a() - 1) + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d7, code lost:
    
        if (r13 == (r2 > r8)) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0105  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.View a(android.view.View r24, int r25, androidx.recyclerview.widget.RecyclerView.v r26, androidx.recyclerview.widget.RecyclerView.a0 r27) {
        /*
            Method dump skipped, instruction units count: 335
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$v, androidx.recyclerview.widget.RecyclerView$a0):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    View a(RecyclerView.v vVar, RecyclerView.a0 a0Var, int i2, int i3, int i4) {
        F();
        int iF = this.u.f();
        int iB = this.u.b();
        int i5 = i3 > i2 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i2 != i3) {
            View viewD = d(i2);
            int iL = l(viewD);
            if (iL >= 0 && iL < i4 && b(vVar, a0Var, iL) == 0) {
                if (((RecyclerView.p) viewD.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = viewD;
                    }
                } else {
                    if (this.u.d(viewD) < iB && this.u.a(viewD) >= iF) {
                        return viewD;
                    }
                    if (view == null) {
                        view = viewD;
                    }
                }
            }
            i2 += i5;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p a(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(Rect rect, int i2, int i3) {
        int iA;
        int iA2;
        if (this.J == null) {
            super.a(rect, i2, i3);
        }
        int iO = o() + p();
        int iQ = q() + n();
        if (this.s == 1) {
            iA2 = RecyclerView.o.a(i3, rect.height() + iQ, l());
            int[] iArr = this.J;
            iA = RecyclerView.o.a(i2, iArr[iArr.length - 1] + iO, m());
        } else {
            iA = RecyclerView.o.a(i2, rect.width() + iO, m());
            int[] iArr2 = this.J;
            iA2 = RecyclerView.o.a(i3, iArr2[iArr2.length - 1] + iQ, l());
        }
        c(iA, iA2);
    }

    public void a(c cVar) {
        this.N = cVar;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void a(RecyclerView.a0 a0Var, LinearLayoutManager.c cVar, RecyclerView.o.c cVar2) {
        int iB = this.I;
        for (int i2 = 0; i2 < this.I && cVar.a(a0Var) && iB > 0; i2++) {
            int i3 = cVar.f1107d;
            cVar2.a(i3, Math.max(0, cVar.f1110g));
            iB -= this.N.b(i3);
            cVar.f1107d += cVar.f1108e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView.v vVar, RecyclerView.a0 a0Var, View view, b.h.o.b0.c cVar) {
        int iF;
        int iE;
        int iF2;
        boolean z;
        boolean z2;
        int i2;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.a(view, cVar);
            return;
        }
        b bVar = (b) layoutParams;
        int iA = a(vVar, a0Var, bVar.a());
        if (this.s == 0) {
            int iE2 = bVar.e();
            iF = bVar.f();
            iF2 = 1;
            z = this.I > 1 && bVar.f() == this.I;
            z2 = false;
            i2 = iE2;
            iE = iA;
        } else {
            iF = 1;
            iE = bVar.e();
            iF2 = bVar.f();
            z = this.I > 1 && bVar.f() == this.I;
            z2 = false;
            i2 = iA;
        }
        cVar.b(c.C0108c.a(i2, iF, iE, iF2, z, z2));
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void a(RecyclerView.v vVar, RecyclerView.a0 a0Var, LinearLayoutManager.a aVar, int i2) {
        super.a(vVar, a0Var, aVar, i2);
        P();
        if (a0Var.a() > 0 && !a0Var.d()) {
            b(vVar, a0Var, aVar, i2);
        }
        O();
    }

    /* JADX WARN: Removed duplicated region for block: B:99:0x0223  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void a(androidx.recyclerview.widget.RecyclerView.v r19, androidx.recyclerview.widget.RecyclerView.a0 r20, androidx.recyclerview.widget.LinearLayoutManager.c r21, androidx.recyclerview.widget.LinearLayoutManager.b r22) {
        /*
            Method dump skipped, instruction units count: 574
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.a(androidx.recyclerview.widget.RecyclerView$v, androidx.recyclerview.widget.RecyclerView$a0, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.LinearLayoutManager$b):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView recyclerView, int i2, int i3) {
        this.N.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView recyclerView, int i2, int i3, int i4) {
        this.N.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView recyclerView, int i2, int i3, Object obj) {
        this.N.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean a(RecyclerView.p pVar) {
        return pVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public int b(int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        P();
        O();
        return super.b(i2, vVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int b(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        if (this.s == 0) {
            return this.I;
        }
        if (a0Var.a() < 1) {
            return 0;
        }
        return a(vVar, a0Var, a0Var.a() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void b(RecyclerView recyclerView, int i2, int i3) {
        this.N.a();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void b(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.b(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p c() {
        return this.s == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void d(RecyclerView recyclerView) {
        this.N.a();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public void e(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        if (a0Var.d()) {
            M();
        }
        super.e(vVar, a0Var);
        N();
    }

    int g(int i2, int i3) {
        if (this.s != 1 || !K()) {
            int[] iArr = this.J;
            return iArr[i3 + i2] - iArr[i2];
        }
        int[] iArr2 = this.J;
        int i4 = this.I;
        return iArr2[i4 - i2] - iArr2[(i4 - i2) - i3];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public void g(RecyclerView.a0 a0Var) {
        super.g(a0Var);
        this.H = false;
    }

    public void l(int i2) {
        if (i2 == this.I) {
            return;
        }
        this.H = true;
        if (i2 >= 1) {
            this.I = i2;
            this.N.a();
            z();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i2);
        }
    }
}
