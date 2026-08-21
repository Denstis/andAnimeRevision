package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public abstract class w extends RecyclerView.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    RecyclerView f1400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Scroller f1401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RecyclerView.t f1402c = new a();

    class a extends RecyclerView.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1403a = false;

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void a(RecyclerView recyclerView, int i2) {
            super.a(recyclerView, i2);
            if (i2 == 0 && this.f1403a) {
                this.f1403a = false;
                w.this.a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void a(RecyclerView recyclerView, int i2, int i3) {
            if (i2 == 0 && i3 == 0) {
                return;
            }
            this.f1403a = true;
        }
    }

    class b extends m {
        b(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.m
        protected float a(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.m, androidx.recyclerview.widget.RecyclerView.z
        protected void a(View view, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
            w wVar = w.this;
            RecyclerView recyclerView = wVar.f1400a;
            if (recyclerView == null) {
                return;
            }
            int[] iArrA = wVar.a(recyclerView.getLayoutManager(), view);
            int i2 = iArrA[0];
            int i3 = iArrA[1];
            int iD = d(Math.max(Math.abs(i2), Math.abs(i3)));
            if (iD > 0) {
                aVar.a(i2, i3, iD, this.f1385j);
            }
        }
    }

    private void b() {
        this.f1400a.removeOnScrollListener(this.f1402c);
        this.f1400a.setOnFlingListener(null);
    }

    private boolean b(RecyclerView.o oVar, int i2, int i3) {
        RecyclerView.z zVarA;
        int iA;
        if (!(oVar instanceof RecyclerView.z.b) || (zVarA = a(oVar)) == null || (iA = a(oVar, i2, i3)) == -1) {
            return false;
        }
        zVarA.c(iA);
        oVar.b(zVarA);
        return true;
    }

    private void c() {
        if (this.f1400a.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.f1400a.addOnScrollListener(this.f1402c);
        this.f1400a.setOnFlingListener(this);
    }

    public abstract int a(RecyclerView.o oVar, int i2, int i3);

    protected RecyclerView.z a(RecyclerView.o oVar) {
        return b(oVar);
    }

    void a() {
        RecyclerView.o layoutManager;
        View viewC;
        RecyclerView recyclerView = this.f1400a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewC = c(layoutManager)) == null) {
            return;
        }
        int[] iArrA = a(layoutManager, viewC);
        if (iArrA[0] == 0 && iArrA[1] == 0) {
            return;
        }
        this.f1400a.smoothScrollBy(iArrA[0], iArrA[1]);
    }

    public void a(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f1400a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            b();
        }
        this.f1400a = recyclerView;
        if (this.f1400a != null) {
            c();
            this.f1401b = new Scroller(this.f1400a.getContext(), new DecelerateInterpolator());
            a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public boolean a(int i2, int i3) {
        RecyclerView.o layoutManager = this.f1400a.getLayoutManager();
        if (layoutManager == null || this.f1400a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f1400a.getMinFlingVelocity();
        return (Math.abs(i3) > minFlingVelocity || Math.abs(i2) > minFlingVelocity) && b(layoutManager, i2, i3);
    }

    public abstract int[] a(RecyclerView.o oVar, View view);

    @Deprecated
    protected m b(RecyclerView.o oVar) {
        if (oVar instanceof RecyclerView.z.b) {
            return new b(this.f1400a.getContext());
        }
        return null;
    }

    public int[] b(int i2, int i3) {
        this.f1401b.fling(0, 0, i2, i3, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return new int[]{this.f1401b.getFinalX(), this.f1401b.getFinalY()};
    }

    public abstract View c(RecyclerView.o oVar);
}
