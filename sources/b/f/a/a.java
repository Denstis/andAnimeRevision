package b.f.a;

import b.f.a.i;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f2302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f2303c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f2306f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int[] f2307g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float[] f2308h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f2309i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f2310j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f2311k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f2301a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2304d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f2305e = null;

    a(b bVar, c cVar) {
        int i2 = this.f2304d;
        this.f2306f = new int[i2];
        this.f2307g = new int[i2];
        this.f2308h = new float[i2];
        this.f2309i = -1;
        this.f2310j = -1;
        this.f2311k = false;
        this.f2302b = bVar;
        this.f2303c = cVar;
    }

    private boolean a(i iVar, e eVar) {
        return iVar.f2354j <= 1;
    }

    public final float a(i iVar, boolean z) {
        if (this.f2305e == iVar) {
            this.f2305e = null;
        }
        int i2 = this.f2309i;
        if (i2 == -1) {
            return 0.0f;
        }
        int i3 = 0;
        int i4 = -1;
        while (i2 != -1 && i3 < this.f2301a) {
            if (this.f2306f[i2] == iVar.f2346b) {
                if (i2 == this.f2309i) {
                    this.f2309i = this.f2307g[i2];
                } else {
                    int[] iArr = this.f2307g;
                    iArr[i4] = iArr[i2];
                }
                if (z) {
                    iVar.b(this.f2302b);
                }
                iVar.f2354j--;
                this.f2301a--;
                this.f2306f[i2] = -1;
                if (this.f2311k) {
                    this.f2310j = i2;
                }
                return this.f2308h[i2];
            }
            i3++;
            i4 = i2;
            i2 = this.f2307g[i2];
        }
        return 0.0f;
    }

    final i a(int i2) {
        int i3 = this.f2309i;
        for (int i4 = 0; i3 != -1 && i4 < this.f2301a; i4++) {
            if (i4 == i2) {
                return this.f2303c.f2319c[this.f2306f[i3]];
            }
            i3 = this.f2307g[i3];
        }
        return null;
    }

    i a(e eVar) {
        int i2 = this.f2309i;
        i iVar = null;
        i iVar2 = null;
        float f2 = 0.0f;
        boolean zA = false;
        float f3 = 0.0f;
        boolean zA2 = false;
        for (int i3 = 0; i2 != -1 && i3 < this.f2301a; i3++) {
            float[] fArr = this.f2308h;
            float f4 = fArr[i2];
            i iVar3 = this.f2303c.f2319c[this.f2306f[i2]];
            if (f4 < 0.0f) {
                if (f4 > -0.001f) {
                    fArr[i2] = 0.0f;
                    iVar3.b(this.f2302b);
                    f4 = 0.0f;
                }
            } else if (f4 < 0.001f) {
                fArr[i2] = 0.0f;
                iVar3.b(this.f2302b);
                f4 = 0.0f;
            }
            if (f4 != 0.0f) {
                if (iVar3.f2351g == i.a.UNRESTRICTED) {
                    if (iVar2 == null || f2 > f4) {
                        zA = a(iVar3, eVar);
                        f2 = f4;
                        iVar2 = iVar3;
                    } else if (!zA && a(iVar3, eVar)) {
                        f2 = f4;
                        iVar2 = iVar3;
                        zA = true;
                    }
                } else if (iVar2 == null && f4 < 0.0f) {
                    if (iVar == null || f3 > f4) {
                        zA2 = a(iVar3, eVar);
                        f3 = f4;
                        iVar = iVar3;
                    } else if (!zA2 && a(iVar3, eVar)) {
                        f3 = f4;
                        iVar = iVar3;
                        zA2 = true;
                    }
                }
            }
            i2 = this.f2307g[i2];
        }
        return iVar2 != null ? iVar2 : iVar;
    }

    i a(boolean[] zArr, i iVar) {
        i.a aVar;
        int i2 = this.f2309i;
        i iVar2 = null;
        float f2 = 0.0f;
        for (int i3 = 0; i2 != -1 && i3 < this.f2301a; i3++) {
            if (this.f2308h[i2] < 0.0f) {
                i iVar3 = this.f2303c.f2319c[this.f2306f[i2]];
                if ((zArr == null || !zArr[iVar3.f2346b]) && iVar3 != iVar && ((aVar = iVar3.f2351g) == i.a.SLACK || aVar == i.a.ERROR)) {
                    float f3 = this.f2308h[i2];
                    if (f3 < f2) {
                        iVar2 = iVar3;
                        f2 = f3;
                    }
                }
            }
            i2 = this.f2307g[i2];
        }
        return iVar2;
    }

    public final void a() {
        int i2 = this.f2309i;
        for (int i3 = 0; i2 != -1 && i3 < this.f2301a; i3++) {
            i iVar = this.f2303c.f2319c[this.f2306f[i2]];
            if (iVar != null) {
                iVar.b(this.f2302b);
            }
            i2 = this.f2307g[i2];
        }
        this.f2309i = -1;
        this.f2310j = -1;
        this.f2311k = false;
        this.f2301a = 0;
    }

    void a(float f2) {
        int i2 = this.f2309i;
        for (int i3 = 0; i2 != -1 && i3 < this.f2301a; i3++) {
            float[] fArr = this.f2308h;
            fArr[i2] = fArr[i2] / f2;
            i2 = this.f2307g[i2];
        }
    }

    final void a(b bVar, b bVar2, boolean z) {
        int i2 = this.f2309i;
        while (true) {
            for (int i3 = 0; i2 != -1 && i3 < this.f2301a; i3++) {
                int i4 = this.f2306f[i2];
                i iVar = bVar2.f2312a;
                if (i4 == iVar.f2346b) {
                    float f2 = this.f2308h[i2];
                    a(iVar, z);
                    a aVar = bVar2.f2315d;
                    int i5 = aVar.f2309i;
                    for (int i6 = 0; i5 != -1 && i6 < aVar.f2301a; i6++) {
                        a(this.f2303c.f2319c[aVar.f2306f[i5]], aVar.f2308h[i5] * f2, z);
                        i5 = aVar.f2307g[i5];
                    }
                    bVar.f2313b += bVar2.f2313b * f2;
                    if (z) {
                        bVar2.f2312a.b(bVar);
                    }
                    i2 = this.f2309i;
                } else {
                    i2 = this.f2307g[i2];
                }
            }
            return;
        }
    }

    void a(b bVar, b[] bVarArr) {
        int i2 = this.f2309i;
        while (true) {
            for (int i3 = 0; i2 != -1 && i3 < this.f2301a; i3++) {
                i iVar = this.f2303c.f2319c[this.f2306f[i2]];
                if (iVar.f2347c != -1) {
                    float f2 = this.f2308h[i2];
                    a(iVar, true);
                    b bVar2 = bVarArr[iVar.f2347c];
                    if (!bVar2.f2316e) {
                        a aVar = bVar2.f2315d;
                        int i4 = aVar.f2309i;
                        for (int i5 = 0; i4 != -1 && i5 < aVar.f2301a; i5++) {
                            a(this.f2303c.f2319c[aVar.f2306f[i4]], aVar.f2308h[i4] * f2, true);
                            i4 = aVar.f2307g[i4];
                        }
                    }
                    bVar.f2313b += bVar2.f2313b * f2;
                    bVar2.f2312a.b(bVar);
                    i2 = this.f2309i;
                } else {
                    i2 = this.f2307g[i2];
                }
            }
            return;
        }
    }

    public final void a(i iVar, float f2) {
        if (f2 == 0.0f) {
            a(iVar, true);
            return;
        }
        int i2 = this.f2309i;
        if (i2 == -1) {
            this.f2309i = 0;
            float[] fArr = this.f2308h;
            int i3 = this.f2309i;
            fArr[i3] = f2;
            this.f2306f[i3] = iVar.f2346b;
            this.f2307g[i3] = -1;
            iVar.f2354j++;
            iVar.a(this.f2302b);
            this.f2301a++;
            if (this.f2311k) {
                return;
            }
            this.f2310j++;
            int i4 = this.f2310j;
            int[] iArr = this.f2306f;
            if (i4 >= iArr.length) {
                this.f2311k = true;
                this.f2310j = iArr.length - 1;
                return;
            }
            return;
        }
        int i5 = -1;
        for (int i6 = 0; i2 != -1 && i6 < this.f2301a; i6++) {
            int[] iArr2 = this.f2306f;
            int i7 = iArr2[i2];
            int i8 = iVar.f2346b;
            if (i7 == i8) {
                this.f2308h[i2] = f2;
                return;
            }
            if (iArr2[i2] < i8) {
                i5 = i2;
            }
            i2 = this.f2307g[i2];
        }
        int length = this.f2310j;
        int i9 = length + 1;
        if (this.f2311k) {
            int[] iArr3 = this.f2306f;
            if (iArr3[length] != -1) {
                length = iArr3.length;
            }
        } else {
            length = i9;
        }
        int[] iArr4 = this.f2306f;
        if (length >= iArr4.length && this.f2301a < iArr4.length) {
            int i10 = 0;
            while (true) {
                int[] iArr5 = this.f2306f;
                if (i10 >= iArr5.length) {
                    break;
                }
                if (iArr5[i10] == -1) {
                    length = i10;
                    break;
                }
                i10++;
            }
        }
        int[] iArr6 = this.f2306f;
        if (length >= iArr6.length) {
            length = iArr6.length;
            this.f2304d *= 2;
            this.f2311k = false;
            this.f2310j = length - 1;
            this.f2308h = Arrays.copyOf(this.f2308h, this.f2304d);
            this.f2306f = Arrays.copyOf(this.f2306f, this.f2304d);
            this.f2307g = Arrays.copyOf(this.f2307g, this.f2304d);
        }
        this.f2306f[length] = iVar.f2346b;
        this.f2308h[length] = f2;
        int[] iArr7 = this.f2307g;
        if (i5 != -1) {
            iArr7[length] = iArr7[i5];
            iArr7[i5] = length;
        } else {
            iArr7[length] = this.f2309i;
            this.f2309i = length;
        }
        iVar.f2354j++;
        iVar.a(this.f2302b);
        this.f2301a++;
        if (!this.f2311k) {
            this.f2310j++;
        }
        if (this.f2301a >= this.f2306f.length) {
            this.f2311k = true;
        }
        int i11 = this.f2310j;
        int[] iArr8 = this.f2306f;
        if (i11 >= iArr8.length) {
            this.f2311k = true;
            this.f2310j = iArr8.length - 1;
        }
    }

    final void a(i iVar, float f2, boolean z) {
        if (f2 == 0.0f) {
            return;
        }
        int i2 = this.f2309i;
        if (i2 == -1) {
            this.f2309i = 0;
            float[] fArr = this.f2308h;
            int i3 = this.f2309i;
            fArr[i3] = f2;
            this.f2306f[i3] = iVar.f2346b;
            this.f2307g[i3] = -1;
            iVar.f2354j++;
            iVar.a(this.f2302b);
            this.f2301a++;
            if (this.f2311k) {
                return;
            }
            this.f2310j++;
            int i4 = this.f2310j;
            int[] iArr = this.f2306f;
            if (i4 >= iArr.length) {
                this.f2311k = true;
                this.f2310j = iArr.length - 1;
                return;
            }
            return;
        }
        int i5 = -1;
        for (int i6 = 0; i2 != -1 && i6 < this.f2301a; i6++) {
            int[] iArr2 = this.f2306f;
            int i7 = iArr2[i2];
            int i8 = iVar.f2346b;
            if (i7 == i8) {
                float[] fArr2 = this.f2308h;
                fArr2[i2] = fArr2[i2] + f2;
                if (fArr2[i2] == 0.0f) {
                    if (i2 == this.f2309i) {
                        this.f2309i = this.f2307g[i2];
                    } else {
                        int[] iArr3 = this.f2307g;
                        iArr3[i5] = iArr3[i2];
                    }
                    if (z) {
                        iVar.b(this.f2302b);
                    }
                    if (this.f2311k) {
                        this.f2310j = i2;
                    }
                    iVar.f2354j--;
                    this.f2301a--;
                    return;
                }
                return;
            }
            if (iArr2[i2] < i8) {
                i5 = i2;
            }
            i2 = this.f2307g[i2];
        }
        int length = this.f2310j;
        int i9 = length + 1;
        if (this.f2311k) {
            int[] iArr4 = this.f2306f;
            if (iArr4[length] != -1) {
                length = iArr4.length;
            }
        } else {
            length = i9;
        }
        int[] iArr5 = this.f2306f;
        if (length >= iArr5.length && this.f2301a < iArr5.length) {
            int i10 = 0;
            while (true) {
                int[] iArr6 = this.f2306f;
                if (i10 >= iArr6.length) {
                    break;
                }
                if (iArr6[i10] == -1) {
                    length = i10;
                    break;
                }
                i10++;
            }
        }
        int[] iArr7 = this.f2306f;
        if (length >= iArr7.length) {
            length = iArr7.length;
            this.f2304d *= 2;
            this.f2311k = false;
            this.f2310j = length - 1;
            this.f2308h = Arrays.copyOf(this.f2308h, this.f2304d);
            this.f2306f = Arrays.copyOf(this.f2306f, this.f2304d);
            this.f2307g = Arrays.copyOf(this.f2307g, this.f2304d);
        }
        this.f2306f[length] = iVar.f2346b;
        this.f2308h[length] = f2;
        int[] iArr8 = this.f2307g;
        if (i5 != -1) {
            iArr8[length] = iArr8[i5];
            iArr8[i5] = length;
        } else {
            iArr8[length] = this.f2309i;
            this.f2309i = length;
        }
        iVar.f2354j++;
        iVar.a(this.f2302b);
        this.f2301a++;
        if (!this.f2311k) {
            this.f2310j++;
        }
        int i11 = this.f2310j;
        int[] iArr9 = this.f2306f;
        if (i11 >= iArr9.length) {
            this.f2311k = true;
            this.f2310j = iArr9.length - 1;
        }
    }

    final boolean a(i iVar) {
        int i2 = this.f2309i;
        if (i2 == -1) {
            return false;
        }
        for (int i3 = 0; i2 != -1 && i3 < this.f2301a; i3++) {
            if (this.f2306f[i2] == iVar.f2346b) {
                return true;
            }
            i2 = this.f2307g[i2];
        }
        return false;
    }

    final float b(int i2) {
        int i3 = this.f2309i;
        for (int i4 = 0; i3 != -1 && i4 < this.f2301a; i4++) {
            if (i4 == i2) {
                return this.f2308h[i3];
            }
            i3 = this.f2307g[i3];
        }
        return 0.0f;
    }

    public final float b(i iVar) {
        int i2 = this.f2309i;
        for (int i3 = 0; i2 != -1 && i3 < this.f2301a; i3++) {
            if (this.f2306f[i2] == iVar.f2346b) {
                return this.f2308h[i2];
            }
            i2 = this.f2307g[i2];
        }
        return 0.0f;
    }

    void b() {
        int i2 = this.f2309i;
        for (int i3 = 0; i2 != -1 && i3 < this.f2301a; i3++) {
            float[] fArr = this.f2308h;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f2307g[i2];
        }
    }

    public String toString() {
        int i2 = this.f2309i;
        String str = "";
        for (int i3 = 0; i2 != -1 && i3 < this.f2301a; i3++) {
            str = ((str + " -> ") + this.f2308h[i2] + " : ") + this.f2303c.f2319c[this.f2306f[i2]];
            i2 = this.f2307g[i2];
        }
        return str;
    }
}
