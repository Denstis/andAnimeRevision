package h;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final char[] f4902j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f4903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f4906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f4907e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<String> f4908f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<String> f4909g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f4910h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f4911i;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f4912a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f4915d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        List<String> f4918g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f4919h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f4913b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f4914c = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f4916e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final List<String> f4917f = new ArrayList();

        /* JADX INFO: renamed from: h.t$a$a, reason: collision with other inner class name */
        enum EnumC0192a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public a() {
            this.f4917f.add("");
        }

        private static String a(String str, int i2, int i3) {
            return h.h0.c.a(t.a(str, i2, i3, false));
        }

        private void a(String str, int i2, int i3, boolean z, boolean z2) {
            String strA = t.a(str, i2, i3, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (f(strA)) {
                return;
            }
            if (g(strA)) {
                d();
                return;
            }
            if (this.f4917f.get(r11.size() - 1).isEmpty()) {
                this.f4917f.set(r11.size() - 1, strA);
            } else {
                this.f4917f.add(strA);
            }
            if (z) {
                this.f4917f.add("");
            }
        }

        private static int b(String str, int i2, int i3) {
            int i4;
            try {
                i4 = Integer.parseInt(t.a(str, i2, i3, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (i4 <= 0 || i4 > 65535) {
                return -1;
            }
            return i4;
        }

        private static int c(String str, int i2, int i3) {
            while (i2 < i3) {
                char cCharAt = str.charAt(i2);
                if (cCharAt == ':') {
                    return i2;
                }
                if (cCharAt == '[') {
                    do {
                        i2++;
                        if (i2 < i3) {
                        }
                    } while (str.charAt(i2) != ']');
                }
                i2++;
            }
            return i3;
        }

        private void d() {
            if (!this.f4917f.remove(r0.size() - 1).isEmpty() || this.f4917f.isEmpty()) {
                this.f4917f.add("");
            } else {
                this.f4917f.set(r0.size() - 1, "");
            }
        }

        private void d(String str, int i2, int i3) {
            if (i2 == i3) {
                return;
            }
            char cCharAt = str.charAt(i2);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.f4917f.clear();
                this.f4917f.add("");
                i2++;
            } else {
                List<String> list = this.f4917f;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i4 = i2;
                if (i4 >= i3) {
                    return;
                }
                i2 = h.h0.c.a(str, i4, i3, "/\\");
                boolean z = i2 < i3;
                a(str, i4, i2, z, true);
                if (z) {
                    i2++;
                }
            }
        }

        private static int e(String str, int i2, int i3) {
            if (i3 - i2 < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i2);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i2++;
                    if (i2 >= i3) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i2;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private static int f(String str, int i2, int i3) {
            int i4 = 0;
            while (i2 < i3) {
                char cCharAt = str.charAt(i2);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i4++;
                i2++;
            }
            return i4;
        }

        private boolean f(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean g(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        EnumC0192a a(t tVar, String str) {
            int iA;
            int i2;
            int i3;
            int iB = h.h0.c.b(str, 0, str.length());
            int iC = h.h0.c.c(str, iB, str.length());
            if (e(str, iB, iC) != -1) {
                if (str.regionMatches(true, iB, "https:", 0, 6)) {
                    this.f4912a = "https";
                    iB += 6;
                } else {
                    if (!str.regionMatches(true, iB, "http:", 0, 5)) {
                        return EnumC0192a.UNSUPPORTED_SCHEME;
                    }
                    this.f4912a = "http";
                    iB += 5;
                }
            } else {
                if (tVar == null) {
                    return EnumC0192a.MISSING_SCHEME;
                }
                this.f4912a = tVar.f4903a;
            }
            int iF = f(str, iB, iC);
            char c2 = '?';
            char c3 = '#';
            if (iF >= 2 || tVar == null || !tVar.f4903a.equals(this.f4912a)) {
                int i4 = iB + iF;
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    iA = h.h0.c.a(str, i4, iC, "@/\\?#");
                    byte bCharAt = iA != iC ? str.charAt(iA) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c3 || bCharAt == 47 || bCharAt == 92 || bCharAt == c2) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z) {
                            i3 = iA;
                            this.f4914c += "%40" + t.a(str, i4, i3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        } else {
                            int iA2 = h.h0.c.a(str, i4, iA, ':');
                            i3 = iA;
                            String strA = t.a(str, i4, iA2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z2) {
                                strA = this.f4913b + "%40" + strA;
                            }
                            this.f4913b = strA;
                            if (iA2 != i3) {
                                this.f4914c = t.a(str, iA2 + 1, i3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z = true;
                            }
                            z2 = true;
                        }
                        i4 = i3 + 1;
                    }
                    c2 = '?';
                    c3 = '#';
                }
                i2 = iA;
                int iC2 = c(str, i4, i2);
                int i5 = iC2 + 1;
                this.f4915d = a(str, i4, iC2);
                if (i5 < i2) {
                    this.f4916e = b(str, i5, i2);
                    if (this.f4916e == -1) {
                        return EnumC0192a.INVALID_PORT;
                    }
                } else {
                    this.f4916e = t.c(this.f4912a);
                }
                if (this.f4915d == null) {
                    return EnumC0192a.INVALID_HOST;
                }
            } else {
                this.f4913b = tVar.f();
                this.f4914c = tVar.b();
                this.f4915d = tVar.f4906d;
                this.f4916e = tVar.f4907e;
                this.f4917f.clear();
                this.f4917f.addAll(tVar.d());
                if (iB == iC || str.charAt(iB) == '#') {
                    a(tVar.e());
                }
                i2 = iB;
            }
            int iA3 = h.h0.c.a(str, i2, iC, "?#");
            d(str, i2, iA3);
            if (iA3 < iC && str.charAt(iA3) == '?') {
                int iA4 = h.h0.c.a(str, iA3, iC, '#');
                this.f4918g = t.e(t.a(str, iA3 + 1, iA4, " \"'<>#", true, false, true, true, null));
                iA3 = iA4;
            }
            if (iA3 < iC && str.charAt(iA3) == '#') {
                this.f4919h = t.a(str, 1 + iA3, iC, "", true, false, false, false, null);
            }
            return EnumC0192a.SUCCESS;
        }

        public a a(int i2) {
            if (i2 > 0 && i2 <= 65535) {
                this.f4916e = i2;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i2);
        }

        public a a(String str) {
            this.f4918g = str != null ? t.e(t.a(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public a a(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.f4918g == null) {
                this.f4918g = new ArrayList();
            }
            this.f4918g.add(t.a(str, " \"'<>#&=", true, false, true, true));
            this.f4918g.add(str2 != null ? t.a(str2, " \"'<>#&=", true, false, true, true) : null);
            return this;
        }

        public t a() {
            if (this.f4912a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f4915d != null) {
                return new t(this);
            }
            throw new IllegalStateException("host == null");
        }

        int b() {
            int i2 = this.f4916e;
            return i2 != -1 ? i2 : t.c(this.f4912a);
        }

        public a b(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strA = a(str, 0, str.length());
            if (strA != null) {
                this.f4915d = strA;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        public a b(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.f4918g == null) {
                this.f4918g = new ArrayList();
            }
            this.f4918g.add(t.a(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
            this.f4918g.add(str2 != null ? t.a(str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true) : null);
            return this;
        }

        a c() {
            int size = this.f4917f.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f4917f.set(i2, t.a(this.f4917f.get(i2), "[]", true, true, false, true));
            }
            List<String> list = this.f4918g;
            if (list != null) {
                int size2 = list.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    String str = this.f4918g.get(i3);
                    if (str != null) {
                        this.f4918g.set(i3, t.a(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            String str2 = this.f4919h;
            if (str2 != null) {
                this.f4919h = t.a(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        public a c(String str) {
            if (str == null) {
                throw new NullPointerException("password == null");
            }
            this.f4914c = t.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public a d(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            String str2 = "http";
            if (!str.equalsIgnoreCase("http")) {
                str2 = "https";
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
            }
            this.f4912a = str2;
            return this;
        }

        public a e(String str) {
            if (str == null) {
                throw new NullPointerException("username == null");
            }
            this.f4913b = t.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f4912a);
            sb.append("://");
            if (!this.f4913b.isEmpty() || !this.f4914c.isEmpty()) {
                sb.append(this.f4913b);
                if (!this.f4914c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f4914c);
                }
                sb.append('@');
            }
            if (this.f4915d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f4915d);
                sb.append(']');
            } else {
                sb.append(this.f4915d);
            }
            int iB = b();
            if (iB != t.c(this.f4912a)) {
                sb.append(':');
                sb.append(iB);
            }
            t.b(sb, this.f4917f);
            if (this.f4918g != null) {
                sb.append('?');
                t.a(sb, this.f4918g);
            }
            if (this.f4919h != null) {
                sb.append('#');
                sb.append(this.f4919h);
            }
            return sb.toString();
        }
    }

    t(a aVar) {
        this.f4903a = aVar.f4912a;
        this.f4904b = a(aVar.f4913b, false);
        this.f4905c = a(aVar.f4914c, false);
        this.f4906d = aVar.f4915d;
        this.f4907e = aVar.b();
        this.f4908f = a(aVar.f4917f, false);
        List<String> list = aVar.f4918g;
        this.f4909g = list != null ? a(list, true) : null;
        String str = aVar.f4919h;
        this.f4910h = str != null ? a(str, false) : null;
        this.f4911i = aVar.toString();
    }

    static String a(String str, int i2, int i3, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int iCharCount = i2;
        while (iCharCount < i3) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt == 127 || (iCodePointAt >= 128 && z4)) {
                i.c cVar = new i.c();
                cVar.a(str, i2, iCharCount);
                a(cVar, str, iCharCount, i3, str2, z, z2, z3, z4, charset);
                return cVar.q();
            }
            if (str2.indexOf(iCodePointAt) != -1 || ((iCodePointAt == 37 && (!z || (z2 && !a(str, iCharCount, i3)))) || (iCodePointAt == 43 && z3))) {
                i.c cVar2 = new i.c();
                cVar2.a(str, i2, iCharCount);
                a(cVar2, str, iCharCount, i3, str2, z, z2, z3, z4, charset);
                return cVar2.q();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i2, i3);
    }

    static String a(String str, int i2, int i3, boolean z) {
        for (int i4 = i2; i4 < i3; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                i.c cVar = new i.c();
                cVar.a(str, i2, i4);
                a(cVar, str, i4, i3, z);
                return cVar.q();
            }
        }
        return str.substring(i2, i3);
    }

    static String a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    static String a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4, charset);
    }

    static String a(String str, boolean z) {
        return a(str, 0, str.length(), z);
    }

    private List<String> a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            String str = list.get(i2);
            arrayList.add(str != null ? a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static void a(i.c cVar, String str, int i2, int i3, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        i.c cVar2 = null;
        while (i2 < i3) {
            int iCodePointAt = str.codePointAt(i2);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z3) {
                    cVar.a(z ? "+" : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z4) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z || (z2 && !a(str, i2, i3)))))) {
                    if (cVar2 == null) {
                        cVar2 = new i.c();
                    }
                    if (charset == null || charset.equals(h.h0.c.f4537i)) {
                        cVar2.c(iCodePointAt);
                    } else {
                        cVar2.a(str, i2, Character.charCount(iCodePointAt) + i2, charset);
                    }
                    while (!cVar2.c()) {
                        int i4 = cVar2.readByte() & 255;
                        cVar.writeByte(37);
                        cVar.writeByte((int) f4902j[(i4 >> 4) & 15]);
                        cVar.writeByte((int) f4902j[i4 & 15]);
                    }
                } else {
                    cVar.c(iCodePointAt);
                }
            }
            i2 += Character.charCount(iCodePointAt);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void a(i.c r5, java.lang.String r6, int r7, int r8, boolean r9) {
        /*
        L0:
            if (r7 >= r8) goto L42
            int r0 = r6.codePointAt(r7)
            r1 = 37
            if (r0 != r1) goto L2d
            int r1 = r7 + 2
            if (r1 >= r8) goto L2d
            int r2 = r7 + 1
            char r2 = r6.charAt(r2)
            int r2 = h.h0.c.a(r2)
            char r3 = r6.charAt(r1)
            int r3 = h.h0.c.a(r3)
            r4 = -1
            if (r2 == r4) goto L39
            if (r3 == r4) goto L39
            int r7 = r2 << 4
            int r7 = r7 + r3
            r5.writeByte(r7)
            r7 = r1
            goto L3c
        L2d:
            r1 = 43
            if (r0 != r1) goto L39
            if (r9 == 0) goto L39
            r1 = 32
            r5.writeByte(r1)
            goto L3c
        L39:
            r5.c(r0)
        L3c:
            int r0 = java.lang.Character.charCount(r0)
            int r7 = r7 + r0
            goto L0
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: h.t.a(i.c, java.lang.String, int, int, boolean):void");
    }

    static void a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2 += 2) {
            String str = list.get(i2);
            String str2 = list.get(i2 + 1);
            if (i2 > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    static boolean a(String str, int i2, int i3) {
        int i4 = i2 + 2;
        return i4 < i3 && str.charAt(i2) == '%' && h.h0.c.a(str.charAt(i2 + 1)) != -1 && h.h0.c.a(str.charAt(i4)) != -1;
    }

    static void b(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            sb.append('/');
            sb.append(list.get(i2));
        }
    }

    public static int c(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public static t d(String str) {
        a aVar = new a();
        if (aVar.a((t) null, str) == a.EnumC0192a.SUCCESS) {
            return aVar.a();
        }
        return null;
    }

    static List<String> e(String str) {
        String strSubstring;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 <= str.length()) {
            int iIndexOf = str.indexOf(38, i2);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i2);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i2, iIndexOf));
                strSubstring = null;
            } else {
                arrayList.add(str.substring(i2, iIndexOf2));
                strSubstring = str.substring(iIndexOf2 + 1, iIndexOf);
            }
            arrayList.add(strSubstring);
            i2 = iIndexOf + 1;
        }
        return arrayList;
    }

    public a a(String str) {
        a aVar = new a();
        if (aVar.a(this, str) == a.EnumC0192a.SUCCESS) {
            return aVar;
        }
        return null;
    }

    public String a() {
        if (this.f4910h == null) {
            return null;
        }
        return this.f4911i.substring(this.f4911i.indexOf(35) + 1);
    }

    public t b(String str) {
        a aVarA = a(str);
        if (aVarA != null) {
            return aVarA.a();
        }
        return null;
    }

    public String b() {
        if (this.f4905c.isEmpty()) {
            return "";
        }
        return this.f4911i.substring(this.f4911i.indexOf(58, this.f4903a.length() + 3) + 1, this.f4911i.indexOf(64));
    }

    public String c() {
        int iIndexOf = this.f4911i.indexOf(47, this.f4903a.length() + 3);
        String str = this.f4911i;
        return this.f4911i.substring(iIndexOf, h.h0.c.a(str, iIndexOf, str.length(), "?#"));
    }

    public List<String> d() {
        int iIndexOf = this.f4911i.indexOf(47, this.f4903a.length() + 3);
        String str = this.f4911i;
        int iA = h.h0.c.a(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iA) {
            int i2 = iIndexOf + 1;
            int iA2 = h.h0.c.a(this.f4911i, i2, iA, '/');
            arrayList.add(this.f4911i.substring(i2, iA2));
            iIndexOf = iA2;
        }
        return arrayList;
    }

    public String e() {
        if (this.f4909g == null) {
            return null;
        }
        int iIndexOf = this.f4911i.indexOf(63) + 1;
        String str = this.f4911i;
        return this.f4911i.substring(iIndexOf, h.h0.c.a(str, iIndexOf, str.length(), '#'));
    }

    public boolean equals(Object obj) {
        return (obj instanceof t) && ((t) obj).f4911i.equals(this.f4911i);
    }

    public String f() {
        if (this.f4904b.isEmpty()) {
            return "";
        }
        int length = this.f4903a.length() + 3;
        String str = this.f4911i;
        return this.f4911i.substring(length, h.h0.c.a(str, length, str.length(), ":@"));
    }

    public String g() {
        return this.f4906d;
    }

    public boolean h() {
        return this.f4903a.equals("https");
    }

    public int hashCode() {
        return this.f4911i.hashCode();
    }

    public a i() {
        a aVar = new a();
        aVar.f4912a = this.f4903a;
        aVar.f4913b = f();
        aVar.f4914c = b();
        aVar.f4915d = this.f4906d;
        aVar.f4916e = this.f4907e != c(this.f4903a) ? this.f4907e : -1;
        aVar.f4917f.clear();
        aVar.f4917f.addAll(d());
        aVar.a(e());
        aVar.f4919h = a();
        return aVar;
    }

    public List<String> j() {
        return this.f4908f;
    }

    public int k() {
        return this.f4907e;
    }

    public String l() {
        if (this.f4909g == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        a(sb, this.f4909g);
        return sb.toString();
    }

    public String m() {
        a aVarA = a("/...");
        aVarA.e("");
        aVarA.c("");
        return aVarA.a().toString();
    }

    public String n() {
        return this.f4903a;
    }

    public URI o() {
        a aVarI = i();
        aVarI.c();
        String string = aVarI.toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e2) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e2);
            }
        }
    }

    public String toString() {
        return this.f4911i;
    }
}
