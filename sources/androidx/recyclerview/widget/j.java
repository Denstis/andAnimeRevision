package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final ThreadLocal<j> f1360f = new ThreadLocal<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static Comparator<c> f1361g = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f1363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f1364d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<RecyclerView> f1362b = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<c> f1365e = new ArrayList<>();

    static class a implements Comparator<c> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            if ((cVar.f1373d == null) != (cVar2.f1373d == null)) {
                return cVar.f1373d == null ? 1 : -1;
            }
            boolean z = cVar.f1370a;
            if (z != cVar2.f1370a) {
                return z ? -1 : 1;
            }
            int i2 = cVar2.f1371b - cVar.f1371b;
            if (i2 != 0) {
                return i2;
            }
            int i3 = cVar.f1372c - cVar2.f1372c;
            if (i3 != 0) {
                return i3;
            }
            return 0;
        }
    }

    static class b implements RecyclerView.o.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1366a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1367b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int[] f1368c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1369d;

        b() {
        }

        void a() {
            int[] iArr = this.f1368c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f1369d = 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o.c
        public void a(int i2, int i3) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i3 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i4 = this.f1369d * 2;
            int[] iArr = this.f1368c;
            if (iArr == null) {
                this.f1368c = new int[4];
                Arrays.fill(this.f1368c, -1);
            } else if (i4 >= iArr.length) {
                this.f1368c = new int[i4 * 2];
                System.arraycopy(iArr, 0, this.f1368c, 0, iArr.length);
            }
            int[] iArr2 = this.f1368c;
            iArr2[i4] = i2;
            iArr2[i4 + 1] = i3;
            this.f1369d++;
        }

        void a(RecyclerView recyclerView, boolean z) {
            this.f1369d = 0;
            int[] iArr = this.f1368c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.o oVar = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || oVar == null || !oVar.w()) {
                return;
            }
            if (z) {
                if (!recyclerView.mAdapterHelper.c()) {
                    oVar.a(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                oVar.a(this.f1366a, this.f1367b, recyclerView.mState, this);
            }
            int i2 = this.f1369d;
            if (i2 > oVar.m) {
                oVar.m = i2;
                oVar.n = z;
                recyclerView.mRecycler.j();
            }
        }

        boolean a(int i2) {
            if (this.f1368c != null) {
                int i3 = this.f1369d * 2;
                for (int i4 = 0; i4 < i3; i4 += 2) {
                    if (this.f1368c[i4] == i2) {
                        return true;
                    }
                }
            }
            return false;
        }

        void b(int i2, int i3) {
            this.f1366a = i2;
            this.f1367b = i3;
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1370a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1371b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1372c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RecyclerView f1373d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1374e;

        c() {
        }

        public void a() {
            this.f1370a = false;
            this.f1371b = 0;
            this.f1372c = 0;
            this.f1373d = null;
            this.f1374e = 0;
        }
    }

    j() {
    }

    private RecyclerView.d0 a(RecyclerView recyclerView, int i2, long j2) {
        if (a(recyclerView, i2)) {
            return null;
        }
        RecyclerView.v vVar = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.d0 d0VarA = vVar.a(i2, false, j2);
            if (d0VarA != null) {
                if (!d0VarA.isBound() || d0VarA.isInvalid()) {
                    vVar.a(d0VarA, false);
                } else {
                    vVar.b(d0VarA.itemView);
                }
            }
            return d0VarA;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    private void a() {
        c cVar;
        int size = this.f1362b.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView recyclerView = this.f1362b.get(i3);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.a(recyclerView, false);
                i2 += recyclerView.mPrefetchRegistry.f1369d;
            }
        }
        this.f1365e.ensureCapacity(i2);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView2 = this.f1362b.get(i5);
            if (recyclerView2.getWindowVisibility() == 0) {
                b bVar = recyclerView2.mPrefetchRegistry;
                int iAbs = Math.abs(bVar.f1366a) + Math.abs(bVar.f1367b);
                int i6 = i4;
                for (int i7 = 0; i7 < bVar.f1369d * 2; i7 += 2) {
                    if (i6 >= this.f1365e.size()) {
                        cVar = new c();
                        this.f1365e.add(cVar);
                    } else {
                        cVar = this.f1365e.get(i6);
                    }
                    int i8 = bVar.f1368c[i7 + 1];
                    cVar.f1370a = i8 <= iAbs;
                    cVar.f1371b = iAbs;
                    cVar.f1372c = i8;
                    cVar.f1373d = recyclerView2;
                    cVar.f1374e = bVar.f1368c[i7];
                    i6++;
                }
                i4 = i6;
            }
        }
        Collections.sort(this.f1365e, f1361g);
    }

    private void a(RecyclerView recyclerView, long j2) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.b() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        b bVar = recyclerView.mPrefetchRegistry;
        bVar.a(recyclerView, true);
        if (bVar.f1369d != 0) {
            try {
                b.h.k.b.a("RV Nested Prefetch");
                recyclerView.mState.a(recyclerView.mAdapter);
                for (int i2 = 0; i2 < bVar.f1369d * 2; i2 += 2) {
                    a(recyclerView, bVar.f1368c[i2], j2);
                }
            } finally {
                b.h.k.b.a();
            }
        }
    }

    private void a(c cVar, long j2) {
        RecyclerView.d0 d0VarA = a(cVar.f1373d, cVar.f1374e, cVar.f1370a ? Long.MAX_VALUE : j2);
        if (d0VarA == null || d0VarA.mNestedRecyclerView == null || !d0VarA.isBound() || d0VarA.isInvalid()) {
            return;
        }
        a(d0VarA.mNestedRecyclerView.get(), j2);
    }

    static boolean a(RecyclerView recyclerView, int i2) {
        int iB = recyclerView.mChildHelper.b();
        for (int i3 = 0; i3 < iB; i3++) {
            RecyclerView.d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.d(i3));
            if (childViewHolderInt.mPosition == i2 && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private void b(long j2) {
        for (int i2 = 0; i2 < this.f1365e.size(); i2++) {
            c cVar = this.f1365e.get(i2);
            if (cVar.f1373d == null) {
                return;
            }
            a(cVar, j2);
            cVar.a();
        }
    }

    void a(long j2) {
        a();
        b(j2);
    }

    public void a(RecyclerView recyclerView) {
        this.f1362b.add(recyclerView);
    }

    void a(RecyclerView recyclerView, int i2, int i3) {
        if (recyclerView.isAttachedToWindow() && this.f1363c == 0) {
            this.f1363c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.b(i2, i3);
    }

    public void b(RecyclerView recyclerView) {
        this.f1362b.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            b.h.k.b.a("RV Prefetch");
            if (!this.f1362b.isEmpty()) {
                int size = this.f1362b.size();
                long jMax = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    RecyclerView recyclerView = this.f1362b.get(i2);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    a(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f1364d);
                }
            }
        } finally {
            this.f1363c = 0L;
            b.h.k.b.a();
        }
    }
}
