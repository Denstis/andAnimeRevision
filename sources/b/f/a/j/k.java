package b.f.a.j;

import b.f.a.j.f;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean[] f2429a = new boolean[3];

    /* JADX WARN: Code restructure failed: missing block: B:105:0x01c4, code lost:
    
        if (r6 != false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01c6, code lost:
    
        r4.a(r2, 1, r17.l());
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01cf, code lost:
    
        r4.a(r2, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01e0, code lost:
    
        if (r6 != false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e9, code lost:
    
        if (r6 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f4, code lost:
    
        r7 = r17.s();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x010f, code lost:
    
        if (r6 != false) goto L57;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f8 A[PHI: r7
      0x00f8: PHI (r7v36 int) = (r7v29 int), (r7v37 int), (r7v37 int) binds: [B:58:0x00f4, B:33:0x0080, B:27:0x0070] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void a(int r16, b.f.a.j.f r17) {
        /*
            Method dump skipped, instruction units count: 810
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.j.k.a(int, b.f.a.j.f):void");
    }

    static void a(f fVar, int i2, int i3) {
        int i4 = i2 * 2;
        int i5 = i4 + 1;
        fVar.A[i4].d().f2433f = fVar.k().s.d();
        fVar.A[i4].d().f2434g = i3;
        fVar.A[i4].d().f2441b = 1;
        fVar.A[i5].d().f2433f = fVar.A[i4].d();
        fVar.A[i5].d().f2434g = fVar.d(i2);
        fVar.A[i5].d().f2441b = 1;
    }

    static void a(g gVar, b.f.a.e eVar, f fVar) {
        if (gVar.C[0] != f.b.WRAP_CONTENT && fVar.C[0] == f.b.MATCH_PARENT) {
            int i2 = fVar.s.f2376e;
            int iS = gVar.s() - fVar.u.f2376e;
            e eVar2 = fVar.s;
            eVar2.f2380i = eVar.a(eVar2);
            e eVar3 = fVar.u;
            eVar3.f2380i = eVar.a(eVar3);
            eVar.a(fVar.s.f2380i, i2);
            eVar.a(fVar.u.f2380i, iS);
            fVar.f2399a = 2;
            fVar.a(i2, iS);
        }
        if (gVar.C[1] == f.b.WRAP_CONTENT || fVar.C[1] != f.b.MATCH_PARENT) {
            return;
        }
        int i3 = fVar.t.f2376e;
        int i4 = gVar.i() - fVar.v.f2376e;
        e eVar4 = fVar.t;
        eVar4.f2380i = eVar.a(eVar4);
        e eVar5 = fVar.v;
        eVar5.f2380i = eVar.a(eVar5);
        eVar.a(fVar.t.f2380i, i3);
        eVar.a(fVar.v.f2380i, i4);
        if (fVar.Q > 0 || fVar.r() == 8) {
            e eVar6 = fVar.w;
            eVar6.f2380i = eVar.a(eVar6);
            eVar.a(fVar.w.f2380i, fVar.Q + i3);
        }
        fVar.f2400b = 2;
        fVar.e(i3, i4);
    }

    private static boolean a(f fVar, int i2) {
        f.b[] bVarArr = fVar.C;
        if (bVarArr[i2] != f.b.MATCH_CONSTRAINT) {
            return false;
        }
        if (fVar.G != 0.0f) {
            f.b bVar = bVarArr[i2 != 0 ? (char) 0 : (char) 1];
            f.b bVar2 = f.b.MATCH_CONSTRAINT;
            return false;
        }
        if (i2 == 0) {
            if (fVar.f2403e != 0 || fVar.f2406h != 0 || fVar.f2407i != 0) {
                return false;
            }
        } else if (fVar.f2404f != 0 || fVar.f2409k != 0 || fVar.l != 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034 A[PHI: r11 r12
      0x0034: PHI (r11v14 boolean) = (r11v2 boolean), (r11v17 boolean) binds: [B:25:0x0048, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE]
      0x0034: PHI (r12v8 boolean) = (r12v2 boolean), (r12v11 boolean) binds: [B:25:0x0048, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036 A[PHI: r11 r12
      0x0036: PHI (r11v4 boolean) = (r11v2 boolean), (r11v17 boolean) binds: [B:25:0x0048, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE]
      0x0036: PHI (r12v4 boolean) = (r12v2 boolean), (r12v11 boolean) binds: [B:25:0x0048, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0319 A[PHI: r3
      0x0319: PHI (r3v20 float) = (r3v16 float), (r3v14 float) binds: [B:201:0x0371, B:191:0x0316] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean a(b.f.a.j.g r24, b.f.a.e r25, int r26, int r27, b.f.a.j.d r28) {
        /*
            Method dump skipped, instruction units count: 900
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.j.k.a(b.f.a.j.g, b.f.a.e, int, int, b.f.a.j.d):boolean");
    }
}
