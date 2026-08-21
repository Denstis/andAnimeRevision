package b.f.a.j;

import b.f.a.j.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected f f2361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected f f2362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected f f2363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected f f2364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected f f2365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected f f2366f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected f f2367g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected ArrayList<f> f2368h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f2369i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f2370j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected float f2371k = 0.0f;
    private int l;
    private boolean m;
    protected boolean n;
    protected boolean o;
    protected boolean p;
    private boolean q;

    public d(f fVar, int i2, boolean z) {
        this.m = false;
        this.f2361a = fVar;
        this.l = i2;
        this.m = z;
    }

    private static boolean a(f fVar, int i2) {
        if (fVar.r() != 8 && fVar.C[i2] == f.b.MATCH_CONSTRAINT) {
            int[] iArr = fVar.f2405g;
            if (iArr[i2] == 0 || iArr[i2] == 3) {
                return true;
            }
        }
        return false;
    }

    private void b() {
        int i2 = this.l * 2;
        boolean z = false;
        f fVar = this.f2361a;
        f fVar2 = fVar;
        boolean z2 = false;
        while (!z2) {
            this.f2369i++;
            f[] fVarArr = fVar.i0;
            int i3 = this.l;
            f fVar3 = null;
            fVarArr[i3] = null;
            fVar.h0[i3] = null;
            if (fVar.r() != 8) {
                if (this.f2362b == null) {
                    this.f2362b = fVar;
                }
                this.f2364d = fVar;
                f.b[] bVarArr = fVar.C;
                int i4 = this.l;
                if (bVarArr[i4] == f.b.MATCH_CONSTRAINT) {
                    int[] iArr = fVar.f2405g;
                    if (iArr[i4] == 0 || iArr[i4] == 3 || iArr[i4] == 2) {
                        this.f2370j++;
                        float[] fArr = fVar.g0;
                        int i5 = this.l;
                        float f2 = fArr[i5];
                        if (f2 > 0.0f) {
                            this.f2371k += fArr[i5];
                        }
                        if (a(fVar, this.l)) {
                            if (f2 < 0.0f) {
                                this.n = true;
                            } else {
                                this.o = true;
                            }
                            if (this.f2368h == null) {
                                this.f2368h = new ArrayList<>();
                            }
                            this.f2368h.add(fVar);
                        }
                        if (this.f2366f == null) {
                            this.f2366f = fVar;
                        }
                        f fVar4 = this.f2367g;
                        if (fVar4 != null) {
                            fVar4.h0[this.l] = fVar;
                        }
                        this.f2367g = fVar;
                    }
                }
            }
            if (fVar2 != fVar) {
                fVar2.i0[this.l] = fVar;
            }
            e eVar = fVar.A[i2 + 1].f2375d;
            if (eVar != null) {
                f fVar5 = eVar.f2373b;
                e[] eVarArr = fVar5.A;
                if (eVarArr[i2].f2375d != null && eVarArr[i2].f2375d.f2373b == fVar) {
                    fVar3 = fVar5;
                }
            }
            if (fVar3 == null) {
                fVar3 = fVar;
                z2 = true;
            }
            fVar2 = fVar;
            fVar = fVar3;
        }
        this.f2363c = fVar;
        this.f2365e = (this.l == 0 && this.m) ? this.f2363c : this.f2361a;
        if (this.o && this.n) {
            z = true;
        }
        this.p = z;
    }

    public void a() {
        if (!this.q) {
            b();
        }
        this.q = true;
    }
}
