package g.n;

import com.google.android.exoplayer2.C;
import g.j;
import g.p.b.f;
import g.s.n;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4384a;

    /* JADX WARN: Removed duplicated region for block: B:27:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0140  */
    static {
        /*
            Method dump skipped, instruction units count: 328
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.n.b.<clinit>():void");
    }

    private static final int a() {
        String property = System.getProperty("java.specification.version");
        if (property == null) {
            return 65542;
        }
        int iA = n.a((CharSequence) property, '.', 0, false, 6, (Object) null);
        if (iA < 0) {
            try {
                return Integer.parseInt(property) * C.DEFAULT_BUFFER_SEGMENT_SIZE;
            } catch (NumberFormatException unused) {
                return 65542;
            }
        }
        int i2 = iA + 1;
        int iA2 = n.a((CharSequence) property, '.', i2, false, 4, (Object) null);
        if (iA2 < 0) {
            iA2 = property.length();
        }
        if (property == null) {
            throw new j("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring = property.substring(0, iA);
        f.a((Object) strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        if (property == null) {
            throw new j("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring2 = property.substring(i2, iA2);
        f.a((Object) strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        try {
            return (Integer.parseInt(strSubstring) * C.DEFAULT_BUFFER_SEGMENT_SIZE) + Integer.parseInt(strSubstring2);
        } catch (NumberFormatException unused2) {
            return 65542;
        }
    }
}
