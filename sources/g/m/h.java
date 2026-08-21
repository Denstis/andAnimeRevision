package g.m;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class h extends g {
    public static char a(char[] cArr) {
        g.p.b.f.b(cArr, "receiver$0");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static List<Byte> a(byte[] bArr, g.q.d dVar) {
        g.p.b.f.b(bArr, "receiver$0");
        g.p.b.f.b(dVar, "indices");
        return dVar.isEmpty() ? l.a() : g.a(g.a(bArr, dVar.e().intValue(), dVar.d().intValue() + 1));
    }

    public static final boolean a(byte[] bArr, byte b2) {
        g.p.b.f.b(bArr, "receiver$0");
        return b(bArr, b2) >= 0;
    }

    public static final <T> boolean a(T[] tArr, T t) {
        g.p.b.f.b(tArr, "receiver$0");
        return b(tArr, t) >= 0;
    }

    public static final int b(byte[] bArr, byte b2) {
        g.p.b.f.b(bArr, "receiver$0");
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (b2 == bArr[i2]) {
                return i2;
            }
        }
        return -1;
    }

    public static final <T> int b(T[] tArr, T t) {
        g.p.b.f.b(tArr, "receiver$0");
        int i2 = 0;
        if (t == null) {
            int length = tArr.length;
            while (i2 < length) {
                if (tArr[i2] == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        int length2 = tArr.length;
        while (i2 < length2) {
            if (g.p.b.f.a(t, tArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static final g.q.d b(byte[] bArr) {
        g.p.b.f.b(bArr, "receiver$0");
        return new g.q.d(0, c(bArr));
    }

    public static final int c(byte[] bArr) {
        g.p.b.f.b(bArr, "receiver$0");
        return bArr.length - 1;
    }

    public static final int c(byte[] bArr, byte b2) {
        g.p.b.f.b(bArr, "receiver$0");
        Iterator it = t.a((Iterable) b(bArr)).iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            if (b2 == bArr[iIntValue]) {
                return iIntValue;
            }
        }
        return -1;
    }
}
