package i;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class q extends f {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final transient byte[][] f5036g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final transient int[] f5037h;

    q(c cVar, int i2) {
        super(null);
        u.a(cVar.f4994c, 0L, i2);
        int i3 = 0;
        o oVar = cVar.f4993b;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = oVar.f5029c;
            int i7 = oVar.f5028b;
            if (i6 == i7) {
                throw new AssertionError("s.limit == s.pos");
            }
            i4 += i6 - i7;
            i5++;
            oVar = oVar.f5032f;
        }
        this.f5036g = new byte[i5][];
        this.f5037h = new int[i5 * 2];
        o oVar2 = cVar.f4993b;
        int i8 = 0;
        while (i3 < i2) {
            this.f5036g[i8] = oVar2.f5027a;
            i3 += oVar2.f5029c - oVar2.f5028b;
            if (i3 > i2) {
                i3 = i2;
            }
            int[] iArr = this.f5037h;
            iArr[i8] = i3;
            iArr[this.f5036g.length + i8] = oVar2.f5028b;
            oVar2.f5030d = true;
            i8++;
            oVar2 = oVar2.f5032f;
        }
    }

    private int b(int i2) {
        int iBinarySearch = Arrays.binarySearch(this.f5037h, 0, this.f5036g.length, i2 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : iBinarySearch ^ (-1);
    }

    private f i() {
        return new f(g());
    }

    @Override // i.f
    public byte a(int i2) {
        u.a(this.f5037h[this.f5036g.length - 1], i2, 1L);
        int iB = b(i2);
        int i3 = iB == 0 ? 0 : this.f5037h[iB - 1];
        int[] iArr = this.f5037h;
        byte[][] bArr = this.f5036g;
        return bArr[iB][(i2 - i3) + iArr[bArr.length + iB]];
    }

    @Override // i.f
    public f a(int i2, int i3) {
        return i().a(i2, i3);
    }

    @Override // i.f
    public String a() {
        return i().a();
    }

    @Override // i.f
    void a(c cVar) {
        int length = this.f5036g.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr = this.f5037h;
            int i4 = iArr[length + i2];
            int i5 = iArr[i2];
            o oVar = new o(this.f5036g[i2], i4, (i4 + i5) - i3, true, false);
            o oVar2 = cVar.f4993b;
            if (oVar2 == null) {
                oVar.f5033g = oVar;
                oVar.f5032f = oVar;
                cVar.f4993b = oVar;
            } else {
                oVar2.f5033g.a(oVar);
            }
            i2++;
            i3 = i5;
        }
        cVar.f4994c += (long) i3;
    }

    @Override // i.f
    public boolean a(int i2, f fVar, int i3, int i4) {
        if (i2 < 0 || i2 > e() - i4) {
            return false;
        }
        int iB = b(i2);
        while (i4 > 0) {
            int i5 = iB == 0 ? 0 : this.f5037h[iB - 1];
            int iMin = Math.min(i4, ((this.f5037h[iB] - i5) + i5) - i2);
            int[] iArr = this.f5037h;
            byte[][] bArr = this.f5036g;
            if (!fVar.a(i3, bArr[iB], (i2 - i5) + iArr[bArr.length + iB], iMin)) {
                return false;
            }
            i2 += iMin;
            i3 += iMin;
            i4 -= iMin;
            iB++;
        }
        return true;
    }

    @Override // i.f
    public boolean a(int i2, byte[] bArr, int i3, int i4) {
        if (i2 < 0 || i2 > e() - i4 || i3 < 0 || i3 > bArr.length - i4) {
            return false;
        }
        int iB = b(i2);
        while (i4 > 0) {
            int i5 = iB == 0 ? 0 : this.f5037h[iB - 1];
            int iMin = Math.min(i4, ((this.f5037h[iB] - i5) + i5) - i2);
            int[] iArr = this.f5037h;
            byte[][] bArr2 = this.f5036g;
            if (!u.a(bArr2[iB], (i2 - i5) + iArr[bArr2.length + iB], bArr, i3, iMin)) {
                return false;
            }
            i2 += iMin;
            i3 += iMin;
            i4 -= iMin;
            iB++;
        }
        return true;
    }

    @Override // i.f
    public String b() {
        return i().b();
    }

    @Override // i.f
    public f c() {
        return i().c();
    }

    @Override // i.f
    public f d() {
        return i().d();
    }

    @Override // i.f
    public int e() {
        return this.f5037h[this.f5036g.length - 1];
    }

    @Override // i.f
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.e() == e() && a(0, fVar, 0, e())) {
                return true;
            }
        }
        return false;
    }

    @Override // i.f
    public f f() {
        return i().f();
    }

    @Override // i.f
    public byte[] g() {
        int[] iArr = this.f5037h;
        byte[][] bArr = this.f5036g;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr2 = this.f5037h;
            int i4 = iArr2[length + i2];
            int i5 = iArr2[i2];
            System.arraycopy(this.f5036g[i2], i4, bArr2, i3, i5 - i3);
            i2++;
            i3 = i5;
        }
        return bArr2;
    }

    @Override // i.f
    public String h() {
        return i().h();
    }

    @Override // i.f
    public int hashCode() {
        int i2 = this.f5000c;
        if (i2 != 0) {
            return i2;
        }
        int length = this.f5036g.length;
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i3 < length) {
            byte[] bArr = this.f5036g[i3];
            int[] iArr = this.f5037h;
            int i6 = iArr[length + i3];
            int i7 = iArr[i3];
            int i8 = (i7 - i5) + i6;
            while (i6 < i8) {
                i4 = (i4 * 31) + bArr[i6];
                i6++;
            }
            i3++;
            i5 = i7;
        }
        this.f5000c = i4;
        return i4;
    }

    @Override // i.f
    public String toString() {
        return i().toString();
    }
}
