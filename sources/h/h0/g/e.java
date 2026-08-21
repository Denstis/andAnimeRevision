package h.h0.g;

import h.c0;
import h.l;
import h.m;
import h.s;
import h.t;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    static {
        Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");
    }

    public static int a(String str, int i2) {
        try {
            long j2 = Long.parseLong(str);
            if (j2 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j2 < 0) {
                return 0;
            }
            return (int) j2;
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static int a(String str, int i2, String str2) {
        while (i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            i2++;
        }
        return i2;
    }

    public static long a(c0 c0Var) {
        return a(c0Var.n());
    }

    public static long a(s sVar) {
        return a(sVar.a("Content-Length"));
    }

    private static long a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static void a(m mVar, t tVar, s sVar) {
        if (mVar == m.f4879a) {
            return;
        }
        List<l> listA = l.a(tVar, sVar);
        if (listA.isEmpty()) {
            return;
        }
        mVar.a(tVar, listA);
    }

    public static int b(String str, int i2) {
        char cCharAt;
        while (i2 < str.length() && ((cCharAt = str.charAt(i2)) == ' ' || cCharAt == '\t')) {
            i2++;
        }
        return i2;
    }

    public static boolean b(c0 c0Var) {
        if (c0Var.t().e().equals("HEAD")) {
            return false;
        }
        int iL = c0Var.l();
        return (((iL >= 100 && iL < 200) || iL == 204 || iL == 304) && a(c0Var) == -1 && !"chunked".equalsIgnoreCase(c0Var.b("Transfer-Encoding"))) ? false : true;
    }
}
