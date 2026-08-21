package b.f.a;

import b.f.a.e;
import b.f.a.i;

/* JADX INFO: loaded from: classes.dex */
public class b implements e.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f2314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f2315d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    i f2312a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f2313b = 0.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f2316e = false;

    public b(c cVar) {
        this.f2315d = new a(this, cVar);
    }

    public b a(float f2, float f3, float f4, i iVar, i iVar2, i iVar3, i iVar4) {
        this.f2313b = 0.0f;
        if (f3 == 0.0f || f2 == f4) {
            this.f2315d.a(iVar, 1.0f);
            this.f2315d.a(iVar2, -1.0f);
            this.f2315d.a(iVar4, 1.0f);
            this.f2315d.a(iVar3, -1.0f);
        } else if (f2 == 0.0f) {
            this.f2315d.a(iVar, 1.0f);
            this.f2315d.a(iVar2, -1.0f);
        } else if (f4 == 0.0f) {
            this.f2315d.a(iVar3, 1.0f);
            this.f2315d.a(iVar4, -1.0f);
        } else {
            float f5 = (f2 / f3) / (f4 / f3);
            this.f2315d.a(iVar, 1.0f);
            this.f2315d.a(iVar2, -1.0f);
            this.f2315d.a(iVar4, f5);
            this.f2315d.a(iVar3, -f5);
        }
        return this;
    }

    public b a(e eVar, int i2) {
        this.f2315d.a(eVar.a(i2, "ep"), 1.0f);
        this.f2315d.a(eVar.a(i2, "em"), -1.0f);
        return this;
    }

    b a(i iVar, int i2) {
        this.f2315d.a(iVar, i2);
        return this;
    }

    public b a(i iVar, i iVar2, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f2313b = i2;
        }
        if (z) {
            this.f2315d.a(iVar, 1.0f);
            this.f2315d.a(iVar2, -1.0f);
        } else {
            this.f2315d.a(iVar, -1.0f);
            this.f2315d.a(iVar2, 1.0f);
        }
        return this;
    }

    b a(i iVar, i iVar2, int i2, float f2, i iVar3, i iVar4, int i3) {
        float f3;
        if (iVar2 == iVar3) {
            this.f2315d.a(iVar, 1.0f);
            this.f2315d.a(iVar4, 1.0f);
            this.f2315d.a(iVar2, -2.0f);
            return this;
        }
        if (f2 == 0.5f) {
            this.f2315d.a(iVar, 1.0f);
            this.f2315d.a(iVar2, -1.0f);
            this.f2315d.a(iVar3, -1.0f);
            this.f2315d.a(iVar4, 1.0f);
            if (i2 > 0 || i3 > 0) {
                f3 = (-i2) + i3;
                this.f2313b = f3;
            }
        } else {
            if (f2 <= 0.0f) {
                this.f2315d.a(iVar, -1.0f);
                this.f2315d.a(iVar2, 1.0f);
                f3 = i2;
            } else if (f2 >= 1.0f) {
                this.f2315d.a(iVar3, -1.0f);
                this.f2315d.a(iVar4, 1.0f);
                f3 = i3;
            } else {
                float f4 = 1.0f - f2;
                this.f2315d.a(iVar, f4 * 1.0f);
                this.f2315d.a(iVar2, f4 * (-1.0f));
                this.f2315d.a(iVar3, (-1.0f) * f2);
                this.f2315d.a(iVar4, 1.0f * f2);
                if (i2 > 0 || i3 > 0) {
                    f3 = ((-i2) * f4) + (i3 * f2);
                }
            }
            this.f2313b = f3;
        }
        return this;
    }

    b a(i iVar, i iVar2, i iVar3, float f2) {
        this.f2315d.a(iVar, -1.0f);
        this.f2315d.a(iVar2, 1.0f - f2);
        this.f2315d.a(iVar3, f2);
        return this;
    }

    public b a(i iVar, i iVar2, i iVar3, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f2313b = i2;
        }
        if (z) {
            this.f2315d.a(iVar, 1.0f);
            this.f2315d.a(iVar2, -1.0f);
            this.f2315d.a(iVar3, -1.0f);
        } else {
            this.f2315d.a(iVar, -1.0f);
            this.f2315d.a(iVar2, 1.0f);
            this.f2315d.a(iVar3, 1.0f);
        }
        return this;
    }

    public b a(i iVar, i iVar2, i iVar3, i iVar4, float f2) {
        this.f2315d.a(iVar, -1.0f);
        this.f2315d.a(iVar2, 1.0f);
        this.f2315d.a(iVar3, f2);
        this.f2315d.a(iVar4, -f2);
        return this;
    }

    @Override // b.f.a.e.a
    public i a(e eVar, boolean[] zArr) {
        return this.f2315d.a(zArr, (i) null);
    }

    void a() {
        float f2 = this.f2313b;
        if (f2 < 0.0f) {
            this.f2313b = f2 * (-1.0f);
            this.f2315d.b();
        }
    }

    @Override // b.f.a.e.a
    public void a(e.a aVar) {
        if (!(aVar instanceof b)) {
            return;
        }
        b bVar = (b) aVar;
        this.f2312a = null;
        this.f2315d.a();
        int i2 = 0;
        while (true) {
            a aVar2 = bVar.f2315d;
            if (i2 >= aVar2.f2301a) {
                return;
            }
            this.f2315d.a(aVar2.a(i2), bVar.f2315d.b(i2), true);
            i2++;
        }
    }

    @Override // b.f.a.e.a
    public void a(i iVar) {
        int i2 = iVar.f2348d;
        float f2 = 1.0f;
        if (i2 != 1) {
            if (i2 == 2) {
                f2 = 1000.0f;
            } else if (i2 == 3) {
                f2 = 1000000.0f;
            } else if (i2 == 4) {
                f2 = 1.0E9f;
            } else if (i2 == 5) {
                f2 = 1.0E12f;
            }
        }
        this.f2315d.a(iVar, f2);
    }

    boolean a(e eVar) {
        boolean z;
        i iVarA = this.f2315d.a(eVar);
        if (iVarA == null) {
            z = true;
        } else {
            d(iVarA);
            z = false;
        }
        if (this.f2315d.f2301a == 0) {
            this.f2316e = true;
        }
        return z;
    }

    b b(i iVar, int i2) {
        this.f2312a = iVar;
        float f2 = i2;
        iVar.f2349e = f2;
        this.f2313b = f2;
        this.f2316e = true;
        return this;
    }

    public b b(i iVar, i iVar2, i iVar3, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f2313b = i2;
        }
        if (z) {
            this.f2315d.a(iVar, 1.0f);
            this.f2315d.a(iVar2, -1.0f);
            this.f2315d.a(iVar3, 1.0f);
        } else {
            this.f2315d.a(iVar, -1.0f);
            this.f2315d.a(iVar2, 1.0f);
            this.f2315d.a(iVar3, -1.0f);
        }
        return this;
    }

    public b b(i iVar, i iVar2, i iVar3, i iVar4, float f2) {
        this.f2315d.a(iVar3, 0.5f);
        this.f2315d.a(iVar4, 0.5f);
        this.f2315d.a(iVar, -0.5f);
        this.f2315d.a(iVar2, -0.5f);
        this.f2313b = -f2;
        return this;
    }

    boolean b() {
        i iVar = this.f2312a;
        return iVar != null && (iVar.f2351g == i.a.UNRESTRICTED || this.f2313b >= 0.0f);
    }

    boolean b(i iVar) {
        return this.f2315d.a(iVar);
    }

    public b c(i iVar, int i2) {
        a aVar;
        float f2;
        if (i2 < 0) {
            this.f2313b = i2 * (-1);
            aVar = this.f2315d;
            f2 = 1.0f;
        } else {
            this.f2313b = i2;
            aVar = this.f2315d;
            f2 = -1.0f;
        }
        aVar.a(iVar, f2);
        return this;
    }

    i c(i iVar) {
        return this.f2315d.a((boolean[]) null, iVar);
    }

    public boolean c() {
        return this.f2312a == null && this.f2313b == 0.0f && this.f2315d.f2301a == 0;
    }

    @Override // b.f.a.e.a
    public void clear() {
        this.f2315d.a();
        this.f2312a = null;
        this.f2313b = 0.0f;
    }

    public void d() {
        this.f2312a = null;
        this.f2315d.a();
        this.f2313b = 0.0f;
        this.f2316e = false;
    }

    void d(i iVar) {
        i iVar2 = this.f2312a;
        if (iVar2 != null) {
            this.f2315d.a(iVar2, -1.0f);
            this.f2312a = null;
        }
        float fA = this.f2315d.a(iVar, true) * (-1.0f);
        this.f2312a = iVar;
        if (fA == 1.0f) {
            return;
        }
        this.f2313b /= fA;
        this.f2315d.a(fA);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.lang.String e() {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.b.e():java.lang.String");
    }

    @Override // b.f.a.e.a
    public i getKey() {
        return this.f2312a;
    }

    public String toString() {
        return e();
    }
}
