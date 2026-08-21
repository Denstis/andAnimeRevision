package androidx.appcompat.widget;

/* JADX INFO: loaded from: classes.dex */
class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f558a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f559b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f560c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f561d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f562e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f563f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f564g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f565h = false;

    i0() {
    }

    public int a() {
        return this.f564g ? this.f558a : this.f559b;
    }

    public void a(int i2, int i3) {
        this.f565h = false;
        if (i2 != Integer.MIN_VALUE) {
            this.f562e = i2;
            this.f558a = i2;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.f563f = i3;
            this.f559b = i3;
        }
    }

    public void a(boolean z) {
        int i2;
        if (z == this.f564g) {
            return;
        }
        this.f564g = z;
        if (this.f565h) {
            if (z) {
                int i3 = this.f561d;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = this.f562e;
                }
                this.f558a = i3;
                i2 = this.f560c;
                if (i2 == Integer.MIN_VALUE) {
                }
            } else {
                int i4 = this.f560c;
                if (i4 == Integer.MIN_VALUE) {
                    i4 = this.f562e;
                }
                this.f558a = i4;
                i2 = this.f561d;
                if (i2 == Integer.MIN_VALUE) {
                }
            }
            this.f559b = i2;
        }
        this.f558a = this.f562e;
        i2 = this.f563f;
        this.f559b = i2;
    }

    public int b() {
        return this.f558a;
    }

    public void b(int i2, int i3) {
        this.f560c = i2;
        this.f561d = i3;
        this.f565h = true;
        if (this.f564g) {
            if (i3 != Integer.MIN_VALUE) {
                this.f558a = i3;
            }
            if (i2 != Integer.MIN_VALUE) {
                this.f559b = i2;
                return;
            }
            return;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f558a = i2;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.f559b = i3;
        }
    }

    public int c() {
        return this.f559b;
    }

    public int d() {
        return this.f564g ? this.f559b : this.f558a;
    }
}
