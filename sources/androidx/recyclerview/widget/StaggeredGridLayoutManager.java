package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import b.h.o.b0.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.o implements RecyclerView.z.b {
    private BitSet B;
    private boolean G;
    private boolean H;
    private e I;
    private int J;
    private int[] O;
    f[] t;
    r u;
    r v;
    private int w;
    private int x;
    private final l y;
    private int s = -1;
    boolean z = false;
    boolean A = false;
    int C = -1;
    int D = Integer.MIN_VALUE;
    d E = new d();
    private int F = 2;
    private final Rect K = new Rect();
    private final b L = new b();
    private boolean M = false;
    private boolean N = true;
    private final Runnable P = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.G();
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1204a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1205b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f1206c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1207d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f1208e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int[] f1209f;

        b() {
            b();
        }

        void a() {
            this.f1205b = this.f1206c ? StaggeredGridLayoutManager.this.u.b() : StaggeredGridLayoutManager.this.u.f();
        }

        void a(int i2) {
            this.f1205b = this.f1206c ? StaggeredGridLayoutManager.this.u.b() - i2 : StaggeredGridLayoutManager.this.u.f() + i2;
        }

        void a(f[] fVarArr) {
            int length = fVarArr.length;
            int[] iArr = this.f1209f;
            if (iArr == null || iArr.length < length) {
                this.f1209f = new int[StaggeredGridLayoutManager.this.t.length];
            }
            for (int i2 = 0; i2 < length; i2++) {
                this.f1209f[i2] = fVarArr[i2].b(Integer.MIN_VALUE);
            }
        }

        void b() {
            this.f1204a = -1;
            this.f1205b = Integer.MIN_VALUE;
            this.f1206c = false;
            this.f1207d = false;
            this.f1208e = false;
            int[] iArr = this.f1209f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    public static class c extends RecyclerView.p {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        f f1211e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f1212f;

        public c(int i2, int i3) {
            super(i2, i3);
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public final int e() {
            f fVar = this.f1211e;
            if (fVar == null) {
                return -1;
            }
            return fVar.f1233e;
        }

        public boolean f() {
            return this.f1212f;
        }
    }

    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int[] f1213a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<a> f1214b;

        static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new C0021a();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f1215b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f1216c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            int[] f1217d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            boolean f1218e;

            /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a, reason: collision with other inner class name */
            static class C0021a implements Parcelable.Creator<a> {
                C0021a() {
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public a createFromParcel(Parcel parcel) {
                    return new a(parcel);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public a[] newArray(int i2) {
                    return new a[i2];
                }
            }

            a() {
            }

            a(Parcel parcel) {
                this.f1215b = parcel.readInt();
                this.f1216c = parcel.readInt();
                this.f1218e = parcel.readInt() == 1;
                int i2 = parcel.readInt();
                if (i2 > 0) {
                    this.f1217d = new int[i2];
                    parcel.readIntArray(this.f1217d);
                }
            }

            int a(int i2) {
                int[] iArr = this.f1217d;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i2];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f1215b + ", mGapDir=" + this.f1216c + ", mHasUnwantedGapAfter=" + this.f1218e + ", mGapPerSpan=" + Arrays.toString(this.f1217d) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.f1215b);
                parcel.writeInt(this.f1216c);
                parcel.writeInt(this.f1218e ? 1 : 0);
                int[] iArr = this.f1217d;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f1217d);
                }
            }
        }

        d() {
        }

        private void c(int i2, int i3) {
            List<a> list = this.f1214b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f1214b.get(size);
                int i4 = aVar.f1215b;
                if (i4 >= i2) {
                    aVar.f1215b = i4 + i3;
                }
            }
        }

        private void d(int i2, int i3) {
            List<a> list = this.f1214b;
            if (list == null) {
                return;
            }
            int i4 = i2 + i3;
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f1214b.get(size);
                int i5 = aVar.f1215b;
                if (i5 >= i2) {
                    if (i5 < i4) {
                        this.f1214b.remove(size);
                    } else {
                        aVar.f1215b = i5 - i3;
                    }
                }
            }
        }

        private int g(int i2) {
            if (this.f1214b == null) {
                return -1;
            }
            a aVarC = c(i2);
            if (aVarC != null) {
                this.f1214b.remove(aVarC);
            }
            int size = this.f1214b.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    i3 = -1;
                    break;
                }
                if (this.f1214b.get(i3).f1215b >= i2) {
                    break;
                }
                i3++;
            }
            if (i3 == -1) {
                return -1;
            }
            a aVar = this.f1214b.get(i3);
            this.f1214b.remove(i3);
            return aVar.f1215b;
        }

        public a a(int i2, int i3, int i4, boolean z) {
            List<a> list = this.f1214b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                a aVar = this.f1214b.get(i5);
                int i6 = aVar.f1215b;
                if (i6 >= i3) {
                    return null;
                }
                if (i6 >= i2 && (i4 == 0 || aVar.f1216c == i4 || (z && aVar.f1218e))) {
                    return aVar;
                }
            }
            return null;
        }

        void a() {
            int[] iArr = this.f1213a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f1214b = null;
        }

        void a(int i2) {
            int[] iArr = this.f1213a;
            if (iArr == null) {
                this.f1213a = new int[Math.max(i2, 10) + 1];
                Arrays.fill(this.f1213a, -1);
            } else if (i2 >= iArr.length) {
                this.f1213a = new int[f(i2)];
                System.arraycopy(iArr, 0, this.f1213a, 0, iArr.length);
                int[] iArr2 = this.f1213a;
                Arrays.fill(iArr2, iArr.length, iArr2.length, -1);
            }
        }

        void a(int i2, int i3) {
            int[] iArr = this.f1213a;
            if (iArr == null || i2 >= iArr.length) {
                return;
            }
            int i4 = i2 + i3;
            a(i4);
            int[] iArr2 = this.f1213a;
            System.arraycopy(iArr2, i2, iArr2, i4, (iArr2.length - i2) - i3);
            Arrays.fill(this.f1213a, i2, i4, -1);
            c(i2, i3);
        }

        void a(int i2, f fVar) {
            a(i2);
            this.f1213a[i2] = fVar.f1233e;
        }

        public void a(a aVar) {
            if (this.f1214b == null) {
                this.f1214b = new ArrayList();
            }
            int size = this.f1214b.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar2 = this.f1214b.get(i2);
                if (aVar2.f1215b == aVar.f1215b) {
                    this.f1214b.remove(i2);
                }
                if (aVar2.f1215b >= aVar.f1215b) {
                    this.f1214b.add(i2, aVar);
                    return;
                }
            }
            this.f1214b.add(aVar);
        }

        int b(int i2) {
            List<a> list = this.f1214b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f1214b.get(size).f1215b >= i2) {
                        this.f1214b.remove(size);
                    }
                }
            }
            return e(i2);
        }

        void b(int i2, int i3) {
            int[] iArr = this.f1213a;
            if (iArr == null || i2 >= iArr.length) {
                return;
            }
            int i4 = i2 + i3;
            a(i4);
            int[] iArr2 = this.f1213a;
            System.arraycopy(iArr2, i4, iArr2, i2, (iArr2.length - i2) - i3);
            int[] iArr3 = this.f1213a;
            Arrays.fill(iArr3, iArr3.length - i3, iArr3.length, -1);
            d(i2, i3);
        }

        public a c(int i2) {
            List<a> list = this.f1214b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f1214b.get(size);
                if (aVar.f1215b == i2) {
                    return aVar;
                }
            }
            return null;
        }

        int d(int i2) {
            int[] iArr = this.f1213a;
            if (iArr == null || i2 >= iArr.length) {
                return -1;
            }
            return iArr[i2];
        }

        int e(int i2) {
            int[] iArr = this.f1213a;
            if (iArr == null || i2 >= iArr.length) {
                return -1;
            }
            int iG = g(i2);
            if (iG == -1) {
                int[] iArr2 = this.f1213a;
                Arrays.fill(iArr2, i2, iArr2.length, -1);
                return this.f1213a.length;
            }
            int i3 = iG + 1;
            Arrays.fill(this.f1213a, i2, i3, -1);
            return i3;
        }

        int f(int i2) {
            int length = this.f1213a.length;
            while (length <= i2) {
                length *= 2;
            }
            return length;
        }
    }

    public static class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1220c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1221d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int[] f1222e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1223f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int[] f1224g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        List<d.a> f1225h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f1226i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f1227j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f1228k;

        static class a implements Parcelable.Creator<e> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public e createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public e[] newArray(int i2) {
                return new e[i2];
            }
        }

        public e() {
        }

        e(Parcel parcel) {
            this.f1219b = parcel.readInt();
            this.f1220c = parcel.readInt();
            this.f1221d = parcel.readInt();
            int i2 = this.f1221d;
            if (i2 > 0) {
                this.f1222e = new int[i2];
                parcel.readIntArray(this.f1222e);
            }
            this.f1223f = parcel.readInt();
            int i3 = this.f1223f;
            if (i3 > 0) {
                this.f1224g = new int[i3];
                parcel.readIntArray(this.f1224g);
            }
            this.f1226i = parcel.readInt() == 1;
            this.f1227j = parcel.readInt() == 1;
            this.f1228k = parcel.readInt() == 1;
            this.f1225h = parcel.readArrayList(d.a.class.getClassLoader());
        }

        public e(e eVar) {
            this.f1221d = eVar.f1221d;
            this.f1219b = eVar.f1219b;
            this.f1220c = eVar.f1220c;
            this.f1222e = eVar.f1222e;
            this.f1223f = eVar.f1223f;
            this.f1224g = eVar.f1224g;
            this.f1226i = eVar.f1226i;
            this.f1227j = eVar.f1227j;
            this.f1228k = eVar.f1228k;
            this.f1225h = eVar.f1225h;
        }

        void a() {
            this.f1222e = null;
            this.f1221d = 0;
            this.f1219b = -1;
            this.f1220c = -1;
        }

        void b() {
            this.f1222e = null;
            this.f1221d = 0;
            this.f1223f = 0;
            this.f1224g = null;
            this.f1225h = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f1219b);
            parcel.writeInt(this.f1220c);
            parcel.writeInt(this.f1221d);
            if (this.f1221d > 0) {
                parcel.writeIntArray(this.f1222e);
            }
            parcel.writeInt(this.f1223f);
            if (this.f1223f > 0) {
                parcel.writeIntArray(this.f1224g);
            }
            parcel.writeInt(this.f1226i ? 1 : 0);
            parcel.writeInt(this.f1227j ? 1 : 0);
            parcel.writeInt(this.f1228k ? 1 : 0);
            parcel.writeList(this.f1225h);
        }
    }

    class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ArrayList<View> f1229a = new ArrayList<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1230b = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1231c = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1232d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f1233e;

        f(int i2) {
            this.f1233e = i2;
        }

        int a(int i2) {
            int i3 = this.f1231c;
            if (i3 != Integer.MIN_VALUE) {
                return i3;
            }
            if (this.f1229a.size() == 0) {
                return i2;
            }
            a();
            return this.f1231c;
        }

        int a(int i2, int i3, boolean z) {
            return a(i2, i3, false, false, z);
        }

        int a(int i2, int i3, boolean z, boolean z2, boolean z3) {
            int iF = StaggeredGridLayoutManager.this.u.f();
            int iB = StaggeredGridLayoutManager.this.u.b();
            int i4 = i3 > i2 ? 1 : -1;
            while (i2 != i3) {
                View view = this.f1229a.get(i2);
                int iD = StaggeredGridLayoutManager.this.u.d(view);
                int iA = StaggeredGridLayoutManager.this.u.a(view);
                boolean z4 = false;
                boolean z5 = !z3 ? iD >= iB : iD > iB;
                if (!z3 ? iA > iF : iA >= iF) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (iD >= iF && iA <= iB) {
                            return StaggeredGridLayoutManager.this.l(view);
                        }
                    } else if (z2 || iD < iF || iA > iB) {
                        return StaggeredGridLayoutManager.this.l(view);
                    }
                }
                i2 += i4;
            }
            return -1;
        }

        public View a(int i2, int i3) {
            View view = null;
            if (i3 != -1) {
                int size = this.f1229a.size() - 1;
                while (size >= 0) {
                    View view2 = this.f1229a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.z && staggeredGridLayoutManager.l(view2) >= i2) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.z && staggeredGridLayoutManager2.l(view2) <= i2) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f1229a.size();
                int i4 = 0;
                while (i4 < size2) {
                    View view3 = this.f1229a.get(i4);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.z && staggeredGridLayoutManager3.l(view3) <= i2) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.z && staggeredGridLayoutManager4.l(view3) >= i2) || !view3.hasFocusable()) {
                        break;
                    }
                    i4++;
                    view = view3;
                }
            }
            return view;
        }

        void a() {
            d.a aVarC;
            ArrayList<View> arrayList = this.f1229a;
            View view = arrayList.get(arrayList.size() - 1);
            c cVarB = b(view);
            this.f1231c = StaggeredGridLayoutManager.this.u.a(view);
            if (cVarB.f1212f && (aVarC = StaggeredGridLayoutManager.this.E.c(cVarB.a())) != null && aVarC.f1216c == 1) {
                this.f1231c += aVarC.a(this.f1233e);
            }
        }

        void a(View view) {
            c cVarB = b(view);
            cVarB.f1211e = this;
            this.f1229a.add(view);
            this.f1231c = Integer.MIN_VALUE;
            if (this.f1229a.size() == 1) {
                this.f1230b = Integer.MIN_VALUE;
            }
            if (cVarB.c() || cVarB.b()) {
                this.f1232d += StaggeredGridLayoutManager.this.u.b(view);
            }
        }

        void a(boolean z, int i2) {
            int iA = z ? a(Integer.MIN_VALUE) : b(Integer.MIN_VALUE);
            c();
            if (iA == Integer.MIN_VALUE) {
                return;
            }
            if (!z || iA >= StaggeredGridLayoutManager.this.u.b()) {
                if (z || iA <= StaggeredGridLayoutManager.this.u.f()) {
                    if (i2 != Integer.MIN_VALUE) {
                        iA += i2;
                    }
                    this.f1231c = iA;
                    this.f1230b = iA;
                }
            }
        }

        int b(int i2) {
            int i3 = this.f1230b;
            if (i3 != Integer.MIN_VALUE) {
                return i3;
            }
            if (this.f1229a.size() == 0) {
                return i2;
            }
            b();
            return this.f1230b;
        }

        c b(View view) {
            return (c) view.getLayoutParams();
        }

        void b() {
            d.a aVarC;
            View view = this.f1229a.get(0);
            c cVarB = b(view);
            this.f1230b = StaggeredGridLayoutManager.this.u.d(view);
            if (cVarB.f1212f && (aVarC = StaggeredGridLayoutManager.this.E.c(cVarB.a())) != null && aVarC.f1216c == -1) {
                this.f1230b -= aVarC.a(this.f1233e);
            }
        }

        void c() {
            this.f1229a.clear();
            i();
            this.f1232d = 0;
        }

        void c(int i2) {
            int i3 = this.f1230b;
            if (i3 != Integer.MIN_VALUE) {
                this.f1230b = i3 + i2;
            }
            int i4 = this.f1231c;
            if (i4 != Integer.MIN_VALUE) {
                this.f1231c = i4 + i2;
            }
        }

        void c(View view) {
            c cVarB = b(view);
            cVarB.f1211e = this;
            this.f1229a.add(0, view);
            this.f1230b = Integer.MIN_VALUE;
            if (this.f1229a.size() == 1) {
                this.f1231c = Integer.MIN_VALUE;
            }
            if (cVarB.c() || cVarB.b()) {
                this.f1232d += StaggeredGridLayoutManager.this.u.b(view);
            }
        }

        public int d() {
            int size;
            int size2;
            if (StaggeredGridLayoutManager.this.z) {
                size = this.f1229a.size() - 1;
                size2 = -1;
            } else {
                size = 0;
                size2 = this.f1229a.size();
            }
            return a(size, size2, true);
        }

        void d(int i2) {
            this.f1230b = i2;
            this.f1231c = i2;
        }

        public int e() {
            int size;
            int size2;
            if (StaggeredGridLayoutManager.this.z) {
                size = 0;
                size2 = this.f1229a.size();
            } else {
                size = this.f1229a.size() - 1;
                size2 = -1;
            }
            return a(size, size2, true);
        }

        public int f() {
            return this.f1232d;
        }

        int g() {
            int i2 = this.f1231c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            a();
            return this.f1231c;
        }

        int h() {
            int i2 = this.f1230b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            b();
            return this.f1230b;
        }

        void i() {
            this.f1230b = Integer.MIN_VALUE;
            this.f1231c = Integer.MIN_VALUE;
        }

        void j() {
            int size = this.f1229a.size();
            View viewRemove = this.f1229a.remove(size - 1);
            c cVarB = b(viewRemove);
            cVarB.f1211e = null;
            if (cVarB.c() || cVarB.b()) {
                this.f1232d -= StaggeredGridLayoutManager.this.u.b(viewRemove);
            }
            if (size == 1) {
                this.f1230b = Integer.MIN_VALUE;
            }
            this.f1231c = Integer.MIN_VALUE;
        }

        void k() {
            View viewRemove = this.f1229a.remove(0);
            c cVarB = b(viewRemove);
            cVarB.f1211e = null;
            if (this.f1229a.size() == 0) {
                this.f1231c = Integer.MIN_VALUE;
            }
            if (cVarB.c() || cVarB.b()) {
                this.f1232d -= StaggeredGridLayoutManager.this.u.b(viewRemove);
            }
            this.f1230b = Integer.MIN_VALUE;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        RecyclerView.o.d dVarA = RecyclerView.o.a(context, attributeSet, i2, i3);
        j(dVarA.f1163a);
        k(dVarA.f1164b);
        c(dVarA.f1165c);
        this.y = new l();
        N();
    }

    private void N() {
        this.u = r.a(this, this.w);
        this.v = r.a(this, 1 - this.w);
    }

    private void O() {
        if (this.v.d() == 1073741824) {
            return;
        }
        int iE = e();
        float fMax = 0.0f;
        for (int i2 = 0; i2 < iE; i2++) {
            View viewD = d(i2);
            float fB = this.v.b(viewD);
            if (fB >= fMax) {
                if (((c) viewD.getLayoutParams()).f()) {
                    fB = (fB * 1.0f) / this.s;
                }
                fMax = Math.max(fMax, fB);
            }
        }
        int i3 = this.x;
        int iRound = Math.round(fMax * this.s);
        if (this.v.d() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.v.g());
        }
        l(iRound);
        if (this.x == i3) {
            return;
        }
        for (int i4 = 0; i4 < iE; i4++) {
            View viewD2 = d(i4);
            c cVar = (c) viewD2.getLayoutParams();
            if (!cVar.f1212f) {
                if (M() && this.w == 1) {
                    int i5 = this.s;
                    int i6 = cVar.f1211e.f1233e;
                    viewD2.offsetLeftAndRight(((-((i5 - 1) - i6)) * this.x) - ((-((i5 - 1) - i6)) * i3));
                } else {
                    int i7 = cVar.f1211e.f1233e;
                    int i8 = this.w;
                    int i9 = (this.x * i7) - (i7 * i3);
                    if (i8 == 1) {
                        viewD2.offsetLeftAndRight(i9);
                    } else {
                        viewD2.offsetTopAndBottom(i9);
                    }
                }
            }
        }
    }

    private void P() {
        this.A = (this.w == 1 || !M()) ? this.z : !this.z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v6 */
    private int a(RecyclerView.v vVar, l lVar, RecyclerView.a0 a0Var) {
        int i2;
        f fVarA;
        int iB;
        int i3;
        int iB2;
        int iB3;
        StaggeredGridLayoutManager staggeredGridLayoutManager;
        View view;
        int i4;
        int i5;
        ?? r9 = 0;
        this.B.set(0, this.s, true);
        if (this.y.f1383i) {
            i2 = lVar.f1379e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i2 = lVar.f1379e == 1 ? lVar.f1381g + lVar.f1376b : lVar.f1380f - lVar.f1376b;
        }
        e(lVar.f1379e, i2);
        int iB4 = this.A ? this.u.b() : this.u.f();
        boolean z = false;
        while (lVar.a(a0Var) && (this.y.f1383i || !this.B.isEmpty())) {
            View viewA = lVar.a(vVar);
            c cVar = (c) viewA.getLayoutParams();
            int iA = cVar.a();
            int iD = this.E.d(iA);
            boolean z2 = iD == -1;
            if (z2) {
                fVarA = cVar.f1212f ? this.t[r9] : a(lVar);
                this.E.a(iA, fVarA);
            } else {
                fVarA = this.t[iD];
            }
            f fVar = fVarA;
            cVar.f1211e = fVar;
            if (lVar.f1379e == 1) {
                b(viewA);
            } else {
                b(viewA, (int) r9);
            }
            a(viewA, cVar, (boolean) r9);
            if (lVar.f1379e == 1) {
                int iS = cVar.f1212f ? s(iB4) : fVar.a(iB4);
                int iB5 = this.u.b(viewA) + iS;
                if (z2 && cVar.f1212f) {
                    d.a aVarO = o(iS);
                    aVarO.f1216c = -1;
                    aVarO.f1215b = iA;
                    this.E.a(aVarO);
                }
                i3 = iB5;
                iB = iS;
            } else {
                int iV = cVar.f1212f ? v(iB4) : fVar.b(iB4);
                iB = iV - this.u.b(viewA);
                if (z2 && cVar.f1212f) {
                    d.a aVarP = p(iV);
                    aVarP.f1216c = 1;
                    aVarP.f1215b = iA;
                    this.E.a(aVarP);
                }
                i3 = iV;
            }
            if (cVar.f1212f && lVar.f1378d == -1) {
                if (z2) {
                    this.M = true;
                } else {
                    if (!(lVar.f1379e == 1 ? E() : F())) {
                        d.a aVarC = this.E.c(iA);
                        if (aVarC != null) {
                            aVarC.f1218e = true;
                        }
                        this.M = true;
                    }
                }
            }
            a(viewA, cVar, lVar);
            if (M() && this.w == 1) {
                int iB6 = cVar.f1212f ? this.v.b() : this.v.b() - (((this.s - 1) - fVar.f1233e) * this.x);
                iB3 = iB6;
                iB2 = iB6 - this.v.b(viewA);
            } else {
                int iF = cVar.f1212f ? this.v.f() : (fVar.f1233e * this.x) + this.v.f();
                iB2 = iF;
                iB3 = this.v.b(viewA) + iF;
            }
            if (this.w == 1) {
                staggeredGridLayoutManager = this;
                view = viewA;
                i4 = iB2;
                iB2 = iB;
                i5 = iB3;
            } else {
                staggeredGridLayoutManager = this;
                view = viewA;
                i4 = iB;
                i5 = i3;
                i3 = iB3;
            }
            staggeredGridLayoutManager.a(view, i4, iB2, i5, i3);
            if (cVar.f1212f) {
                e(this.y.f1379e, i2);
            } else {
                a(fVar, this.y.f1379e, i2);
            }
            a(vVar, this.y);
            if (this.y.f1382h && viewA.hasFocusable()) {
                if (cVar.f1212f) {
                    this.B.clear();
                } else {
                    this.B.set(fVar.f1233e, false);
                }
            }
            z = true;
            r9 = 0;
        }
        if (!z) {
            a(vVar, this.y);
        }
        int iF2 = this.y.f1379e == -1 ? this.u.f() - v(this.u.f()) : s(this.u.b()) - this.u.b();
        if (iF2 > 0) {
            return Math.min(lVar.f1376b, iF2);
        }
        return 0;
    }

    private f a(l lVar) {
        int i2;
        int i3;
        int i4 = -1;
        if (w(lVar.f1379e)) {
            i2 = this.s - 1;
            i3 = -1;
        } else {
            i2 = 0;
            i4 = this.s;
            i3 = 1;
        }
        f fVar = null;
        if (lVar.f1379e == 1) {
            int i5 = Integer.MAX_VALUE;
            int iF = this.u.f();
            while (i2 != i4) {
                f fVar2 = this.t[i2];
                int iA = fVar2.a(iF);
                if (iA < i5) {
                    fVar = fVar2;
                    i5 = iA;
                }
                i2 += i3;
            }
            return fVar;
        }
        int i6 = Integer.MIN_VALUE;
        int iB = this.u.b();
        while (i2 != i4) {
            f fVar3 = this.t[i2];
            int iB2 = fVar3.b(iB);
            if (iB2 > i6) {
                fVar = fVar3;
                i6 = iB2;
            }
            i2 += i3;
        }
        return fVar;
    }

    private void a(View view, int i2, int i3, boolean z) {
        a(view, this.K);
        c cVar = (c) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
        Rect rect = this.K;
        int iC = c(i2, i4 + rect.left, ((ViewGroup.MarginLayoutParams) cVar).rightMargin + rect.right);
        int i5 = ((ViewGroup.MarginLayoutParams) cVar).topMargin;
        Rect rect2 = this.K;
        int iC2 = c(i3, i5 + rect2.top, ((ViewGroup.MarginLayoutParams) cVar).bottomMargin + rect2.bottom);
        if (z ? b(view, iC, iC2, cVar) : a(view, iC, iC2, cVar)) {
            view.measure(iC, iC2);
        }
    }

    private void a(View view, c cVar, l lVar) {
        if (lVar.f1379e == 1) {
            if (cVar.f1212f) {
                p(view);
                return;
            } else {
                cVar.f1211e.a(view);
                return;
            }
        }
        if (cVar.f1212f) {
            q(view);
        } else {
            cVar.f1211e.c(view);
        }
    }

    private void a(View view, c cVar, boolean z) {
        int iA;
        int iA2;
        if (cVar.f1212f) {
            if (this.w != 1) {
                a(view, RecyclerView.o.a(r(), s(), o() + p(), ((ViewGroup.MarginLayoutParams) cVar).width, true), this.J, z);
                return;
            }
            iA = this.J;
        } else {
            if (this.w != 1) {
                iA = RecyclerView.o.a(r(), s(), o() + p(), ((ViewGroup.MarginLayoutParams) cVar).width, true);
                iA2 = RecyclerView.o.a(this.x, i(), 0, ((ViewGroup.MarginLayoutParams) cVar).height, false);
                a(view, iA, iA2, z);
            }
            iA = RecyclerView.o.a(this.x, s(), 0, ((ViewGroup.MarginLayoutParams) cVar).width, false);
        }
        iA2 = RecyclerView.o.a(h(), i(), q() + n(), ((ViewGroup.MarginLayoutParams) cVar).height, true);
        a(view, iA, iA2, z);
    }

    private void a(RecyclerView.v vVar, int i2) {
        for (int iE = e() - 1; iE >= 0; iE--) {
            View viewD = d(iE);
            if (this.u.d(viewD) < i2 || this.u.f(viewD) < i2) {
                return;
            }
            c cVar = (c) viewD.getLayoutParams();
            if (cVar.f1212f) {
                for (int i3 = 0; i3 < this.s; i3++) {
                    if (this.t[i3].f1229a.size() == 1) {
                        return;
                    }
                }
                for (int i4 = 0; i4 < this.s; i4++) {
                    this.t[i4].j();
                }
            } else if (cVar.f1211e.f1229a.size() == 1) {
                return;
            } else {
                cVar.f1211e.j();
            }
            a(viewD, vVar);
        }
    }

    private void a(RecyclerView.v vVar, RecyclerView.a0 a0Var, boolean z) {
        int iB;
        int iS = s(Integer.MIN_VALUE);
        if (iS != Integer.MIN_VALUE && (iB = this.u.b() - iS) > 0) {
            int i2 = iB - (-c(-iB, vVar, a0Var));
            if (!z || i2 <= 0) {
                return;
            }
            this.u.a(i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0010, code lost:
    
        if (r4.f1379e == (-1)) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(androidx.recyclerview.widget.RecyclerView.v r3, androidx.recyclerview.widget.l r4) {
        /*
            r2 = this;
            boolean r0 = r4.f1375a
            if (r0 == 0) goto L4d
            boolean r0 = r4.f1383i
            if (r0 == 0) goto L9
            goto L4d
        L9:
            int r0 = r4.f1376b
            r1 = -1
            if (r0 != 0) goto L1e
            int r0 = r4.f1379e
            if (r0 != r1) goto L18
        L12:
            int r4 = r4.f1381g
        L14:
            r2.a(r3, r4)
            goto L4d
        L18:
            int r4 = r4.f1380f
        L1a:
            r2.b(r3, r4)
            goto L4d
        L1e:
            int r0 = r4.f1379e
            if (r0 != r1) goto L37
            int r0 = r4.f1380f
            int r1 = r2.t(r0)
            int r0 = r0 - r1
            if (r0 >= 0) goto L2c
            goto L12
        L2c:
            int r1 = r4.f1381g
            int r4 = r4.f1376b
            int r4 = java.lang.Math.min(r0, r4)
            int r4 = r1 - r4
            goto L14
        L37:
            int r0 = r4.f1381g
            int r0 = r2.u(r0)
            int r1 = r4.f1381g
            int r0 = r0 - r1
            if (r0 >= 0) goto L43
            goto L18
        L43:
            int r1 = r4.f1380f
            int r4 = r4.f1376b
            int r4 = java.lang.Math.min(r0, r4)
            int r4 = r4 + r1
            goto L1a
        L4d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.a(androidx.recyclerview.widget.RecyclerView$v, androidx.recyclerview.widget.l):void");
    }

    private void a(b bVar) {
        boolean z;
        e eVar = this.I;
        int i2 = eVar.f1221d;
        if (i2 > 0) {
            if (i2 == this.s) {
                for (int i3 = 0; i3 < this.s; i3++) {
                    this.t[i3].c();
                    e eVar2 = this.I;
                    int iB = eVar2.f1222e[i3];
                    if (iB != Integer.MIN_VALUE) {
                        iB += eVar2.f1227j ? this.u.b() : this.u.f();
                    }
                    this.t[i3].d(iB);
                }
            } else {
                eVar.b();
                e eVar3 = this.I;
                eVar3.f1219b = eVar3.f1220c;
            }
        }
        e eVar4 = this.I;
        this.H = eVar4.f1228k;
        c(eVar4.f1226i);
        P();
        e eVar5 = this.I;
        int i4 = eVar5.f1219b;
        if (i4 != -1) {
            this.C = i4;
            z = eVar5.f1227j;
        } else {
            z = this.A;
        }
        bVar.f1206c = z;
        e eVar6 = this.I;
        if (eVar6.f1223f > 1) {
            d dVar = this.E;
            dVar.f1213a = eVar6.f1224g;
            dVar.f1214b = eVar6.f1225h;
        }
    }

    private void a(f fVar, int i2, int i3) {
        int iF = fVar.f();
        if (i2 == -1) {
            if (fVar.h() + iF > i3) {
                return;
            }
        } else if (fVar.g() - iF < i3) {
            return;
        }
        this.B.set(fVar.f1233e, false);
    }

    private boolean a(f fVar) {
        if (this.A) {
            if (fVar.g() < this.u.b()) {
                ArrayList<View> arrayList = fVar.f1229a;
                return !fVar.b(arrayList.get(arrayList.size() - 1)).f1212f;
            }
        } else if (fVar.h() > this.u.f()) {
            return !fVar.b(fVar.f1229a.get(0)).f1212f;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0045 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.A
            if (r0 == 0) goto L9
            int r0 = r6.J()
            goto Ld
        L9:
            int r0 = r6.I()
        Ld:
            r1 = 8
            if (r9 != r1) goto L1b
            if (r7 >= r8) goto L16
            int r2 = r8 + 1
            goto L1d
        L16:
            int r2 = r7 + 1
            r3 = r2
            r2 = r8
            goto L1f
        L1b:
            int r2 = r7 + r8
        L1d:
            r3 = r2
            r2 = r7
        L1f:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r4 = r6.E
            r4.e(r2)
            r4 = 1
            if (r9 == r4) goto L3e
            r5 = 2
            if (r9 == r5) goto L38
            if (r9 == r1) goto L2d
            goto L43
        L2d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.E
            r9.b(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r7 = r6.E
            r7.a(r8, r4)
            goto L43
        L38:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.E
            r9.b(r7, r8)
            goto L43
        L3e:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r6.E
            r9.a(r7, r8)
        L43:
            if (r3 > r0) goto L46
            return
        L46:
            boolean r7 = r6.A
            if (r7 == 0) goto L4f
            int r7 = r6.I()
            goto L53
        L4f:
            int r7 = r6.J()
        L53:
            if (r2 > r7) goto L58
            r6.z()
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.b(int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(int r5, androidx.recyclerview.widget.RecyclerView.a0 r6) {
        /*
            r4 = this;
            androidx.recyclerview.widget.l r0 = r4.y
            r1 = 0
            r0.f1376b = r1
            r0.f1377c = r5
            boolean r0 = r4.x()
            r2 = 1
            if (r0 == 0) goto L2e
            int r6 = r6.b()
            r0 = -1
            if (r6 == r0) goto L2e
            boolean r0 = r4.A
            if (r6 >= r5) goto L1b
            r5 = 1
            goto L1c
        L1b:
            r5 = 0
        L1c:
            if (r0 != r5) goto L25
            androidx.recyclerview.widget.r r5 = r4.u
            int r5 = r5.g()
            goto L2f
        L25:
            androidx.recyclerview.widget.r r5 = r4.u
            int r5 = r5.g()
            r6 = r5
            r5 = 0
            goto L30
        L2e:
            r5 = 0
        L2f:
            r6 = 0
        L30:
            boolean r0 = r4.f()
            if (r0 == 0) goto L4d
            androidx.recyclerview.widget.l r0 = r4.y
            androidx.recyclerview.widget.r r3 = r4.u
            int r3 = r3.f()
            int r3 = r3 - r6
            r0.f1380f = r3
            androidx.recyclerview.widget.l r6 = r4.y
            androidx.recyclerview.widget.r r0 = r4.u
            int r0 = r0.b()
            int r0 = r0 + r5
            r6.f1381g = r0
            goto L5d
        L4d:
            androidx.recyclerview.widget.l r0 = r4.y
            androidx.recyclerview.widget.r r3 = r4.u
            int r3 = r3.a()
            int r3 = r3 + r5
            r0.f1381g = r3
            androidx.recyclerview.widget.l r5 = r4.y
            int r6 = -r6
            r5.f1380f = r6
        L5d:
            androidx.recyclerview.widget.l r5 = r4.y
            r5.f1382h = r1
            r5.f1375a = r2
            androidx.recyclerview.widget.r r6 = r4.u
            int r6 = r6.d()
            if (r6 != 0) goto L74
            androidx.recyclerview.widget.r r6 = r4.u
            int r6 = r6.a()
            if (r6 != 0) goto L74
            r1 = 1
        L74:
            r5.f1383i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.b(int, androidx.recyclerview.widget.RecyclerView$a0):void");
    }

    private void b(RecyclerView.v vVar, int i2) {
        while (e() > 0) {
            View viewD = d(0);
            if (this.u.a(viewD) > i2 || this.u.e(viewD) > i2) {
                return;
            }
            c cVar = (c) viewD.getLayoutParams();
            if (cVar.f1212f) {
                for (int i3 = 0; i3 < this.s; i3++) {
                    if (this.t[i3].f1229a.size() == 1) {
                        return;
                    }
                }
                for (int i4 = 0; i4 < this.s; i4++) {
                    this.t[i4].k();
                }
            } else if (cVar.f1211e.f1229a.size() == 1) {
                return;
            } else {
                cVar.f1211e.k();
            }
            a(viewD, vVar);
        }
    }

    private void b(RecyclerView.v vVar, RecyclerView.a0 a0Var, boolean z) {
        int iF;
        int iV = v(Integer.MAX_VALUE);
        if (iV != Integer.MAX_VALUE && (iF = iV - this.u.f()) > 0) {
            int iC = iF - c(iF, vVar, a0Var);
            if (!z || iC <= 0) {
                return;
            }
            this.u.a(-iC);
        }
    }

    private int c(int i2, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return i2;
        }
        int mode = View.MeasureSpec.getMode(i2);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - i3) - i4), mode) : i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void c(androidx.recyclerview.widget.RecyclerView.v r9, androidx.recyclerview.widget.RecyclerView.a0 r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 367
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.c(androidx.recyclerview.widget.RecyclerView$v, androidx.recyclerview.widget.RecyclerView$a0, boolean):void");
    }

    private boolean c(RecyclerView.a0 a0Var, b bVar) {
        boolean z = this.G;
        int iA = a0Var.a();
        bVar.f1204a = z ? r(iA) : q(iA);
        bVar.f1205b = Integer.MIN_VALUE;
        return true;
    }

    private void e(int i2, int i3) {
        for (int i4 = 0; i4 < this.s; i4++) {
            if (!this.t[i4].f1229a.isEmpty()) {
                a(this.t[i4], i2, i3);
            }
        }
    }

    private int h(RecyclerView.a0 a0Var) {
        if (e() == 0) {
            return 0;
        }
        return u.a(a0Var, this.u, b(!this.N), a(!this.N), this, this.N);
    }

    private int i(RecyclerView.a0 a0Var) {
        if (e() == 0) {
            return 0;
        }
        return u.a(a0Var, this.u, b(!this.N), a(!this.N), this, this.N, this.A);
    }

    private int j(RecyclerView.a0 a0Var) {
        if (e() == 0) {
            return 0;
        }
        return u.b(a0Var, this.u, b(!this.N), a(!this.N), this, this.N);
    }

    private int m(int i2) {
        if (e() == 0) {
            return this.A ? 1 : -1;
        }
        return (i2 < I()) != this.A ? -1 : 1;
    }

    private int n(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 17 ? i2 != 33 ? i2 != 66 ? (i2 == 130 && this.w == 1) ? 1 : Integer.MIN_VALUE : this.w == 0 ? 1 : Integer.MIN_VALUE : this.w == 1 ? -1 : Integer.MIN_VALUE : this.w == 0 ? -1 : Integer.MIN_VALUE : (this.w != 1 && M()) ? -1 : 1 : (this.w != 1 && M()) ? 1 : -1;
    }

    private d.a o(int i2) {
        d.a aVar = new d.a();
        aVar.f1217d = new int[this.s];
        for (int i3 = 0; i3 < this.s; i3++) {
            aVar.f1217d[i3] = i2 - this.t[i3].a(i2);
        }
        return aVar;
    }

    private d.a p(int i2) {
        d.a aVar = new d.a();
        aVar.f1217d = new int[this.s];
        for (int i3 = 0; i3 < this.s; i3++) {
            aVar.f1217d[i3] = this.t[i3].b(i2) - i2;
        }
        return aVar;
    }

    private void p(View view) {
        for (int i2 = this.s - 1; i2 >= 0; i2--) {
            this.t[i2].a(view);
        }
    }

    private int q(int i2) {
        int iE = e();
        for (int i3 = 0; i3 < iE; i3++) {
            int iL = l(d(i3));
            if (iL >= 0 && iL < i2) {
                return iL;
            }
        }
        return 0;
    }

    private void q(View view) {
        for (int i2 = this.s - 1; i2 >= 0; i2--) {
            this.t[i2].c(view);
        }
    }

    private int r(int i2) {
        for (int iE = e() - 1; iE >= 0; iE--) {
            int iL = l(d(iE));
            if (iL >= 0 && iL < i2) {
                return iL;
            }
        }
        return 0;
    }

    private int s(int i2) {
        int iA = this.t[0].a(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int iA2 = this.t[i3].a(i2);
            if (iA2 > iA) {
                iA = iA2;
            }
        }
        return iA;
    }

    private int t(int i2) {
        int iB = this.t[0].b(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int iB2 = this.t[i3].b(i2);
            if (iB2 > iB) {
                iB = iB2;
            }
        }
        return iB;
    }

    private int u(int i2) {
        int iA = this.t[0].a(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int iA2 = this.t[i3].a(i2);
            if (iA2 < iA) {
                iA = iA2;
            }
        }
        return iA;
    }

    private int v(int i2) {
        int iB = this.t[0].b(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int iB2 = this.t[i3].b(i2);
            if (iB2 < iB) {
                iB = iB2;
            }
        }
        return iB;
    }

    private boolean w(int i2) {
        if (this.w == 0) {
            return (i2 == -1) != this.A;
        }
        return ((i2 == -1) == this.A) == M();
    }

    private void x(int i2) {
        l lVar = this.y;
        lVar.f1379e = i2;
        lVar.f1378d = this.A != (i2 == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean D() {
        return this.I == null;
    }

    boolean E() {
        int iA = this.t[0].a(Integer.MIN_VALUE);
        for (int i2 = 1; i2 < this.s; i2++) {
            if (this.t[i2].a(Integer.MIN_VALUE) != iA) {
                return false;
            }
        }
        return true;
    }

    boolean F() {
        int iB = this.t[0].b(Integer.MIN_VALUE);
        for (int i2 = 1; i2 < this.s; i2++) {
            if (this.t[i2].b(Integer.MIN_VALUE) != iB) {
                return false;
            }
        }
        return true;
    }

    boolean G() {
        int I;
        int iJ;
        if (e() == 0 || this.F == 0 || !u()) {
            return false;
        }
        if (this.A) {
            I = J();
            iJ = I();
        } else {
            I = I();
            iJ = J();
        }
        if (I == 0 && K() != null) {
            this.E.a();
        } else {
            if (!this.M) {
                return false;
            }
            int i2 = this.A ? -1 : 1;
            int i3 = iJ + 1;
            d.a aVarA = this.E.a(I, i3, i2, true);
            if (aVarA == null) {
                this.M = false;
                this.E.b(i3);
                return false;
            }
            d.a aVarA2 = this.E.a(I, aVarA.f1215b, i2 * (-1), true);
            if (aVarA2 == null) {
                this.E.b(aVarA.f1215b);
            } else {
                this.E.b(aVarA2.f1215b + 1);
            }
        }
        A();
        z();
        return true;
    }

    int H() {
        View viewA = this.A ? a(true) : b(true);
        if (viewA == null) {
            return -1;
        }
        return l(viewA);
    }

    int I() {
        if (e() == 0) {
            return 0;
        }
        return l(d(0));
    }

    int J() {
        int iE = e();
        if (iE == 0) {
            return 0;
        }
        return l(d(iE - 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.view.View K() {
        /*
            r12 = this;
            int r0 = r12.e()
            r1 = 1
            int r0 = r0 - r1
            java.util.BitSet r2 = new java.util.BitSet
            int r3 = r12.s
            r2.<init>(r3)
            int r3 = r12.s
            r4 = 0
            r2.set(r4, r3, r1)
            int r3 = r12.w
            r5 = -1
            if (r3 != r1) goto L20
            boolean r3 = r12.M()
            if (r3 == 0) goto L20
            r3 = 1
            goto L21
        L20:
            r3 = -1
        L21:
            boolean r6 = r12.A
            if (r6 == 0) goto L27
            r6 = -1
            goto L2b
        L27:
            int r0 = r0 + 1
            r6 = r0
            r0 = 0
        L2b:
            if (r0 >= r6) goto L2e
            r5 = 1
        L2e:
            if (r0 == r6) goto Lab
            android.view.View r7 = r12.d(r0)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r8 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c) r8
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r9 = r8.f1211e
            int r9 = r9.f1233e
            boolean r9 = r2.get(r9)
            if (r9 == 0) goto L54
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r9 = r8.f1211e
            boolean r9 = r12.a(r9)
            if (r9 == 0) goto L4d
            return r7
        L4d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r9 = r8.f1211e
            int r9 = r9.f1233e
            r2.clear(r9)
        L54:
            boolean r9 = r8.f1212f
            if (r9 == 0) goto L59
            goto La9
        L59:
            int r9 = r0 + r5
            if (r9 == r6) goto La9
            android.view.View r9 = r12.d(r9)
            boolean r10 = r12.A
            if (r10 == 0) goto L77
            androidx.recyclerview.widget.r r10 = r12.u
            int r10 = r10.a(r7)
            androidx.recyclerview.widget.r r11 = r12.u
            int r11 = r11.a(r9)
            if (r10 >= r11) goto L74
            return r7
        L74:
            if (r10 != r11) goto L8a
            goto L88
        L77:
            androidx.recyclerview.widget.r r10 = r12.u
            int r10 = r10.d(r7)
            androidx.recyclerview.widget.r r11 = r12.u
            int r11 = r11.d(r9)
            if (r10 <= r11) goto L86
            return r7
        L86:
            if (r10 != r11) goto L8a
        L88:
            r10 = 1
            goto L8b
        L8a:
            r10 = 0
        L8b:
            if (r10 == 0) goto La9
            android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c) r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r8 = r8.f1211e
            int r8 = r8.f1233e
            androidx.recyclerview.widget.StaggeredGridLayoutManager$f r9 = r9.f1211e
            int r9 = r9.f1233e
            int r8 = r8 - r9
            if (r8 >= 0) goto La0
            r8 = 1
            goto La1
        La0:
            r8 = 0
        La1:
            if (r3 >= 0) goto La5
            r9 = 1
            goto La6
        La5:
            r9 = 0
        La6:
            if (r8 == r9) goto La9
            return r7
        La9:
            int r0 = r0 + r5
            goto L2e
        Lab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.K():android.view.View");
    }

    public void L() {
        this.E.a();
        z();
    }

    boolean M() {
        return k() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int a(int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return c(i2, vVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int a(RecyclerView.a0 a0Var) {
        return h(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int a(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return this.w == 1 ? this.s : super.a(vVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z.b
    public PointF a(int i2) {
        int iM = m(i2);
        PointF pointF = new PointF();
        if (iM == 0) {
            return null;
        }
        if (this.w == 0) {
            pointF.x = iM;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iM;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public View a(View view, int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        View viewC;
        View viewA;
        if (e() == 0 || (viewC = c(view)) == null) {
            return null;
        }
        P();
        int iN = n(i2);
        if (iN == Integer.MIN_VALUE) {
            return null;
        }
        c cVar = (c) viewC.getLayoutParams();
        boolean z = cVar.f1212f;
        f fVar = cVar.f1211e;
        int iJ = iN == 1 ? J() : I();
        b(iJ, a0Var);
        x(iN);
        l lVar = this.y;
        lVar.f1377c = lVar.f1378d + iJ;
        lVar.f1376b = (int) (this.u.g() * 0.33333334f);
        l lVar2 = this.y;
        lVar2.f1382h = true;
        lVar2.f1375a = false;
        a(vVar, lVar2, a0Var);
        this.G = this.A;
        if (!z && (viewA = fVar.a(iJ, iN)) != null && viewA != viewC) {
            return viewA;
        }
        if (w(iN)) {
            for (int i3 = this.s - 1; i3 >= 0; i3--) {
                View viewA2 = this.t[i3].a(iJ, iN);
                if (viewA2 != null && viewA2 != viewC) {
                    return viewA2;
                }
            }
        } else {
            for (int i4 = 0; i4 < this.s; i4++) {
                View viewA3 = this.t[i4].a(iJ, iN);
                if (viewA3 != null && viewA3 != viewC) {
                    return viewA3;
                }
            }
        }
        boolean z2 = (this.z ^ true) == (iN == -1);
        if (!z) {
            View viewC2 = c(z2 ? fVar.d() : fVar.e());
            if (viewC2 != null && viewC2 != viewC) {
                return viewC2;
            }
        }
        if (w(iN)) {
            for (int i5 = this.s - 1; i5 >= 0; i5--) {
                if (i5 != fVar.f1233e) {
                    f[] fVarArr = this.t;
                    View viewC3 = c(z2 ? fVarArr[i5].d() : fVarArr[i5].e());
                    if (viewC3 != null && viewC3 != viewC) {
                        return viewC3;
                    }
                }
            }
        } else {
            for (int i6 = 0; i6 < this.s; i6++) {
                f[] fVarArr2 = this.t;
                View viewC4 = c(z2 ? fVarArr2[i6].d() : fVarArr2[i6].e());
                if (viewC4 != null && viewC4 != viewC) {
                    return viewC4;
                }
            }
        }
        return null;
    }

    View a(boolean z) {
        int iF = this.u.f();
        int iB = this.u.b();
        View view = null;
        for (int iE = e() - 1; iE >= 0; iE--) {
            View viewD = d(iE);
            int iD = this.u.d(viewD);
            int iA = this.u.a(viewD);
            if (iA > iF && iD < iB) {
                if (iA <= iB || !z) {
                    return viewD;
                }
                if (view == null) {
                    view = viewD;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p a(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(int i2, int i3, RecyclerView.a0 a0Var, RecyclerView.o.c cVar) {
        int iA;
        int iB;
        if (this.w != 0) {
            i2 = i3;
        }
        if (e() == 0 || i2 == 0) {
            return;
        }
        a(i2, a0Var);
        int[] iArr = this.O;
        if (iArr == null || iArr.length < this.s) {
            this.O = new int[this.s];
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.s; i5++) {
            l lVar = this.y;
            if (lVar.f1378d == -1) {
                iA = lVar.f1380f;
                iB = this.t[i5].b(iA);
            } else {
                iA = this.t[i5].a(lVar.f1381g);
                iB = this.y.f1381g;
            }
            int i6 = iA - iB;
            if (i6 >= 0) {
                this.O[i4] = i6;
                i4++;
            }
        }
        Arrays.sort(this.O, 0, i4);
        for (int i7 = 0; i7 < i4 && this.y.a(a0Var); i7++) {
            cVar.a(this.y.f1377c, this.O[i7]);
            l lVar2 = this.y;
            lVar2.f1377c += lVar2.f1378d;
        }
    }

    void a(int i2, RecyclerView.a0 a0Var) {
        int I;
        int i3;
        if (i2 > 0) {
            I = J();
            i3 = 1;
        } else {
            I = I();
            i3 = -1;
        }
        this.y.f1375a = true;
        b(I, a0Var);
        x(i3);
        l lVar = this.y;
        lVar.f1377c = I + lVar.f1378d;
        lVar.f1376b = Math.abs(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(Rect rect, int i2, int i3) {
        int iA;
        int iA2;
        int iO = o() + p();
        int iQ = q() + n();
        if (this.w == 1) {
            iA2 = RecyclerView.o.a(i3, rect.height() + iQ, l());
            iA = RecyclerView.o.a(i2, (this.x * this.s) + iO, m());
        } else {
            iA = RecyclerView.o.a(i2, rect.width() + iO, m());
            iA2 = RecyclerView.o.a(i3, (this.x * this.s) + iQ, l());
        }
        c(iA, iA2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(Parcelable parcelable) {
        if (parcelable instanceof e) {
            this.I = (e) parcelable;
            z();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (e() > 0) {
            View viewB = b(false);
            View viewA = a(false);
            if (viewB == null || viewA == null) {
                return;
            }
            int iL = l(viewB);
            int iL2 = l(viewA);
            if (iL < iL2) {
                accessibilityEvent.setFromIndex(iL);
                accessibilityEvent.setToIndex(iL2);
            } else {
                accessibilityEvent.setFromIndex(iL2);
                accessibilityEvent.setToIndex(iL);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView.v vVar, RecyclerView.a0 a0Var, View view, b.h.o.b0.c cVar) {
        int iE;
        int i2;
        int iE2;
        int i3;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof c)) {
            super.a(view, cVar);
            return;
        }
        c cVar2 = (c) layoutParams;
        if (this.w == 0) {
            iE = cVar2.e();
            i2 = cVar2.f1212f ? this.s : 1;
            iE2 = -1;
            i3 = -1;
        } else {
            iE = -1;
            i2 = -1;
            iE2 = cVar2.e();
            i3 = cVar2.f1212f ? this.s : 1;
        }
        cVar.b(c.C0108c.a(iE, i2, iE2, i3, cVar2.f1212f, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView recyclerView, int i2, int i3) {
        b(i2, i3, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView recyclerView, int i2, int i3, int i4) {
        b(i2, i3, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView recyclerView, int i2, int i3, Object obj) {
        b(i2, i3, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView recyclerView, RecyclerView.a0 a0Var, int i2) {
        m mVar = new m(recyclerView.getContext());
        mVar.c(i2);
        b(mVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void a(String str) {
        if (this.I == null) {
            super.a(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean a() {
        return this.w == 0;
    }

    boolean a(RecyclerView.a0 a0Var, b bVar) {
        int i2;
        int iF;
        int iD;
        if (!a0Var.d() && (i2 = this.C) != -1) {
            if (i2 >= 0 && i2 < a0Var.a()) {
                e eVar = this.I;
                if (eVar == null || eVar.f1219b == -1 || eVar.f1221d < 1) {
                    View viewC = c(this.C);
                    if (viewC != null) {
                        bVar.f1204a = this.A ? J() : I();
                        if (this.D != Integer.MIN_VALUE) {
                            if (bVar.f1206c) {
                                iF = this.u.b() - this.D;
                                iD = this.u.a(viewC);
                            } else {
                                iF = this.u.f() + this.D;
                                iD = this.u.d(viewC);
                            }
                            bVar.f1205b = iF - iD;
                            return true;
                        }
                        if (this.u.b(viewC) > this.u.g()) {
                            bVar.f1205b = bVar.f1206c ? this.u.b() : this.u.f();
                            return true;
                        }
                        int iD2 = this.u.d(viewC) - this.u.f();
                        if (iD2 < 0) {
                            bVar.f1205b = -iD2;
                            return true;
                        }
                        int iB = this.u.b() - this.u.a(viewC);
                        if (iB < 0) {
                            bVar.f1205b = iB;
                            return true;
                        }
                        bVar.f1205b = Integer.MIN_VALUE;
                    } else {
                        bVar.f1204a = this.C;
                        int i3 = this.D;
                        if (i3 == Integer.MIN_VALUE) {
                            bVar.f1206c = m(bVar.f1204a) == 1;
                            bVar.a();
                        } else {
                            bVar.a(i3);
                        }
                        bVar.f1207d = true;
                    }
                } else {
                    bVar.f1205b = Integer.MIN_VALUE;
                    bVar.f1204a = this.C;
                }
                return true;
            }
            this.C = -1;
            this.D = Integer.MIN_VALUE;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean a(RecyclerView.p pVar) {
        return pVar instanceof c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int b(int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return c(i2, vVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int b(RecyclerView.a0 a0Var) {
        return i(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int b(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        return this.w == 0 ? this.s : super.b(vVar, a0Var);
    }

    View b(boolean z) {
        int iF = this.u.f();
        int iB = this.u.b();
        int iE = e();
        View view = null;
        for (int i2 = 0; i2 < iE; i2++) {
            View viewD = d(i2);
            int iD = this.u.d(viewD);
            if (this.u.a(viewD) > iF && iD < iB) {
                if (iD >= iF || !z) {
                    return viewD;
                }
                if (view == null) {
                    view = viewD;
                }
            }
        }
        return view;
    }

    void b(RecyclerView.a0 a0Var, b bVar) {
        if (a(a0Var, bVar) || c(a0Var, bVar)) {
            return;
        }
        bVar.a();
        bVar.f1204a = 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void b(RecyclerView recyclerView, int i2, int i3) {
        b(i2, i3, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void b(RecyclerView recyclerView, RecyclerView.v vVar) {
        super.b(recyclerView, vVar);
        a(this.P);
        for (int i2 = 0; i2 < this.s; i2++) {
            this.t[i2].c();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean b() {
        return this.w == 1;
    }

    int c(int i2, RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        if (e() == 0 || i2 == 0) {
            return 0;
        }
        a(i2, a0Var);
        int iA = a(vVar, this.y, a0Var);
        if (this.y.f1376b >= iA) {
            i2 = i2 < 0 ? -iA : iA;
        }
        this.u.a(-i2);
        this.G = this.A;
        l lVar = this.y;
        lVar.f1376b = 0;
        a(vVar, lVar);
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int c(RecyclerView.a0 a0Var) {
        return j(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public RecyclerView.p c() {
        return this.w == 0 ? new c(-2, -1) : new c(-1, -2);
    }

    public void c(boolean z) {
        a((String) null);
        e eVar = this.I;
        if (eVar != null && eVar.f1226i != z) {
            eVar.f1226i = z;
        }
        this.z = z;
        z();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int d(RecyclerView.a0 a0Var) {
        return h(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void d(RecyclerView recyclerView) {
        this.E.a();
        z();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int e(RecyclerView.a0 a0Var) {
        return i(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void e(int i2) {
        super.e(i2);
        for (int i3 = 0; i3 < this.s; i3++) {
            this.t[i3].c(i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void e(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        c(vVar, a0Var, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public int f(RecyclerView.a0 a0Var) {
        return j(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void f(int i2) {
        super.f(i2);
        for (int i3 = 0; i3 < this.s; i3++) {
            this.t[i3].c(i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void g(int i2) {
        if (i2 == 0) {
            G();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void g(RecyclerView.a0 a0Var) {
        super.g(a0Var);
        this.C = -1;
        this.D = Integer.MIN_VALUE;
        this.I = null;
        this.L.b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void i(int i2) {
        e eVar = this.I;
        if (eVar != null && eVar.f1219b != i2) {
            eVar.a();
        }
        this.C = i2;
        this.D = Integer.MIN_VALUE;
        z();
    }

    public void j(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        a((String) null);
        if (i2 == this.w) {
            return;
        }
        this.w = i2;
        r rVar = this.u;
        this.u = this.v;
        this.v = rVar;
        z();
    }

    public void k(int i2) {
        a((String) null);
        if (i2 != this.s) {
            L();
            this.s = i2;
            this.B = new BitSet(this.s);
            this.t = new f[this.s];
            for (int i3 = 0; i3 < this.s; i3++) {
                this.t[i3] = new f(i3);
            }
            z();
        }
    }

    void l(int i2) {
        this.x = i2 / this.s;
        this.J = View.MeasureSpec.makeMeasureSpec(i2, this.v.d());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public boolean v() {
        return this.F != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public Parcelable y() {
        int iB;
        int iF;
        int[] iArr;
        e eVar = this.I;
        if (eVar != null) {
            return new e(eVar);
        }
        e eVar2 = new e();
        eVar2.f1226i = this.z;
        eVar2.f1227j = this.G;
        eVar2.f1228k = this.H;
        d dVar = this.E;
        if (dVar == null || (iArr = dVar.f1213a) == null) {
            eVar2.f1223f = 0;
        } else {
            eVar2.f1224g = iArr;
            eVar2.f1223f = eVar2.f1224g.length;
            eVar2.f1225h = dVar.f1214b;
        }
        if (e() > 0) {
            eVar2.f1219b = this.G ? J() : I();
            eVar2.f1220c = H();
            int i2 = this.s;
            eVar2.f1221d = i2;
            eVar2.f1222e = new int[i2];
            for (int i3 = 0; i3 < this.s; i3++) {
                if (this.G) {
                    iB = this.t[i3].a(Integer.MIN_VALUE);
                    if (iB != Integer.MIN_VALUE) {
                        iF = this.u.b();
                        iB -= iF;
                    }
                } else {
                    iB = this.t[i3].b(Integer.MIN_VALUE);
                    if (iB != Integer.MIN_VALUE) {
                        iF = this.u.f();
                        iB -= iF;
                    }
                }
                eVar2.f1222e[i3] = iB;
            }
        } else {
            eVar2.f1219b = -1;
            eVar2.f1220c = -1;
            eVar2.f1221d = 0;
        }
        return eVar2;
    }
}
