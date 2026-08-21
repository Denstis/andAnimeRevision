package androidx.recyclerview.widget;

/* JADX INFO: loaded from: classes.dex */
public class e implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final p f1271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1272b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1273c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1274d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Object f1275e = null;

    public e(p pVar) {
        this.f1271a = pVar;
    }

    public void a() {
        int i2 = this.f1272b;
        if (i2 == 0) {
            return;
        }
        if (i2 == 1) {
            this.f1271a.b(this.f1273c, this.f1274d);
        } else if (i2 == 2) {
            this.f1271a.c(this.f1273c, this.f1274d);
        } else if (i2 == 3) {
            this.f1271a.a(this.f1273c, this.f1274d, this.f1275e);
        }
        this.f1275e = null;
        this.f1272b = 0;
    }

    @Override // androidx.recyclerview.widget.p
    public void a(int i2, int i3) {
        a();
        this.f1271a.a(i2, i3);
    }

    @Override // androidx.recyclerview.widget.p
    public void a(int i2, int i3, Object obj) {
        int i4;
        if (this.f1272b == 3) {
            int i5 = this.f1273c;
            int i6 = this.f1274d;
            if (i2 <= i5 + i6 && (i4 = i2 + i3) >= i5 && this.f1275e == obj) {
                this.f1273c = Math.min(i2, i5);
                this.f1274d = Math.max(i6 + i5, i4) - this.f1273c;
                return;
            }
        }
        a();
        this.f1273c = i2;
        this.f1274d = i3;
        this.f1275e = obj;
        this.f1272b = 3;
    }

    @Override // androidx.recyclerview.widget.p
    public void b(int i2, int i3) {
        int i4;
        if (this.f1272b == 1 && i2 >= (i4 = this.f1273c)) {
            int i5 = this.f1274d;
            if (i2 <= i4 + i5) {
                this.f1274d = i5 + i3;
                this.f1273c = Math.min(i2, i4);
                return;
            }
        }
        a();
        this.f1273c = i2;
        this.f1274d = i3;
        this.f1272b = 1;
    }

    @Override // androidx.recyclerview.widget.p
    public void c(int i2, int i3) {
        int i4;
        if (this.f1272b == 2 && (i4 = this.f1273c) >= i2 && i4 <= i2 + i3) {
            this.f1274d += i3;
            this.f1273c = i2;
        } else {
            a();
            this.f1273c = i2;
            this.f1274d = i3;
            this.f1272b = 2;
        }
    }
}
