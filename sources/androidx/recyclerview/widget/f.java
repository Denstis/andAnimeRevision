package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f1276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a f1277b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List<View> f1278c = new ArrayList();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f1279a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        a f1280b;

        a() {
        }

        private void b() {
            if (this.f1280b == null) {
                this.f1280b = new a();
            }
        }

        void a() {
            this.f1279a = 0L;
            a aVar = this.f1280b;
            if (aVar != null) {
                aVar.a();
            }
        }

        void a(int i2) {
            if (i2 < 64) {
                this.f1279a &= (1 << i2) ^ (-1);
                return;
            }
            a aVar = this.f1280b;
            if (aVar != null) {
                aVar.a(i2 - 64);
            }
        }

        void a(int i2, boolean z) {
            if (i2 >= 64) {
                b();
                this.f1280b.a(i2 - 64, z);
                return;
            }
            boolean z2 = (this.f1279a & Long.MIN_VALUE) != 0;
            long j2 = (1 << i2) - 1;
            long j3 = this.f1279a;
            this.f1279a = ((j3 & (j2 ^ (-1))) << 1) | (j3 & j2);
            if (z) {
                e(i2);
            } else {
                a(i2);
            }
            if (z2 || this.f1280b != null) {
                b();
                this.f1280b.a(0, z2);
            }
        }

        int b(int i2) {
            a aVar = this.f1280b;
            return aVar == null ? i2 >= 64 ? Long.bitCount(this.f1279a) : Long.bitCount(this.f1279a & ((1 << i2) - 1)) : i2 < 64 ? Long.bitCount(this.f1279a & ((1 << i2) - 1)) : aVar.b(i2 - 64) + Long.bitCount(this.f1279a);
        }

        boolean c(int i2) {
            if (i2 < 64) {
                return (this.f1279a & (1 << i2)) != 0;
            }
            b();
            return this.f1280b.c(i2 - 64);
        }

        boolean d(int i2) {
            if (i2 >= 64) {
                b();
                return this.f1280b.d(i2 - 64);
            }
            long j2 = 1 << i2;
            boolean z = (this.f1279a & j2) != 0;
            this.f1279a &= j2 ^ (-1);
            long j3 = j2 - 1;
            long j4 = this.f1279a;
            this.f1279a = Long.rotateRight(j4 & (j3 ^ (-1)), 1) | (j4 & j3);
            a aVar = this.f1280b;
            if (aVar != null) {
                if (aVar.c(0)) {
                    e(63);
                }
                this.f1280b.d(0);
            }
            return z;
        }

        void e(int i2) {
            if (i2 < 64) {
                this.f1279a |= 1 << i2;
            } else {
                b();
                this.f1280b.e(i2 - 64);
            }
        }

        public String toString() {
            if (this.f1280b == null) {
                return Long.toBinaryString(this.f1279a);
            }
            return this.f1280b.toString() + "xx" + Long.toBinaryString(this.f1279a);
        }
    }

    interface b {
        int a();

        View a(int i2);

        void a(View view);

        void a(View view, int i2);

        void a(View view, int i2, ViewGroup.LayoutParams layoutParams);

        int b(View view);

        void b();

        void b(int i2);

        RecyclerView.d0 c(View view);

        void c(int i2);

        void d(View view);
    }

    f(b bVar) {
        this.f1276a = bVar;
    }

    private int f(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int iA = this.f1276a.a();
        int i3 = i2;
        while (i3 < iA) {
            int iB = i2 - (i3 - this.f1277b.b(i3));
            if (iB == 0) {
                while (this.f1277b.c(i3)) {
                    i3++;
                }
                return i3;
            }
            i3 += iB;
        }
        return -1;
    }

    private void g(View view) {
        this.f1278c.add(view);
        this.f1276a.a(view);
    }

    private boolean h(View view) {
        if (!this.f1278c.remove(view)) {
            return false;
        }
        this.f1276a.d(view);
        return true;
    }

    int a() {
        return this.f1276a.a() - this.f1278c.size();
    }

    void a(int i2) {
        int iF = f(i2);
        this.f1277b.d(iF);
        this.f1276a.b(iF);
    }

    void a(View view) {
        int iB = this.f1276a.b(view);
        if (iB >= 0) {
            this.f1277b.e(iB);
            g(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    void a(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z) {
        int iA = i2 < 0 ? this.f1276a.a() : f(i2);
        this.f1277b.a(iA, z);
        if (z) {
            g(view);
        }
        this.f1276a.a(view, iA, layoutParams);
    }

    void a(View view, int i2, boolean z) {
        int iA = i2 < 0 ? this.f1276a.a() : f(i2);
        this.f1277b.a(iA, z);
        if (z) {
            g(view);
        }
        this.f1276a.a(view, iA);
    }

    void a(View view, boolean z) {
        a(view, -1, z);
    }

    int b() {
        return this.f1276a.a();
    }

    int b(View view) {
        int iB = this.f1276a.b(view);
        if (iB == -1 || this.f1277b.c(iB)) {
            return -1;
        }
        return iB - this.f1277b.b(iB);
    }

    View b(int i2) {
        int size = this.f1278c.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.f1278c.get(i3);
            RecyclerView.d0 d0VarC = this.f1276a.c(view);
            if (d0VarC.getLayoutPosition() == i2 && !d0VarC.isInvalid() && !d0VarC.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    View c(int i2) {
        return this.f1276a.a(f(i2));
    }

    void c() {
        this.f1277b.a();
        for (int size = this.f1278c.size() - 1; size >= 0; size--) {
            this.f1276a.d(this.f1278c.get(size));
            this.f1278c.remove(size);
        }
        this.f1276a.b();
    }

    boolean c(View view) {
        return this.f1278c.contains(view);
    }

    View d(int i2) {
        return this.f1276a.a(i2);
    }

    void d(View view) {
        int iB = this.f1276a.b(view);
        if (iB < 0) {
            return;
        }
        if (this.f1277b.d(iB)) {
            h(view);
        }
        this.f1276a.c(iB);
    }

    void e(int i2) {
        int iF = f(i2);
        View viewA = this.f1276a.a(iF);
        if (viewA == null) {
            return;
        }
        if (this.f1277b.d(iF)) {
            h(viewA);
        }
        this.f1276a.c(iF);
    }

    boolean e(View view) {
        int iB = this.f1276a.b(view);
        if (iB == -1) {
            h(view);
            return true;
        }
        if (!this.f1277b.c(iB)) {
            return false;
        }
        this.f1277b.d(iB);
        h(view);
        this.f1276a.c(iB);
        return true;
    }

    void f(View view) {
        int iB = this.f1276a.b(view);
        if (iB < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.f1277b.c(iB)) {
            this.f1277b.a(iB);
            h(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f1277b.toString() + ", hidden list:" + this.f1278c.size();
    }
}
