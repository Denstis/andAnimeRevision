package h.h0.i;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f4807b = new int[10];

    int a(int i2) {
        return this.f4807b[i2];
    }

    m a(int i2, int i3) {
        if (i2 >= 0) {
            int[] iArr = this.f4807b;
            if (i2 < iArr.length) {
                this.f4806a = (1 << i2) | this.f4806a;
                iArr[i2] = i3;
            }
        }
        return this;
    }

    void a() {
        this.f4806a = 0;
        Arrays.fill(this.f4807b, 0);
    }

    void a(m mVar) {
        for (int i2 = 0; i2 < 10; i2++) {
            if (mVar.d(i2)) {
                a(i2, mVar.a(i2));
            }
        }
    }

    int b() {
        if ((this.f4806a & 2) != 0) {
            return this.f4807b[1];
        }
        return -1;
    }

    int b(int i2) {
        return (this.f4806a & 16) != 0 ? this.f4807b[4] : i2;
    }

    int c() {
        if ((this.f4806a & 128) != 0) {
            return this.f4807b[7];
        }
        return 65535;
    }

    int c(int i2) {
        return (this.f4806a & 32) != 0 ? this.f4807b[5] : i2;
    }

    int d() {
        return Integer.bitCount(this.f4806a);
    }

    boolean d(int i2) {
        return ((1 << i2) & this.f4806a) != 0;
    }
}
