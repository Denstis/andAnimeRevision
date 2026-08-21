package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final RecyclerView.o f1391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Rect f1393c;

    static class a extends r {
        a(RecyclerView.o oVar) {
            super(oVar, null);
        }

        @Override // androidx.recyclerview.widget.r
        public int a() {
            return this.f1391a.r();
        }

        @Override // androidx.recyclerview.widget.r
        public int a(View view) {
            return this.f1391a.i(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.p) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.r
        public void a(int i2) {
            this.f1391a.e(i2);
        }

        @Override // androidx.recyclerview.widget.r
        public int b() {
            return this.f1391a.r() - this.f1391a.p();
        }

        @Override // androidx.recyclerview.widget.r
        public int b(View view) {
            RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
            return this.f1391a.h(view) + ((ViewGroup.MarginLayoutParams) pVar).leftMargin + ((ViewGroup.MarginLayoutParams) pVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.r
        public int c() {
            return this.f1391a.p();
        }

        @Override // androidx.recyclerview.widget.r
        public int c(View view) {
            RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
            return this.f1391a.g(view) + ((ViewGroup.MarginLayoutParams) pVar).topMargin + ((ViewGroup.MarginLayoutParams) pVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.r
        public int d() {
            return this.f1391a.s();
        }

        @Override // androidx.recyclerview.widget.r
        public int d(View view) {
            return this.f1391a.f(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.p) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.r
        public int e() {
            return this.f1391a.i();
        }

        @Override // androidx.recyclerview.widget.r
        public int e(View view) {
            this.f1391a.a(view, true, this.f1393c);
            return this.f1393c.right;
        }

        @Override // androidx.recyclerview.widget.r
        public int f() {
            return this.f1391a.o();
        }

        @Override // androidx.recyclerview.widget.r
        public int f(View view) {
            this.f1391a.a(view, true, this.f1393c);
            return this.f1393c.left;
        }

        @Override // androidx.recyclerview.widget.r
        public int g() {
            return (this.f1391a.r() - this.f1391a.o()) - this.f1391a.p();
        }
    }

    static class b extends r {
        b(RecyclerView.o oVar) {
            super(oVar, null);
        }

        @Override // androidx.recyclerview.widget.r
        public int a() {
            return this.f1391a.h();
        }

        @Override // androidx.recyclerview.widget.r
        public int a(View view) {
            return this.f1391a.e(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.p) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.r
        public void a(int i2) {
            this.f1391a.f(i2);
        }

        @Override // androidx.recyclerview.widget.r
        public int b() {
            return this.f1391a.h() - this.f1391a.n();
        }

        @Override // androidx.recyclerview.widget.r
        public int b(View view) {
            RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
            return this.f1391a.g(view) + ((ViewGroup.MarginLayoutParams) pVar).topMargin + ((ViewGroup.MarginLayoutParams) pVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.r
        public int c() {
            return this.f1391a.n();
        }

        @Override // androidx.recyclerview.widget.r
        public int c(View view) {
            RecyclerView.p pVar = (RecyclerView.p) view.getLayoutParams();
            return this.f1391a.h(view) + ((ViewGroup.MarginLayoutParams) pVar).leftMargin + ((ViewGroup.MarginLayoutParams) pVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.r
        public int d() {
            return this.f1391a.i();
        }

        @Override // androidx.recyclerview.widget.r
        public int d(View view) {
            return this.f1391a.j(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.p) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.r
        public int e() {
            return this.f1391a.s();
        }

        @Override // androidx.recyclerview.widget.r
        public int e(View view) {
            this.f1391a.a(view, true, this.f1393c);
            return this.f1393c.bottom;
        }

        @Override // androidx.recyclerview.widget.r
        public int f() {
            return this.f1391a.q();
        }

        @Override // androidx.recyclerview.widget.r
        public int f(View view) {
            this.f1391a.a(view, true, this.f1393c);
            return this.f1393c.top;
        }

        @Override // androidx.recyclerview.widget.r
        public int g() {
            return (this.f1391a.h() - this.f1391a.q()) - this.f1391a.n();
        }
    }

    private r(RecyclerView.o oVar) {
        this.f1392b = Integer.MIN_VALUE;
        this.f1393c = new Rect();
        this.f1391a = oVar;
    }

    /* synthetic */ r(RecyclerView.o oVar, a aVar) {
        this(oVar);
    }

    public static r a(RecyclerView.o oVar) {
        return new a(oVar);
    }

    public static r a(RecyclerView.o oVar, int i2) {
        if (i2 == 0) {
            return a(oVar);
        }
        if (i2 == 1) {
            return b(oVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static r b(RecyclerView.o oVar) {
        return new b(oVar);
    }

    public abstract int a();

    public abstract int a(View view);

    public abstract void a(int i2);

    public abstract int b();

    public abstract int b(View view);

    public abstract int c();

    public abstract int c(View view);

    public abstract int d();

    public abstract int d(View view);

    public abstract int e();

    public abstract int e(View view);

    public abstract int f();

    public abstract int f(View view);

    public abstract int g();

    public int h() {
        if (Integer.MIN_VALUE == this.f1392b) {
            return 0;
        }
        return g() - this.f1392b;
    }

    public void i() {
        this.f1392b = g();
    }
}
