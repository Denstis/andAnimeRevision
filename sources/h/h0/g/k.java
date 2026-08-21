package h.h0.g;

import h.y;
import java.net.ProtocolException;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f4625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4627c;

    public k(y yVar, int i2, String str) {
        this.f4625a = yVar;
        this.f4626b = i2;
        this.f4627c = str;
    }

    public static k a(String str) throws ProtocolException {
        y yVar;
        String strSubstring;
        int i2 = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                yVar = y.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                yVar = y.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            yVar = y.HTTP_1_0;
            i2 = 4;
        }
        int i3 = i2 + 3;
        if (str.length() < i3) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int i4 = Integer.parseInt(str.substring(i2, i3));
            if (str.length() <= i3) {
                strSubstring = "";
            } else {
                if (str.charAt(i3) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                strSubstring = str.substring(i2 + 4);
            }
            return new k(yVar, i4, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4625a == y.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f4626b);
        if (this.f4627c != null) {
            sb.append(' ');
            sb.append(this.f4627c);
        }
        return sb.toString();
    }
}
