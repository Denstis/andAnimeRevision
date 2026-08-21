package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.o implements k, RecyclerView.z.b {
    int A;
    int B;
    private boolean C;
    d D;
    final a E;
    private final b F;
    private int G;
    int s;
    private c t;
    r u;
    private boolean v;
    private boolean w;
    boolean x;
    private boolean y;
    private boolean z;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        r f1095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1096b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1097c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1098d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f1099e;

        a() {
            b();
        }

        void a() {
            this.f1097c = this.f1098d ? this.f1095a.b() : this.f1095a.f();
        }

        public void a(View view, int i2) {
            this.f1097c = this.f1098d ? this.f1095a.a(view) + this.f1095a.h() : this.f1095a.d(view);
            this.f1096b = i2;
        }

        boolean a(View view, RecyclerView.a0 a0Var) {
            RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
            return !pVar.c() && pVar.a() >= 0 && pVar.a() < a0Var.a();
        }

        void b() {
            this.f1096b = -1;
            this.f1097c = Integer.MIN_VALUE;
            this.f1098d = false;
            this.f1099e = false;
        }

        public void b(View view, int i2) {
            int iH = this.f1095a.h();
            if (iH >= 0) {
                a(view, i2);
                return;
            }
            this.f1096b = i2;
            if (this.f1098d) {
                int iB = (this.f1095a.b() - iH) - this.f1095a.a(view);
                this.f1097c = this.f1095a.b() - iB;
                if (iB > 0) {
                    int iB2 = this.f1097c - this.f1095a.b(view);
                    int iF = this.f1095a.f();
                    int iMin = iB2 - (iF + Math.min(this.f1095a.d(view) - iF, 0));
                    if (iMin < 0) {
                        this.f1097c += Math.min(iB, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iD = this.f1095a.d(view);
            int iF2 = iD - this.f1095a.f();
            this.f1097c = iD;
            if (iF2 > 0) {
                int iB3 = (this.f1095a.b() - Math.min(0, (this.f1095a.b() - iH) - this.f1095a.a(view))) - (iD + this.f1095a.b(view));
                if (iB3 < 0) {
                    this.f1097c -= Math.min(iF2, -iB3);
                }
            }
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f1096b + ", mCoordinate=" + this.f1097c + ", mLayoutFromEnd=" + this.f1098d + ", mValid=" + this.f1099e + '}';
        }
    }

    protected static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1100a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1101b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1102c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1103d;

        protected b() {
        }

        void a() {
            this.f1100a = 0;
            this.f1101b = false;
            this.f1102c = false;
            this.f1103d = false;
        }
    }

    static class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1105b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1106c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1107d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1108e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1109f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f1110g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f1112i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f1113j;
        boolean l;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1104a = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f1111h = 0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        List<RecyclerView.d0> f1114k = null;

        c() {
        }

        private View b() {
            int size = this.f1114k.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = this.f1114k.get(i2).itemView;
                RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
                if (!pVar.c() && this.f1107d == pVar.a()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }

        View a(RecyclerView.v vVar) {
            if (this.f1114k != null) {
                return b();
            }
            View viewD = vVar.d(this.f1107d);
            this.f1107d += this.f1108e;
            return viewD;
        }

        public void a() {
            a((View) null);
        }

        public void a(View view) {
            View viewB = b(view);
            this.f1107d = viewB == null ? -1 : ((RecyclerView.p) viewB.getLayoutParams()).a();
        }

        boolean a(RecyclerView.a0 a0Var) {
            int i2 = this.f1107d;
            return i2 >= 0 && i2 < a0Var.a();
        }

        public View b(View view) {
            int iA;
            int size = this.f1114k.size();
            View view2 = null;
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < size; i3++) {
                View view3 = this.f1114k.get(i3).itemView;
                RecyclerView.p pVar = (RecyclerView.p) view3.getLayoutParams();
                if (view3 != view && !pVar.c() && (iA = (pVar.a() - this.f1107d) * this.f1108e) >= 0 && iA < i2) {
                    view2 = view3;
                    if (iA == 0) {
                        break;
                    }
                    i2 = iA;
                }
            }
            return view2;
        }
    }

    public static class d implements Parcelable {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1115b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1116c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1117d;

        static class a implements Parcelable.Creator<d> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public d[] newArray(int i2) {
                return new d[i2];
            }
        }

        public d() {
        }

        d(Parcel parcel) {
            this.f1115b = parcel.readInt();
            this.f1116c = parcel.readInt();
            this.f1117d = parcel.readInt() == 1;
        }

        public d(d dVar) {
            this.f1115b = dVar.f1115b;
            this.f1116c = dVar.f1116c;
            this.f1117d = dVar.f1117d;
        }

        boolean a() {
            return this.f1115b >= 0;
        }

        void b() {
            this.f1115b = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f1115b);
            parcel.writeInt(this.f1116c);
            parcel.writeInt(this.f1117d ? 1 : 0);
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i2, boolean z) {
        this.s = 1;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = true;
        this.A = -1;
        this.B = Integer.MIN_VALUE;
        this.D = null;
        this.E = new a();
        this.F = new b();
        this.G = 2;
        k(i2);
        a(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.s = 1;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = true;
        this.A = -1;
        this.B = Integer.MIN_VALUE;
        this.D = null;
        this.E = new a();
        this.F = new b();
        this.G = 2;
        RecyclerView.o.d dVarA = RecyclerView.o.a(context, attributeSet, i2, i3);
        k(dVarA.f1163a);
        a(dVarA.f1165c);
        b(dVarA.f1166d);
    }

    private View M() {
        return d(this.x ? 0 : e() - 1);
    }

    private View N() {
        return d(this.x ? e() - 1 : 0);
    }

    private void O() {
        this.x = (this.s == 1 || !K()) ? this.w : !this.w;
    }

    private int a(int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var, boolean z) {
        int iB;
        int iB2 = this.u.b() - i2;
        if (iB2 <= 0) {
            return 0;
        }
        int i3 = -c(-iB2, vVar, a0Var);
        int i4 = i2 + i3;
        if (!z || (iB = this.u.b() - i4) <= 0) {
            return i3;
        }
        this.u.a(iB);
        return iB + i3;
    }

    private View a(boolean z, boolean z2) {
        int iE;
        int iE2;
        if (this.x) {
            iE = 0;
            iE2 = e();
        } else {
            iE = e() - 1;
            iE2 = -1;
        }
        return a(iE, iE2, z, z2);
    }

    private void a(int i2, int i3, boolean z, RecyclerView.a0 a0Var) {
        int iF;
        this.t.l = L();
        this.t.f1111h = h(a0Var);
        c cVar = this.t;
        cVar.f1109f = i2;
        if (i2 == 1) {
            cVar.f1111h += this.u.c();
            View viewM = M();
            this.t.f1108e = this.x ? -1 : 1;
            c cVar2 = this.t;
            int iL = l(viewM);
            c cVar3 = this.t;
            cVar2.f1107d = iL + cVar3.f1108e;
            cVar3.f1105b = this.u.a(viewM);
            iF = this.u.a(viewM) - this.u.b();
        } else {
            View viewN = N();
            this.t.f1111h += this.u.f();
            this.t.f1108e = this.x ? 1 : -1;
            c cVar4 = this.t;
            int iL2 = l(viewN);
            c cVar5 = this.t;
            cVar4.f1107d = iL2 + cVar5.f1108e;
            cVar5.f1105b = this.u.d(viewN);
            iF = (-this.u.d(viewN)) + this.u.f();
        }
        c cVar6 = this.t;
        cVar6.f1106c = i3;
        if (z) {
            cVar6.f1106c -= iF;
        }
        this.t.f1110g = iF;
    }

    private void a(a aVar) {
        g(aVar.f1096b, aVar.f1097c);
    }

    private void a(RecyclerView.v vVar, int i2) {
        int iE = e();
        if (i2 < 0) {
            return;
        }
        int iA = this.u.a() - i2;
        if (this.x) {
            for (int i3 = 0; i3 < iE; i3++) {
                View viewD = d(i3);
                if (this.u.d(viewD) < iA || this.u.f(viewD) < iA) {
                    a(vVar, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = iE - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View viewD2 = d(i5);
            if (this.u.d(viewD2) < iA || this.u.f(viewD2) < iA) {
                a(vVar, i4, i5);
                return;
            }
        }
    }

    private void a(RecyclerView.v vVar, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        if (i3 <= i2) {
            while (i2 > i3) {
                a(i2, vVar);
                i2--;
            }
        } else {
            for (int i4 = i3 - 1; i4 >= i2; i4--) {
                a(i4, vVar);
            }
        }
    }

    private void a(RecyclerView.v vVar, c cVar) {
        if (!cVar.f1104a || cVar.l) {
            return;
        }
        int i2 = cVar.f1109f;
        int i3 = cVar.f1110g;
        if (i2 == -1) {
            a(vVar, i3);
        } else {
            b(vVar, i3);
        }
    }

    private boolean a(RecyclerView.a0 a0Var, a aVar) {
        int i2;
        if (!a0Var.d() && (i2 = this.A) != -1) {
            if (i2 >= 0 && i2 < a0Var.a()) {
                aVar.f1096b = this.A;
                d dVar = this.D;
                if (dVar != null && dVar.a()) {
                    aVar.f1098d = this.D.f1117d;
                    aVar.f1097c = aVar.f1098d ? this.u.b() - this.D.f1116c : this.u.f() + this.D.f1116c;
                    return true;
                }
                if (this.B != Integer.MIN_VALUE) {
                    boolean z = this.x;
                    aVar.f1098d = z;
                    aVar.f1097c = z ? this.u.b() - this.B : this.u.f() + this.B;
                    return true;
                }
                View viewC = c(this.A);
                if (viewC == null) {
                    if (e() > 0) {
                        aVar.f1098d = (this.A < l(d(0))) == this.x;
                    }
                    aVar.a();
                } else {
                    if (this.u.b(viewC) > this.u.g()) {
                        aVar.a();
                        return true;
                    }
                    if (this.u.d(viewC) - this.u.f() < 0) {
                        aVar.f1097c = this.u.f();
                        aVar.f1098d = false;
                        return true;
                    }
                    if (this.u.b() - this.u.a(viewC) < 0) {
                        aVar.f1097c = this.u.b();
                        aVar.f1098d = true;
                        return true;
                    }
                    aVar.f1097c = aVar.f1098d ? this.u.a(viewC) + this.u.h() : this.u.d(viewC);
                }
                return true;
            }
            this.A = -1;
            this.B = Integer.MIN_VALUE;
        }
        return false;
    }

    private boolean a(RecyclerView.v vVar, RecyclerView.a0 a0Var, a aVar) {
        if (e() == 0) {
            return false;
        }
        View viewG = g();
        if (viewG != null && aVar.a(viewG, a0Var)) {
            aVar.b(viewG, l(viewG));
            return true;
        }
        if (this.v != this.y) {
            return false;
        }
        View viewL = aVar.f1098d ? l(vVar, a0Var) : m(vVar, a0Var);
        if (viewL == null) {
            return false;
        }
        aVar.a(viewL, l(viewL));
        if (!a0Var.d() && D()) {
            if (this.u.d(viewL) >= this.u.b() || this.u.a(viewL) < this.u.f()) {
                aVar.f1097c = aVar.f1098d ? this.u.b() : this.u.f();
            }
        }
        return true;
    }

    private int b(int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var, boolean z) {
        int iF;
        int iF2 = i2 - this.u.f();
        if (iF2 <= 0) {
            return 0;
        }
        int i3 = -c(iF2, vVar, a0Var);
        int i4 = i2 + i3;
        if (!z || (iF = i4 - this.u.f()) <= 0) {
            return i3;
        }
        this.u.a(-iF);
        return i3 - iF;
    }

    private View b(boolean z, boolean z2) {
        int iE;
        int iE2;
        if (this.x) {
            iE = e() - 1;
            iE2 = -1;
        } else {
            iE = 0;
            iE2 = e();
        }
        return a(iE, iE2, z, z2);
    }

    private void b(a aVar) {
        h(aVar.f1096b, aVar.f1097c);
    }

    private void b(RecyclerView.v vVar, int i2) {
        if (i2 < 0) {
            return;
        }
        int iE = e();
        if (!this.x) {
            for (int i3 = 0; i3 < iE; i3++) {
                View viewD = d(i3);
                if (this.u.a(viewD) > i2 || this.u.e(viewD) > i2) {
                    a(vVar, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = iE - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View viewD2 = d(i5);
            if (this.u.a(viewD2) > i2 || this.u.e(viewD2) > i2) {
                a(vVar, i4, i5);
                return;
            }
        }
    }

    private void b(RecyclerView.v vVar, RecyclerView.a0 a0Var, int i2, int i3) {
        if (!a0Var.e() || e() == 0 || a0Var.d() || !D()) {
            return;
        }
        List<RecyclerView.d0> listF = vVar.f();
        int size = listF.size();
        int iL = l(d(0));
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            RecyclerView.d0 d0Var = listF.get(i6);
            if (!d0Var.isRemoved()) {
                byte b2 = (d0Var.getLayoutPosition() < iL) != this.x ? (byte) -1 : (byte) 1;
                int iB = this.u.b(d0Var.itemView);
                if (b2 == -1) {
                    i4 += iB;
                } else {
                    i5 += iB;
                }
            }
        }
        this.t.f1114k = listF;
        if (i4 > 0) {
            h(l(N()), i2);
            c cVar = this.t;
            cVar.f1111h = i4;
            cVar.f1106c = 0;
            cVar.a();
            a(vVar, this.t, a0Var, false);
        }
        if (i5 > 0) {
            g(l(M()), i3);
            c cVar2 = this.t;
            cVar2.f1111h = i5;
            cVar2.f1106c = 0;
            cVar2.a();
            a(vVar, this.t, a0Var, false);
        }
        this.t.f1114k = null;
    }

    private void b(RecyclerView.v vVar, RecyclerView.a0 a0Var, a aVar) {
        if (a(a0Var, aVar) || a(vVar, a0Var, aVar)) {
            return;
        }
        aVar.a();
        aVar.f1096b = this.y ? a0Var.a() - 1 : 0;
    }

    private View f(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return e(0, e());
    }

    private View g(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return a(vVar, a0Var, 0, e(), a0Var.a());
    }

    private void g(int i2, int i3) {
        this.t.f1106c = this.u.b() - i3;
        this.t.f1108e = this.x ? -1 : 1;
        c cVar = this.t;
        cVar.f1107d = i2;
        cVar.f1109f = 1;
        cVar.f1105b = i3;
        cVar.f1110g = Integer.MIN_VALUE;
    }

    private View h(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return e(e() - 1, -1);
    }

    private void h(int i2, int i3) {
        this.t.f1106c = i3 - this.u.f();
        c cVar = this.t;
        cVar.f1107d = i2;
        cVar.f1108e = this.x ? 1 : -1;
        c cVar2 = this.t;
        cVar2.f1109f = -1;
        cVar2.f1105b = i3;
        cVar2.f1110g = Integer.MIN_VALUE;
    }

    private int i(RecyclerView.a0 a0Var) {
        if (e() == 0) {
            return 0;
        }
        F();
        return u.a(a0Var, this.u, b(!this.z, true), a(!this.z, true), this, this.z);
    }

    private View i(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return a(vVar, a0Var, e() - 1, -1, a0Var.a());
    }

    private int j(RecyclerView.a0 a0Var) {
        if (e() == 0) {
            return 0;
        }
        F();
        return u.a(a0Var, this.u, b(!this.z, true), a(!this.z, true), this, this.z, this.x);
    }

    private View j(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return this.x ? f(vVar, a0Var) : h(vVar, a0Var);
    }

    private int k(RecyclerView.a0 a0Var) {
        if (e() == 0) {
            return 0;
        }
        F();
        return u.b(a0Var, this.u, b(!this.z, true), a(!this.z, true), this, this.z);
    }

    private View k(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return this.x ? h(vVar, a0Var) : f(vVar, a0Var);
    }

    private View l(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return this.x ? g(vVar, a0Var) : i(vVar, a0Var);
    }

    private View m(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return this.x ? i(vVar, a0Var) : g(vVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    boolean B() {
        return (i() == 1073741824 || s() == 1073741824 || !t()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean D() {
        return this.D == null && this.v == this.y;
    }

    c E() {
        return new c();
    }

    void F() {
        if (this.t == null) {
            this.t = E();
        }
    }

    public int G() {
        View viewA = a(0, e(), false, true);
        if (viewA == null) {
            return -1;
        }
        return l(viewA);
    }

    public int H() {
        View viewA = a(e() - 1, -1, true, false);
        if (viewA == null) {
            return -1;
        }
        return l(viewA);
    }

    public int I() {
        View viewA = a(e() - 1, -1, false, true);
        if (viewA == null) {
            return -1;
        }
        return l(viewA);
    }

    public int J() {
        return this.s;
    }

    protected boolean K() {
        return k() == 1;
    }

    boolean L() {
        return this.u.d() == 0 && this.u.a() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int a(int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        if (this.s == 1) {
            return 0;
        }
        return c(i2, vVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int a(RecyclerView.a0 a0Var) {
        return i(a0Var);
    }

    int a(RecyclerView.v vVar, c cVar, RecyclerView.a0 a0Var, boolean z) {
        int i2 = cVar.f1106c;
        int i3 = cVar.f1110g;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                cVar.f1110g = i3 + i2;
            }
            a(vVar, cVar);
        }
        int i4 = cVar.f1106c + cVar.f1111h;
        b bVar = this.F;
        while (true) {
            if ((!cVar.l && i4 <= 0) || !cVar.a(a0Var)) {
                break;
            }
            bVar.a();
            a(vVar, a0Var, cVar, bVar);
            if (!bVar.f1101b) {
                cVar.f1105b += bVar.f1100a * cVar.f1109f;
                if (!bVar.f1102c || this.t.f1114k != null || !a0Var.d()) {
                    int i5 = cVar.f1106c;
                    int i6 = bVar.f1100a;
                    cVar.f1106c = i5 - i6;
                    i4 -= i6;
                }
                int i7 = cVar.f1110g;
                if (i7 != Integer.MIN_VALUE) {
                    cVar.f1110g = i7 + bVar.f1100a;
                    int i8 = cVar.f1106c;
                    if (i8 < 0) {
                        cVar.f1110g += i8;
                    }
                    a(vVar, cVar);
                }
                if (z && bVar.f1103d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - cVar.f1106c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z.b
    public PointF a(int i2) {
        if (e() == 0) {
            return null;
        }
        int i3 = (i2 < l(d(0))) != this.x ? -1 : 1;
        return this.s == 0 ? new PointF(i3, 0.0f) : new PointF(0.0f, i3);
    }

    View a(int i2, int i3, boolean z, boolean z2) {
        F();
        return (this.s == 0 ? this.f1154e : this.f1155f).a(i2, i3, z ? 24579 : 320, z2 ? 320 : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public View a(View view, int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        int iJ;
        O();
        if (e() == 0 || (iJ = j(i2)) == Integer.MIN_VALUE) {
            return null;
        }
        F();
        F();
        a(iJ, (int) (this.u.g() * 0.33333334f), false, a0Var);
        c cVar = this.t;
        cVar.f1110g = Integer.MIN_VALUE;
        cVar.f1104a = false;
        a(vVar, cVar, a0Var, true);
        View viewK = iJ == -1 ? k(vVar, a0Var) : j(vVar, a0Var);
        View viewN = iJ == -1 ? N() : M();
        if (!viewN.hasFocusable()) {
            return viewK;
        }
        if (viewK == null) {
            return null;
        }
        return viewN;
    }

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
            if (iL >= 0 && iL < i4) {
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
    public void a(int i2, int i3, RecyclerView.a0 a0Var, RecyclerView.o.c cVar) {
        if (this.s != 0) {
            i2 = i3;
        }
        if (e() == 0 || i2 == 0) {
            return;
        }
        F();
        a(i2 > 0 ? 1 : -1, Math.abs(i2), true, a0Var);
        a(a0Var, this.t, cVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(int i2, RecyclerView.o.c cVar) {
        boolean z;
        int i3;
        d dVar = this.D;
        if (dVar == null || !dVar.a()) {
            O();
            z = this.x;
            i3 = this.A;
            if (i3 == -1) {
                i3 = z ? i2 - 1 : 0;
            }
        } else {
            d dVar2 = this.D;
            z = dVar2.f1117d;
            i3 = dVar2.f1115b;
        }
        int i4 = z ? -1 : 1;
        int i5 = i3;
        for (int i6 = 0; i6 < this.G && i5 >= 0 && i5 < i2; i6++) {
            cVar.a(i5, 0);
            i5 += i4;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(Parcelable parcelable) {
        if (parcelable instanceof d) {
            this.D = (d) parcelable;
            z();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (e() > 0) {
            accessibilityEvent.setFromIndex(G());
            accessibilityEvent.setToIndex(I());
        }
    }

    void a(RecyclerView.a0 a0Var, c cVar, RecyclerView.o.c cVar2) {
        int i2 = cVar.f1107d;
        if (i2 < 0 || i2 >= a0Var.a()) {
            return;
        }
        cVar2.a(i2, Math.max(0, cVar.f1110g));
    }

    void a(RecyclerView.v vVar, RecyclerView.a0 a0Var, a aVar, int i2) {
    }

    void a(RecyclerView.v vVar, RecyclerView.a0 a0Var, c cVar, b bVar) {
        int i2;
        int i3;
        int i4;
        int iO;
        int iC;
        View viewA = cVar.a(vVar);
        if (viewA == null) {
            bVar.f1101b = true;
            return;
        }
        RecyclerView.p pVar = (RecyclerView.p) viewA.getLayoutParams();
        if (cVar.f1114k == null) {
            if (this.x == (cVar.f1109f == -1)) {
                b(viewA);
            } else {
                b(viewA, 0);
            }
        } else {
            if (this.x == (cVar.f1109f == -1)) {
                a(viewA);
            } else {
                a(viewA, 0);
            }
        }
        a(viewA, 0, 0);
        bVar.f1100a = this.u.b(viewA);
        if (this.s == 1) {
            if (K()) {
                iC = r() - p();
                iO = iC - this.u.c(viewA);
            } else {
                iO = o();
                iC = this.u.c(viewA) + iO;
            }
            int i5 = cVar.f1109f;
            int i6 = cVar.f1105b;
            if (i5 == -1) {
                i4 = i6;
                i3 = iC;
                i2 = i6 - bVar.f1100a;
            } else {
                i2 = i6;
                i3 = iC;
                i4 = bVar.f1100a + i6;
            }
        } else {
            int iQ = q();
            int iC2 = this.u.c(viewA) + iQ;
            int i7 = cVar.f1109f;
            int i8 = cVar.f1105b;
            if (i7 == -1) {
                i3 = i8;
                i2 = iQ;
                i4 = iC2;
                iO = i8 - bVar.f1100a;
            } else {
                i2 = iQ;
                i3 = bVar.f1100a + i8;
                i4 = iC2;
                iO = i8;
            }
        }
        a(viewA, iO, i2, i3, i4);
        if (pVar.c() || pVar.b()) {
            bVar.f1102c = true;
        }
        bVar.f1103d = viewA.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView recyclerView, RecyclerView.a0 a0Var, int i2) {
        m mVar = new m(recyclerView.getContext());
        mVar.c(i2);
        b(mVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(String str) {
        if (this.D == null) {
            super.a(str);
        }
    }

    public void a(boolean z) {
        a((String) null);
        if (z == this.w) {
            return;
        }
        this.w = z;
        z();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean a() {
        return this.s == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int b(int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        if (this.s == 0) {
            return 0;
        }
        return c(i2, vVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int b(RecyclerView.a0 a0Var) {
        return j(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void b(RecyclerView recyclerView, RecyclerView.v vVar) {
        super.b(recyclerView, vVar);
        if (this.C) {
            b(vVar);
            vVar.a();
        }
    }

    public void b(boolean z) {
        a((String) null);
        if (this.y == z) {
            return;
        }
        this.y = z;
        z();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean b() {
        return this.s == 1;
    }

    int c(int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        if (e() == 0 || i2 == 0) {
            return 0;
        }
        this.t.f1104a = true;
        F();
        int i3 = i2 > 0 ? 1 : -1;
        int iAbs = Math.abs(i2);
        a(i3, iAbs, true, a0Var);
        c cVar = this.t;
        int iA = cVar.f1110g + a(vVar, cVar, a0Var, false);
        if (iA < 0) {
            return 0;
        }
        if (iAbs > iA) {
            i2 = i3 * iA;
        }
        this.u.a(-i2);
        this.t.f1113j = i2;
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int c(RecyclerView.a0 a0Var) {
        return k(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public View c(int i2) {
        int iE = e();
        if (iE == 0) {
            return null;
        }
        int iL = i2 - l(d(0));
        if (iL >= 0 && iL < iE) {
            View viewD = d(iL);
            if (l(viewD) == i2) {
                return viewD;
            }
        }
        return super.c(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p c() {
        return new RecyclerView.p(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int d(RecyclerView.a0 a0Var) {
        return i(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int e(RecyclerView.a0 a0Var) {
        return j(a0Var);
    }

    View e(int i2, int i3) {
        int i4;
        int i5;
        F();
        if ((i3 > i2 ? (byte) 1 : i3 < i2 ? (byte) -1 : (byte) 0) == 0) {
            return d(i2);
        }
        if (this.u.d(d(i2)) < this.u.f()) {
            i4 = 16644;
            i5 = 16388;
        } else {
            i4 = 4161;
            i5 = 4097;
        }
        return (this.s == 0 ? this.f1154e : this.f1155f).a(i2, i3, i4, i5);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void e(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int iA;
        int i7;
        View viewC;
        int iD;
        int iB;
        int i8 = -1;
        if (!(this.D == null && this.A == -1) && a0Var.a() == 0) {
            b(vVar);
            return;
        }
        d dVar = this.D;
        if (dVar != null && dVar.a()) {
            this.A = this.D.f1115b;
        }
        F();
        this.t.f1104a = false;
        O();
        View viewG = g();
        if (!this.E.f1099e || this.A != -1 || this.D != null) {
            this.E.b();
            a aVar = this.E;
            aVar.f1098d = this.x ^ this.y;
            b(vVar, a0Var, aVar);
            this.E.f1099e = true;
        } else if (viewG != null && (this.u.d(viewG) >= this.u.b() || this.u.a(viewG) <= this.u.f())) {
            this.E.b(viewG, l(viewG));
        }
        int iH = h(a0Var);
        if (this.t.f1113j >= 0) {
            i2 = iH;
            iH = 0;
        } else {
            i2 = 0;
        }
        int iF = iH + this.u.f();
        int iC = i2 + this.u.c();
        if (a0Var.d() && (i7 = this.A) != -1 && this.B != Integer.MIN_VALUE && (viewC = c(i7)) != null) {
            if (this.x) {
                iB = this.u.b() - this.u.a(viewC);
                iD = this.B;
            } else {
                iD = this.u.d(viewC) - this.u.f();
                iB = this.B;
            }
            int i9 = iB - iD;
            if (i9 > 0) {
                iF += i9;
            } else {
                iC -= i9;
            }
        }
        if (!this.E.f1098d ? !this.x : this.x) {
            i8 = 1;
        }
        a(vVar, a0Var, this.E, i8);
        a(vVar);
        this.t.l = L();
        this.t.f1112i = a0Var.d();
        a aVar2 = this.E;
        if (aVar2.f1098d) {
            b(aVar2);
            c cVar = this.t;
            cVar.f1111h = iF;
            a(vVar, cVar, a0Var, false);
            c cVar2 = this.t;
            i4 = cVar2.f1105b;
            int i10 = cVar2.f1107d;
            int i11 = cVar2.f1106c;
            if (i11 > 0) {
                iC += i11;
            }
            a(this.E);
            c cVar3 = this.t;
            cVar3.f1111h = iC;
            cVar3.f1107d += cVar3.f1108e;
            a(vVar, cVar3, a0Var, false);
            c cVar4 = this.t;
            i3 = cVar4.f1105b;
            int i12 = cVar4.f1106c;
            if (i12 > 0) {
                h(i10, i4);
                c cVar5 = this.t;
                cVar5.f1111h = i12;
                a(vVar, cVar5, a0Var, false);
                i4 = this.t.f1105b;
            }
        } else {
            a(aVar2);
            c cVar6 = this.t;
            cVar6.f1111h = iC;
            a(vVar, cVar6, a0Var, false);
            c cVar7 = this.t;
            i3 = cVar7.f1105b;
            int i13 = cVar7.f1107d;
            int i14 = cVar7.f1106c;
            if (i14 > 0) {
                iF += i14;
            }
            b(this.E);
            c cVar8 = this.t;
            cVar8.f1111h = iF;
            cVar8.f1107d += cVar8.f1108e;
            a(vVar, cVar8, a0Var, false);
            c cVar9 = this.t;
            i4 = cVar9.f1105b;
            int i15 = cVar9.f1106c;
            if (i15 > 0) {
                g(i13, i3);
                c cVar10 = this.t;
                cVar10.f1111h = i15;
                a(vVar, cVar10, a0Var, false);
                i3 = this.t.f1105b;
            }
        }
        if (e() > 0) {
            if (this.x ^ this.y) {
                int iA2 = a(i3, vVar, a0Var, true);
                i5 = i4 + iA2;
                i6 = i3 + iA2;
                iA = b(i5, vVar, a0Var, false);
            } else {
                int iB2 = b(i4, vVar, a0Var, true);
                i5 = i4 + iB2;
                i6 = i3 + iB2;
                iA = a(i6, vVar, a0Var, false);
            }
            i4 = i5 + iA;
            i3 = i6 + iA;
        }
        b(vVar, a0Var, i4, i3);
        if (a0Var.d()) {
            this.E.b();
        } else {
            this.u.i();
        }
        this.v = this.y;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int f(RecyclerView.a0 a0Var) {
        return k(a0Var);
    }

    public void f(int i2, int i3) {
        this.A = i2;
        this.B = i3;
        d dVar = this.D;
        if (dVar != null) {
            dVar.b();
        }
        z();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void g(RecyclerView.a0 a0Var) {
        super.g(a0Var);
        this.D = null;
        this.A = -1;
        this.B = Integer.MIN_VALUE;
        this.E.b();
    }

    protected int h(RecyclerView.a0 a0Var) {
        if (a0Var.c()) {
            return this.u.g();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void i(int i2) {
        this.A = i2;
        this.B = Integer.MIN_VALUE;
        d dVar = this.D;
        if (dVar != null) {
            dVar.b();
        }
        z();
    }

    int j(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 17 ? i2 != 33 ? i2 != 66 ? (i2 == 130 && this.s == 1) ? 1 : Integer.MIN_VALUE : this.s == 0 ? 1 : Integer.MIN_VALUE : this.s == 1 ? -1 : Integer.MIN_VALUE : this.s == 0 ? -1 : Integer.MIN_VALUE : (this.s != 1 && K()) ? -1 : 1 : (this.s != 1 && K()) ? 1 : -1;
    }

    public void k(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i2);
        }
        a((String) null);
        if (i2 != this.s || this.u == null) {
            this.u = r.a(this, i2);
            this.E.f1095a = this.u;
            this.s = i2;
            z();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean v() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public Parcelable y() {
        d dVar = this.D;
        if (dVar != null) {
            return new d(dVar);
        }
        d dVar2 = new d();
        if (e() > 0) {
            F();
            boolean z = this.v ^ this.x;
            dVar2.f1117d = z;
            if (z) {
                View viewM = M();
                dVar2.f1116c = this.u.b() - this.u.a(viewM);
                dVar2.f1115b = l(viewM);
            } else {
                View viewN = N();
                dVar2.f1115b = l(viewN);
                dVar2.f1116c = this.u.d(viewN) - this.u.f();
            }
        } else {
            dVar2.b();
        }
        return dVar2;
    }
}
