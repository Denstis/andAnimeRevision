package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1377c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1378d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1379e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f1382h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f1383i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f1375a = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f1380f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f1381g = 0;

    l() {
    }

    View a(RecyclerView.v vVar) {
        View viewD = vVar.d(this.f1377c);
        this.f1377c += this.f1378d;
        return viewD;
    }

    boolean a(RecyclerView.a0 a0Var) {
        int i2 = this.f1377c;
        return i2 >= 0 && i2 < a0Var.a();
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f1376b + ", mCurrentPosition=" + this.f1377c + ", mItemDirection=" + this.f1378d + ", mLayoutDirection=" + this.f1379e + ", mStartLine=" + this.f1380f + ", mEndLine=" + this.f1381g + '}';
    }
}
