package c.a.a.n;

import android.graphics.Bitmap;
import android.util.Log;
import c.a.a.n.a;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class e implements a {
    private static final String u = "e";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f3192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f3193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a.InterfaceC0128a f3194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ByteBuffer f3195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f3196e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private short[] f3197f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f3198g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private byte[] f3199h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private byte[] f3200i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int[] f3201j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f3202k;
    private c l;
    private Bitmap m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private int r;
    private Boolean s;
    private Bitmap.Config t;

    public e(a.InterfaceC0128a interfaceC0128a) {
        this.f3193b = new int[256];
        this.t = Bitmap.Config.ARGB_8888;
        this.f3194c = interfaceC0128a;
        this.l = new c();
    }

    public e(a.InterfaceC0128a interfaceC0128a, c cVar, ByteBuffer byteBuffer, int i2) {
        this(interfaceC0128a);
        a(cVar, byteBuffer, i2);
    }

    private int a(int i2, int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = i2; i10 < this.p + i2; i10++) {
            byte[] bArr = this.f3200i;
            if (i10 >= bArr.length || i10 >= i3) {
                break;
            }
            int i11 = this.f3192a[bArr[i10] & 255];
            if (i11 != 0) {
                i5 += (i11 >> 24) & 255;
                i6 += (i11 >> 16) & 255;
                i7 += (i11 >> 8) & 255;
                i8 += i11 & 255;
                i9++;
            }
        }
        int i12 = i2 + i4;
        for (int i13 = i12; i13 < this.p + i12; i13++) {
            byte[] bArr2 = this.f3200i;
            if (i13 >= bArr2.length || i13 >= i3) {
                break;
            }
            int i14 = this.f3192a[bArr2[i13] & 255];
            if (i14 != 0) {
                i5 += (i14 >> 24) & 255;
                i6 += (i14 >> 16) & 255;
                i7 += (i14 >> 8) & 255;
                i8 += i14 & 255;
                i9++;
            }
        }
        if (i9 == 0) {
            return 0;
        }
        return ((i5 / i9) << 24) | ((i6 / i9) << 16) | ((i7 / i9) << 8) | (i8 / i9);
    }

    private Bitmap a(b bVar, b bVar2) {
        int i2;
        int i3;
        Bitmap bitmap;
        int[] iArr = this.f3201j;
        int i4 = 0;
        if (bVar2 == null) {
            Bitmap bitmap2 = this.m;
            if (bitmap2 != null) {
                this.f3194c.a(bitmap2);
            }
            this.m = null;
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && bVar2.f3172g == 3 && this.m == null) {
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && (i3 = bVar2.f3172g) > 0) {
            if (i3 == 2) {
                if (!bVar.f3171f) {
                    c cVar = this.l;
                    int i5 = cVar.l;
                    if (bVar.f3176k == null || cVar.f3186j != bVar.f3173h) {
                        i4 = i5;
                    }
                } else if (this.f3202k == 0) {
                    this.s = true;
                }
                int i6 = bVar2.f3169d;
                int i7 = this.p;
                int i8 = i6 / i7;
                int i9 = bVar2.f3167b / i7;
                int i10 = bVar2.f3168c / i7;
                int i11 = bVar2.f3166a / i7;
                int i12 = this.r;
                int i13 = (i9 * i12) + i11;
                int i14 = (i8 * i12) + i13;
                while (i13 < i14) {
                    int i15 = i13 + i10;
                    for (int i16 = i13; i16 < i15; i16++) {
                        iArr[i16] = i4;
                    }
                    i13 += this.r;
                }
            } else if (i3 == 3 && (bitmap = this.m) != null) {
                int i17 = this.r;
                bitmap.getPixels(iArr, 0, i17, 0, 0, i17, this.q);
            }
        }
        c(bVar);
        if (bVar.f3170e || this.p != 1) {
            a(bVar);
        } else {
            b(bVar);
        }
        if (this.n && ((i2 = bVar.f3172g) == 0 || i2 == 1)) {
            if (this.m == null) {
                this.m = i();
            }
            Bitmap bitmap3 = this.m;
            int i18 = this.r;
            bitmap3.setPixels(iArr, 0, i18, 0, 0, i18, this.q);
        }
        Bitmap bitmapI = i();
        int i19 = this.r;
        bitmapI.setPixels(iArr, 0, i19, 0, 0, i19, this.q);
        return bitmapI;
    }

    private void a(b bVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr = this.f3201j;
        int i7 = bVar.f3169d;
        int i8 = this.p;
        int i9 = i7 / i8;
        int i10 = bVar.f3167b / i8;
        int i11 = bVar.f3168c / i8;
        int i12 = bVar.f3166a / i8;
        Boolean bool = true;
        boolean z = this.f3202k == 0;
        int i13 = this.p;
        int i14 = this.r;
        int i15 = this.q;
        byte[] bArr = this.f3200i;
        int[] iArr2 = this.f3192a;
        Boolean bool2 = this.s;
        int i16 = 0;
        int i17 = 0;
        int i18 = 1;
        int i19 = 8;
        while (i16 < i9) {
            Boolean bool3 = bool;
            if (bVar.f3170e) {
                if (i17 >= i9) {
                    i2 = i9;
                    i6 = i18 + 1;
                    if (i6 == 2) {
                        i17 = 4;
                    } else if (i6 == 3) {
                        i17 = 2;
                        i19 = 4;
                    } else if (i6 == 4) {
                        i17 = 1;
                        i19 = 2;
                    }
                } else {
                    i2 = i9;
                    i6 = i18;
                }
                i3 = i17 + i19;
                i18 = i6;
            } else {
                i2 = i9;
                i3 = i17;
                i17 = i16;
            }
            int i20 = i17 + i10;
            boolean z2 = i13 == 1;
            if (i20 < i15) {
                int i21 = i20 * i14;
                int i22 = i21 + i12;
                int i23 = i22 + i11;
                int i24 = i21 + i14;
                if (i24 < i23) {
                    i23 = i24;
                }
                i4 = i10;
                int i25 = i16 * i13 * bVar.f3168c;
                if (z2) {
                    int i26 = i22;
                    while (true) {
                        i5 = i11;
                        if (i26 < i23) {
                            int i27 = iArr2[bArr[i25] & 255];
                            if (i27 != 0) {
                                iArr[i26] = i27;
                            } else if (z && bool2 == null) {
                                bool2 = bool3;
                            }
                            i25 += i13;
                            i26++;
                            i11 = i5;
                        }
                    }
                } else {
                    i5 = i11;
                    int i28 = ((i23 - i22) * i13) + i25;
                    int i29 = i22;
                    while (i29 < i23) {
                        int i30 = i23;
                        int iA = a(i25, i28, bVar.f3168c);
                        if (iA != 0) {
                            iArr[i29] = iA;
                        } else if (z && bool2 == null) {
                            bool2 = bool3;
                        }
                        i25 += i13;
                        i29++;
                        i23 = i30;
                    }
                }
            } else {
                i4 = i10;
                i5 = i11;
            }
            i16++;
            i17 = i3;
            i11 = i5;
            bool = bool3;
            i9 = i2;
            i10 = i4;
        }
        if (this.s == null) {
            this.s = Boolean.valueOf(bool2 == null ? false : bool2.booleanValue());
        }
    }

    private void b(b bVar) {
        b bVar2 = bVar;
        int[] iArr = this.f3201j;
        int i2 = bVar2.f3169d;
        int i3 = bVar2.f3167b;
        int i4 = bVar2.f3168c;
        int i5 = bVar2.f3166a;
        boolean z = this.f3202k == 0;
        int i6 = this.r;
        byte[] bArr = this.f3200i;
        int[] iArr2 = this.f3192a;
        int i7 = 0;
        byte b2 = -1;
        while (i7 < i2) {
            int i8 = (i7 + i3) * i6;
            int i9 = i8 + i5;
            int i10 = i9 + i4;
            int i11 = i8 + i6;
            if (i11 < i10) {
                i10 = i11;
            }
            int i12 = bVar2.f3168c * i7;
            for (int i13 = i9; i13 < i10; i13++) {
                byte b3 = bArr[i12];
                int i14 = b3 & 255;
                if (i14 != b2) {
                    int i15 = iArr2[i14];
                    if (i15 != 0) {
                        iArr[i13] = i15;
                    } else {
                        b2 = b3;
                    }
                }
                i12++;
            }
            i7++;
            bVar2 = bVar;
        }
        this.s = Boolean.valueOf(this.s == null && z && b2 != -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v17, types: [short] */
    /* JADX WARN: Type inference failed for: r4v20 */
    private void c(b bVar) {
        int i2;
        int i3;
        short s;
        e eVar = this;
        if (bVar != null) {
            eVar.f3195d.position(bVar.f3175j);
        }
        if (bVar == null) {
            c cVar = eVar.l;
            i2 = cVar.f3182f;
            i3 = cVar.f3183g;
        } else {
            i2 = bVar.f3168c;
            i3 = bVar.f3169d;
        }
        int i4 = i2 * i3;
        byte[] bArr = eVar.f3200i;
        if (bArr == null || bArr.length < i4) {
            eVar.f3200i = eVar.f3194c.b(i4);
        }
        byte[] bArr2 = eVar.f3200i;
        if (eVar.f3197f == null) {
            eVar.f3197f = new short[MpegAudioHeader.MAX_FRAME_SIZE_BYTES];
        }
        short[] sArr = eVar.f3197f;
        if (eVar.f3198g == null) {
            eVar.f3198g = new byte[MpegAudioHeader.MAX_FRAME_SIZE_BYTES];
        }
        byte[] bArr3 = eVar.f3198g;
        if (eVar.f3199h == null) {
            eVar.f3199h = new byte[4097];
        }
        byte[] bArr4 = eVar.f3199h;
        int iK = k();
        int i5 = 1 << iK;
        int i6 = i5 + 1;
        int i7 = i5 + 2;
        int i8 = iK + 1;
        int i9 = (1 << i8) - 1;
        int i10 = 0;
        for (int i11 = 0; i11 < i5; i11++) {
            sArr[i11] = 0;
            bArr3[i11] = (byte) i11;
        }
        byte[] bArr5 = eVar.f3196e;
        int i12 = i8;
        int i13 = i7;
        int i14 = i9;
        int iJ = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = -1;
        int i20 = 0;
        int i21 = 0;
        while (true) {
            if (i10 >= i4) {
                break;
            }
            if (iJ == 0) {
                iJ = j();
                if (iJ <= 0) {
                    eVar.o = 3;
                    break;
                }
                i17 = 0;
            }
            i16 += (bArr5[i17] & 255) << i15;
            i17++;
            iJ--;
            int i22 = i15 + 8;
            int i23 = i19;
            int i24 = i20;
            int i25 = i13;
            int i26 = i18;
            int i27 = i10;
            int i28 = i12;
            while (true) {
                if (i22 < i28) {
                    i12 = i28;
                    i20 = i24;
                    i10 = i27;
                    i18 = i26;
                    i15 = i22;
                    i13 = i25;
                    i19 = i23;
                    eVar = this;
                    break;
                }
                int i29 = i16 & i14;
                i16 >>= i28;
                i22 -= i28;
                if (i29 == i5) {
                    i28 = i8;
                    i25 = i7;
                    i14 = i9;
                    i23 = -1;
                } else {
                    if (i29 == i6) {
                        i15 = i22;
                        i12 = i28;
                        i10 = i27;
                        i18 = i26;
                        i13 = i25;
                        i20 = i24;
                        i19 = i23;
                        break;
                    }
                    if (i23 == -1) {
                        bArr2[i26] = bArr3[i29];
                        i26++;
                        i27++;
                        eVar = this;
                        i23 = i29;
                        i24 = i23;
                    } else {
                        int i30 = i25;
                        if (i29 >= i30) {
                            bArr4[i21] = (byte) i24;
                            i21++;
                            s = i23;
                        } else {
                            s = i29;
                        }
                        while (s >= i5) {
                            bArr4[i21] = bArr3[s];
                            i21++;
                            s = sArr[s];
                        }
                        int i31 = bArr3[s] & 255;
                        int i32 = i8;
                        byte b2 = (byte) i31;
                        bArr2[i26] = b2;
                        while (true) {
                            i26++;
                            i27++;
                            if (i21 <= 0) {
                                break;
                            }
                            i21--;
                            bArr2[i26] = bArr4[i21];
                        }
                        if (i30 < 4096) {
                            sArr[i30] = (short) i23;
                            bArr3[i30] = b2;
                            i30++;
                            if ((i30 & i14) == 0 && i30 < 4096) {
                                i28++;
                                i14 += i30;
                            }
                        }
                        i23 = i29;
                        i22 = i22;
                        i8 = i32;
                        i24 = i31;
                        i25 = i30;
                        eVar = this;
                    }
                }
            }
        }
        Arrays.fill(bArr2, i18, i4, (byte) 0);
    }

    private Bitmap i() {
        Boolean bool = this.s;
        Bitmap bitmapA = this.f3194c.a(this.r, this.q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.t);
        bitmapA.setHasAlpha(true);
        return bitmapA;
    }

    private int j() {
        int iK = k();
        if (iK <= 0) {
            return iK;
        }
        ByteBuffer byteBuffer = this.f3195d;
        byteBuffer.get(this.f3196e, 0, Math.min(iK, byteBuffer.remaining()));
        return iK;
    }

    private int k() {
        return this.f3195d.get() & 255;
    }

    public int a(int i2) {
        if (i2 >= 0) {
            c cVar = this.l;
            if (i2 < cVar.f3179c) {
                return cVar.f3181e.get(i2).f3174i;
            }
        }
        return -1;
    }

    @Override // c.a.a.n.a
    public synchronized Bitmap a() {
        if (this.l.f3179c <= 0 || this.f3202k < 0) {
            if (Log.isLoggable(u, 3)) {
                Log.d(u, "Unable to decode frame, frameCount=" + this.l.f3179c + ", framePointer=" + this.f3202k);
            }
            this.o = 1;
        }
        if (this.o != 1 && this.o != 2) {
            this.o = 0;
            if (this.f3196e == null) {
                this.f3196e = this.f3194c.b(255);
            }
            b bVar = this.l.f3181e.get(this.f3202k);
            int i2 = this.f3202k - 1;
            b bVar2 = i2 >= 0 ? this.l.f3181e.get(i2) : null;
            this.f3192a = bVar.f3176k != null ? bVar.f3176k : this.l.f3177a;
            if (this.f3192a != null) {
                if (bVar.f3171f) {
                    System.arraycopy(this.f3192a, 0, this.f3193b, 0, this.f3192a.length);
                    this.f3192a = this.f3193b;
                    this.f3192a[bVar.f3173h] = 0;
                }
                return a(bVar, bVar2);
            }
            if (Log.isLoggable(u, 3)) {
                Log.d(u, "No valid color table found for frame #" + this.f3202k);
            }
            this.o = 1;
            return null;
        }
        if (Log.isLoggable(u, 3)) {
            Log.d(u, "Unable to decode frame, status=" + this.o);
        }
        return null;
    }

    @Override // c.a.a.n.a
    public void a(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    public synchronized void a(c cVar, ByteBuffer byteBuffer, int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
        }
        int iHighestOneBit = Integer.highestOneBit(i2);
        this.o = 0;
        this.l = cVar;
        this.f3202k = -1;
        this.f3195d = byteBuffer.asReadOnlyBuffer();
        this.f3195d.position(0);
        this.f3195d.order(ByteOrder.LITTLE_ENDIAN);
        this.n = false;
        Iterator<b> it = cVar.f3181e.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().f3172g == 3) {
                this.n = true;
                break;
            }
        }
        this.p = iHighestOneBit;
        this.r = cVar.f3182f / iHighestOneBit;
        this.q = cVar.f3183g / iHighestOneBit;
        this.f3200i = this.f3194c.b(cVar.f3182f * cVar.f3183g);
        this.f3201j = this.f3194c.a(this.r * this.q);
    }

    @Override // c.a.a.n.a
    public void b() {
        this.f3202k = (this.f3202k + 1) % this.l.f3179c;
    }

    @Override // c.a.a.n.a
    public int c() {
        return this.l.f3179c;
    }

    @Override // c.a.a.n.a
    public void clear() {
        this.l = null;
        byte[] bArr = this.f3200i;
        if (bArr != null) {
            this.f3194c.a(bArr);
        }
        int[] iArr = this.f3201j;
        if (iArr != null) {
            this.f3194c.a(iArr);
        }
        Bitmap bitmap = this.m;
        if (bitmap != null) {
            this.f3194c.a(bitmap);
        }
        this.m = null;
        this.f3195d = null;
        this.s = null;
        byte[] bArr2 = this.f3196e;
        if (bArr2 != null) {
            this.f3194c.a(bArr2);
        }
    }

    @Override // c.a.a.n.a
    public int d() {
        int i2;
        if (this.l.f3179c <= 0 || (i2 = this.f3202k) < 0) {
            return 0;
        }
        return a(i2);
    }

    @Override // c.a.a.n.a
    public ByteBuffer e() {
        return this.f3195d;
    }

    @Override // c.a.a.n.a
    public void f() {
        this.f3202k = -1;
    }

    @Override // c.a.a.n.a
    public int g() {
        return this.f3202k;
    }

    @Override // c.a.a.n.a
    public int h() {
        return this.f3195d.limit() + this.f3200i.length + (this.f3201j.length * 4);
    }
}
