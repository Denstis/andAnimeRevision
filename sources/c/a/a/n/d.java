package c.a.a.n;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteBuffer f3189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f3190c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f3188a = new byte[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3191d = 0;

    private int[] a(int i2) {
        byte[] bArr = new byte[i2 * 3];
        int[] iArr = null;
        try {
            this.f3189b.get(bArr);
            iArr = new int[256];
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2) {
                int i5 = i4 + 1;
                int i6 = i5 + 1;
                int i7 = i6 + 1;
                int i8 = i3 + 1;
                iArr[i3] = ((bArr[i4] & 255) << 16) | (-16777216) | ((bArr[i5] & 255) << 8) | (bArr[i6] & 255);
                i4 = i7;
                i3 = i8;
            }
        } catch (BufferUnderflowException e2) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e2);
            }
            this.f3190c.f3178b = 1;
        }
        return iArr;
    }

    private void b(int i2) {
        boolean z = false;
        while (!z && !c() && this.f3190c.f3179c <= i2) {
            int iD = d();
            if (iD == 33) {
                int iD2 = d();
                if (iD2 != 1) {
                    if (iD2 == 249) {
                        this.f3190c.f3180d = new b();
                        h();
                    } else if (iD2 != 254 && iD2 == 255) {
                        f();
                        StringBuilder sb = new StringBuilder();
                        for (int i3 = 0; i3 < 11; i3++) {
                            sb.append((char) this.f3188a[i3]);
                        }
                        if (sb.toString().equals("NETSCAPE2.0")) {
                            k();
                        }
                    }
                }
                n();
            } else if (iD == 44) {
                c cVar = this.f3190c;
                if (cVar.f3180d == null) {
                    cVar.f3180d = new b();
                }
                e();
            } else if (iD != 59) {
                this.f3190c.f3178b = 1;
            } else {
                z = true;
            }
        }
    }

    private boolean c() {
        return this.f3190c.f3178b != 0;
    }

    private int d() {
        try {
            return this.f3189b.get() & 255;
        } catch (Exception unused) {
            this.f3190c.f3178b = 1;
            return 0;
        }
    }

    private void e() {
        this.f3190c.f3180d.f3166a = l();
        this.f3190c.f3180d.f3167b = l();
        this.f3190c.f3180d.f3168c = l();
        this.f3190c.f3180d.f3169d = l();
        int iD = d();
        boolean z = (iD & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (iD & 7) + 1);
        this.f3190c.f3180d.f3170e = (iD & 64) != 0;
        b bVar = this.f3190c.f3180d;
        if (z) {
            bVar.f3176k = a(iPow);
        } else {
            bVar.f3176k = null;
        }
        this.f3190c.f3180d.f3175j = this.f3189b.position();
        o();
        if (c()) {
            return;
        }
        c cVar = this.f3190c;
        cVar.f3179c++;
        cVar.f3181e.add(cVar.f3180d);
    }

    private void f() {
        this.f3191d = d();
        if (this.f3191d > 0) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < this.f3191d) {
                try {
                    i3 = this.f3191d - i2;
                    this.f3189b.get(this.f3188a, i2, i3);
                    i2 += i3;
                } catch (Exception e2) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Error Reading Block n: " + i2 + " count: " + i3 + " blockSize: " + this.f3191d, e2);
                    }
                    this.f3190c.f3178b = 1;
                    return;
                }
            }
        }
    }

    private void g() {
        b(Integer.MAX_VALUE);
    }

    private void h() {
        d();
        int iD = d();
        b bVar = this.f3190c.f3180d;
        bVar.f3172g = (iD & 28) >> 2;
        if (bVar.f3172g == 0) {
            bVar.f3172g = 1;
        }
        this.f3190c.f3180d.f3171f = (iD & 1) != 0;
        int iL = l();
        if (iL < 2) {
            iL = 10;
        }
        b bVar2 = this.f3190c.f3180d;
        bVar2.f3174i = iL * 10;
        bVar2.f3173h = d();
        d();
    }

    private void i() {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 6; i2++) {
            sb.append((char) d());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f3190c.f3178b = 1;
            return;
        }
        j();
        if (!this.f3190c.f3184h || c()) {
            return;
        }
        c cVar = this.f3190c;
        cVar.f3177a = a(cVar.f3185i);
        c cVar2 = this.f3190c;
        cVar2.l = cVar2.f3177a[cVar2.f3186j];
    }

    private void j() {
        this.f3190c.f3182f = l();
        this.f3190c.f3183g = l();
        this.f3190c.f3184h = (d() & 128) != 0;
        this.f3190c.f3185i = (int) Math.pow(2.0d, (r0 & 7) + 1);
        this.f3190c.f3186j = d();
        this.f3190c.f3187k = d();
    }

    private void k() {
        do {
            f();
            byte[] bArr = this.f3188a;
            if (bArr[0] == 1) {
                this.f3190c.m = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.f3191d <= 0) {
                return;
            }
        } while (!c());
    }

    private int l() {
        return this.f3189b.getShort();
    }

    private void m() {
        this.f3189b = null;
        Arrays.fill(this.f3188a, (byte) 0);
        this.f3190c = new c();
        this.f3191d = 0;
    }

    private void n() {
        int iD;
        do {
            iD = d();
            this.f3189b.position(Math.min(this.f3189b.position() + iD, this.f3189b.limit()));
        } while (iD > 0);
    }

    private void o() {
        d();
        n();
    }

    public d a(ByteBuffer byteBuffer) {
        m();
        this.f3189b = byteBuffer.asReadOnlyBuffer();
        this.f3189b.position(0);
        this.f3189b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public void a() {
        this.f3189b = null;
        this.f3190c = null;
    }

    public c b() {
        if (this.f3189b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (c()) {
            return this.f3190c;
        }
        i();
        if (!c()) {
            g();
            c cVar = this.f3190c;
            if (cVar.f3179c < 0) {
                cVar.f3178b = 1;
            }
        }
        return this.f3190c;
    }
}
