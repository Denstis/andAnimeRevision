package h.h0.i;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final i.f f4689a = i.f.c("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f4690b = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String[] f4691c = new String[64];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String[] f4692d = new String[256];

    static {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = f4692d;
            if (i3 >= strArr.length) {
                break;
            }
            strArr[i3] = h.h0.c.a("%8s", Integer.toBinaryString(i3)).replace(' ', '0');
            i3++;
        }
        String[] strArr2 = f4691c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i4 : iArr) {
            f4691c[i4 | 8] = f4691c[i4] + "|PADDED";
        }
        String[] strArr3 = f4691c;
        strArr3[4] = "END_HEADERS";
        strArr3[32] = "PRIORITY";
        strArr3[36] = "END_HEADERS|PRIORITY";
        for (int i5 : new int[]{4, 32, 36}) {
            for (int i6 : iArr) {
                int i7 = i6 | i5;
                f4691c[i7] = f4691c[i6] + '|' + f4691c[i5];
                f4691c[i7 | 8] = f4691c[i6] + '|' + f4691c[i5] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr4 = f4691c;
            if (i2 >= strArr4.length) {
                return;
            }
            if (strArr4[i2] == null) {
                strArr4[i2] = f4692d[i2];
            }
            i2++;
        }
    }

    private e() {
    }

    static IllegalArgumentException a(String str, Object... objArr) {
        throw new IllegalArgumentException(h.h0.c.a(str, objArr));
    }

    static String a(byte b2, byte b3) {
        if (b3 == 0) {
            return "";
        }
        if (b2 != 2 && b2 != 3) {
            if (b2 == 4 || b2 == 6) {
                return b3 == 1 ? "ACK" : f4692d[b3];
            }
            if (b2 != 7 && b2 != 8) {
                String[] strArr = f4691c;
                String str = b3 < strArr.length ? strArr[b3] : f4692d[b3];
                return (b2 != 5 || (b3 & 4) == 0) ? (b2 != 0 || (b3 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f4692d[b3];
    }

    static String a(boolean z, int i2, int i3, byte b2, byte b3) {
        String[] strArr = f4690b;
        String strA = b2 < strArr.length ? strArr[b2] : h.h0.c.a("0x%02x", Byte.valueOf(b2));
        String strA2 = a(b2, b3);
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i2);
        objArr[2] = Integer.valueOf(i3);
        objArr[3] = strA;
        objArr[4] = strA2;
        return h.h0.c.a("%s 0x%08x %5d %-13s %s", objArr);
    }

    static IOException b(String str, Object... objArr) throws IOException {
        throw new IOException(h.h0.c.a(str, objArr));
    }
}
