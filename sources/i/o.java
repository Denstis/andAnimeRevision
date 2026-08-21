package i;

/* JADX INFO: loaded from: classes.dex */
final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final byte[] f5027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f5028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f5029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f5030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f5031e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    o f5032f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    o f5033g;

    o() {
        this.f5027a = new byte[8192];
        this.f5031e = true;
        this.f5030d = false;
    }

    o(byte[] bArr, int i2, int i3, boolean z, boolean z2) {
        this.f5027a = bArr;
        this.f5028b = i2;
        this.f5029c = i3;
        this.f5030d = z;
        this.f5031e = z2;
    }

    public o a(int i2) {
        o oVarA;
        if (i2 <= 0 || i2 > this.f5029c - this.f5028b) {
            throw new IllegalArgumentException();
        }
        if (i2 >= 1024) {
            oVarA = c();
        } else {
            oVarA = p.a();
            System.arraycopy(this.f5027a, this.f5028b, oVarA.f5027a, 0, i2);
        }
        oVarA.f5029c = oVarA.f5028b + i2;
        this.f5028b += i2;
        this.f5033g.a(oVarA);
        return oVarA;
    }

    public o a(o oVar) {
        oVar.f5033g = this;
        oVar.f5032f = this.f5032f;
        this.f5032f.f5033g = oVar;
        this.f5032f = oVar;
        return oVar;
    }

    public void a() {
        o oVar = this.f5033g;
        if (oVar == this) {
            throw new IllegalStateException();
        }
        if (oVar.f5031e) {
            int i2 = this.f5029c - this.f5028b;
            if (i2 > (8192 - oVar.f5029c) + (oVar.f5030d ? 0 : oVar.f5028b)) {
                return;
            }
            a(this.f5033g, i2);
            b();
            p.a(this);
        }
    }

    public void a(o oVar, int i2) {
        if (!oVar.f5031e) {
            throw new IllegalArgumentException();
        }
        int i3 = oVar.f5029c;
        if (i3 + i2 > 8192) {
            if (oVar.f5030d) {
                throw new IllegalArgumentException();
            }
            int i4 = oVar.f5028b;
            if ((i3 + i2) - i4 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = oVar.f5027a;
            System.arraycopy(bArr, i4, bArr, 0, i3 - i4);
            oVar.f5029c -= oVar.f5028b;
            oVar.f5028b = 0;
        }
        System.arraycopy(this.f5027a, this.f5028b, oVar.f5027a, oVar.f5029c, i2);
        oVar.f5029c += i2;
        this.f5028b += i2;
    }

    public o b() {
        o oVar = this.f5032f;
        if (oVar == this) {
            oVar = null;
        }
        o oVar2 = this.f5033g;
        oVar2.f5032f = this.f5032f;
        this.f5032f.f5033g = oVar2;
        this.f5032f = null;
        this.f5033g = null;
        return oVar;
    }

    o c() {
        this.f5030d = true;
        return new o(this.f5027a, this.f5028b, this.f5029c, true, false);
    }
}
