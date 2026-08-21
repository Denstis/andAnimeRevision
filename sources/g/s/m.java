package g.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class m extends l {
    public static final String a(String str, String str2, String str3, boolean z) {
        g.p.b.f.b(str, "receiver$0");
        g.p.b.f.b(str2, "oldValue");
        g.p.b.f.b(str3, "newValue");
        return g.r.g.a(n.b(str, new String[]{str2}, z, 0, 4, (Object) null), str3, null, null, 0, null, null, 62, null);
    }

    public static /* synthetic */ String a(String str, String str2, String str3, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return a(str, str2, str3, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(java.lang.CharSequence r4) {
        /*
            java.lang.String r0 = "receiver$0"
            g.p.b.f.b(r4, r0)
            int r0 = r4.length()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L3e
            g.q.d r0 = g.s.n.b(r4)
            boolean r3 = r0 instanceof java.util.Collection
            if (r3 == 0) goto L20
            r3 = r0
            java.util.Collection r3 = (java.util.Collection) r3
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L20
        L1e:
            r4 = 1
            goto L3c
        L20:
            java.util.Iterator r0 = r0.iterator()
        L24:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L1e
            r3 = r0
            g.m.y r3 = (g.m.y) r3
            int r3 = r3.a()
            char r3 = r4.charAt(r3)
            boolean r3 = g.s.a.a(r3)
            if (r3 != 0) goto L24
            r4 = 0
        L3c:
            if (r4 == 0) goto L3f
        L3e:
            r1 = 1
        L3f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: g.s.m.a(java.lang.CharSequence):boolean");
    }

    public static final boolean a(String str, int i2, String str2, int i3, int i4, boolean z) {
        g.p.b.f.b(str, "receiver$0");
        g.p.b.f.b(str2, "other");
        return !z ? str.regionMatches(i2, str2, i3, i4) : str.regionMatches(z, i2, str2, i3, i4);
    }
}
