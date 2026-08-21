package androidx.recyclerview.widget;

import android.view.View;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes.dex */
class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f1405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f1406b = new a();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1407a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1408b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1409c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1410d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1411e;

        a() {
        }

        int a(int i2, int i3) {
            if (i2 > i3) {
                return 1;
            }
            return i2 == i3 ? 2 : 4;
        }

        void a(int i2) {
            this.f1407a = i2 | this.f1407a;
        }

        void a(int i2, int i3, int i4, int i5) {
            this.f1408b = i2;
            this.f1409c = i3;
            this.f1410d = i4;
            this.f1411e = i5;
        }

        boolean a() {
            int i2 = this.f1407a;
            if ((i2 & 7) != 0 && (i2 & (a(this.f1410d, this.f1408b) << 0)) == 0) {
                return false;
            }
            int i3 = this.f1407a;
            if ((i3 & R.styleable.AppCompatTheme_windowActionBarOverlay) != 0 && (i3 & (a(this.f1410d, this.f1409c) << 4)) == 0) {
                return false;
            }
            int i4 = this.f1407a;
            if ((i4 & 1792) != 0 && (i4 & (a(this.f1411e, this.f1408b) << 8)) == 0) {
                return false;
            }
            int i5 = this.f1407a;
            return (i5 & 28672) == 0 || (i5 & (a(this.f1411e, this.f1409c) << 12)) != 0;
        }

        void b() {
            this.f1407a = 0;
        }
    }

    interface b {
        int a();

        int a(View view);

        View a(int i2);

        int b();

        int b(View view);
    }

    x(b bVar) {
        this.f1405a = bVar;
    }

    View a(int i2, int i3, int i4, int i5) {
        int iA = this.f1405a.a();
        int iB = this.f1405a.b();
        int i6 = i3 > i2 ? 1 : -1;
        View view = null;
        while (i2 != i3) {
            View viewA = this.f1405a.a(i2);
            this.f1406b.a(iA, iB, this.f1405a.a(viewA), this.f1405a.b(viewA));
            if (i4 != 0) {
                this.f1406b.b();
                this.f1406b.a(i4);
                if (this.f1406b.a()) {
                    return viewA;
                }
            }
            if (i5 != 0) {
                this.f1406b.b();
                this.f1406b.a(i5);
                if (this.f1406b.a()) {
                    view = viewA;
                }
            }
            i2 += i6;
        }
        return view;
    }

    boolean a(View view, int i2) {
        this.f1406b.a(this.f1405a.a(), this.f1405a.b(), this.f1405a.a(view), this.f1405a.b(view));
        if (i2 == 0) {
            return false;
        }
        this.f1406b.b();
        this.f1406b.a(i2);
        return this.f1406b.a();
    }
}
