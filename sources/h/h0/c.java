package h.h0;

import com.google.android.exoplayer2.C;
import h.b0;
import h.d0;
import h.t;
import h.v;
import i.e;
import i.f;
import i.s;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f4529a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f4530b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d0 f4531c = d0.a(null, f4529a);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final f f4532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final f f4533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final f f4534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final f f4535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final f f4536h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Charset f4537i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Charset f4538j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Charset f4539k;
    private static final Charset l;
    private static final Charset m;
    public static final TimeZone n;
    public static final Comparator<String> o;
    private static final Pattern p;

    final class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    final class b implements ThreadFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f4540b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f4541c;

        b(String str, boolean z) {
            this.f4540b = str;
            this.f4541c = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f4540b);
            thread.setDaemon(this.f4541c);
            return thread;
        }
    }

    static {
        b0.a((v) null, f4529a);
        f4532d = f.a("efbbbf");
        f4533e = f.a("feff");
        f4534f = f.a("fffe");
        f4535g = f.a("0000ffff");
        f4536h = f.a("ffff0000");
        f4537i = Charset.forName(C.UTF8_NAME);
        Charset.forName("ISO-8859-1");
        f4538j = Charset.forName("UTF-16BE");
        f4539k = Charset.forName("UTF-16LE");
        l = Charset.forName("UTF-32BE");
        m = Charset.forName("UTF-32LE");
        n = TimeZone.getTimeZone("GMT");
        o = new a();
        p = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    public static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    public static int a(String str, int i2, int i3, char c2) {
        while (i2 < i3) {
            if (str.charAt(i2) == c2) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int a(String str, int i2, int i3, String str2) {
        while (i2 < i3) {
            if (str2.indexOf(str.charAt(i2)) != -1) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int a(String str, long j2, TimeUnit timeUnit) {
        if (j2 < 0) {
            throw new IllegalArgumentException(str + " < 0");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        long millis = timeUnit.toMillis(j2);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(str + " too large.");
        }
        if (millis != 0 || j2 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(str + " too small.");
    }

    public static int a(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (comparator.compare(strArr[i2], str) == 0) {
                return i2;
            }
        }
        return -1;
    }

    public static AssertionError a(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException unused) {
        }
        return assertionError;
    }

    public static String a(t tVar, boolean z) {
        String strG;
        if (tVar.g().contains(":")) {
            strG = "[" + tVar.g() + "]";
        } else {
            strG = tVar.g();
        }
        if (!z && tVar.k() == t.c(tVar.n())) {
            return strG;
        }
        return strG + ":" + tVar.k();
    }

    public static String a(String str) {
        if (!str.contains(":")) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (b(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressA = (str.startsWith("[") && str.endsWith("]")) ? a(str, 1, str.length() - 1) : a(str, 0, str.length());
        if (inetAddressA == null) {
            return null;
        }
        byte[] address = inetAddressA.getAddress();
        if (address.length == 16) {
            return a(address);
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + "'");
    }

    public static String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    private static String a(byte[] bArr) {
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (i3 < bArr.length) {
            int i6 = i3;
            while (i6 < 16 && bArr[i6] == 0 && bArr[i6 + 1] == 0) {
                i6 += 2;
            }
            int i7 = i6 - i3;
            if (i7 > i5 && i7 >= 4) {
                i4 = i3;
                i5 = i7;
            }
            i3 = i6 + 2;
        }
        i.c cVar = new i.c();
        while (i2 < bArr.length) {
            if (i2 == i4) {
                cVar.writeByte(58);
                i2 += i5;
                if (i2 == 16) {
                    cVar.writeByte(58);
                }
            } else {
                if (i2 > 0) {
                    cVar.writeByte(58);
                }
                cVar.f(((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255));
                i2 += 2;
            }
        }
        return cVar.q();
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x007c, code lost:
    
        if (r3 == r0.length) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x007e, code lost:
    
        if (r4 != (-1)) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0080, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0081, code lost:
    
        r11 = r3 - r4;
        java.lang.System.arraycopy(r0, r4, r0, r0.length - r11, r11);
        java.util.Arrays.fill(r0, r4, (r0.length - r3) + r4, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0092, code lost:
    
        return java.net.InetAddress.getByAddress(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0099, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.net.InetAddress a(java.lang.String r10, int r11, int r12) {
        /*
            r0 = 16
            byte[] r0 = new byte[r0]
            r1 = -1
            r2 = 0
            r3 = 0
            r4 = -1
            r5 = -1
        L9:
            r6 = 0
            if (r11 >= r12) goto L7b
            int r7 = r0.length
            if (r3 != r7) goto L10
            return r6
        L10:
            int r7 = r11 + 2
            if (r7 > r12) goto L28
            r8 = 2
            java.lang.String r9 = "::"
            boolean r8 = r10.regionMatches(r11, r9, r2, r8)
            if (r8 == 0) goto L28
            if (r4 == r1) goto L20
            return r6
        L20:
            int r3 = r3 + 2
            r4 = r3
            if (r7 != r12) goto L26
            goto L7b
        L26:
            r5 = r7
            goto L4c
        L28:
            if (r3 == 0) goto L4b
            r7 = 1
            java.lang.String r8 = ":"
            boolean r8 = r10.regionMatches(r11, r8, r2, r7)
            if (r8 == 0) goto L36
            int r11 = r11 + 1
            goto L4b
        L36:
            java.lang.String r8 = "."
            boolean r11 = r10.regionMatches(r11, r8, r2, r7)
            if (r11 == 0) goto L4a
            int r11 = r3 + (-2)
            boolean r10 = a(r10, r5, r12, r0, r11)
            if (r10 != 0) goto L47
            return r6
        L47:
            int r3 = r3 + 2
            goto L7b
        L4a:
            return r6
        L4b:
            r5 = r11
        L4c:
            r11 = r5
            r7 = 0
        L4e:
            if (r11 >= r12) goto L61
            char r8 = r10.charAt(r11)
            int r8 = a(r8)
            if (r8 != r1) goto L5b
            goto L61
        L5b:
            int r7 = r7 << 4
            int r7 = r7 + r8
            int r11 = r11 + 1
            goto L4e
        L61:
            int r8 = r11 - r5
            if (r8 == 0) goto L7a
            r9 = 4
            if (r8 <= r9) goto L69
            goto L7a
        L69:
            int r6 = r3 + 1
            int r8 = r7 >>> 8
            r8 = r8 & 255(0xff, float:3.57E-43)
            byte r8 = (byte) r8
            r0[r3] = r8
            int r3 = r6 + 1
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r7 = (byte) r7
            r0[r6] = r7
            goto L9
        L7a:
            return r6
        L7b:
            int r10 = r0.length
            if (r3 == r10) goto L8e
            if (r4 != r1) goto L81
            return r6
        L81:
            int r10 = r0.length
            int r11 = r3 - r4
            int r10 = r10 - r11
            java.lang.System.arraycopy(r0, r4, r0, r10, r11)
            int r10 = r0.length
            int r10 = r10 - r3
            int r10 = r10 + r4
            java.util.Arrays.fill(r0, r4, r10, r2)
        L8e:
            java.net.InetAddress r10 = java.net.InetAddress.getByAddress(r0)     // Catch: java.net.UnknownHostException -> L93
            return r10
        L93:
            java.lang.AssertionError r10 = new java.lang.AssertionError
            r10.<init>()
            goto L9a
        L99:
            throw r10
        L9a:
            goto L99
        */
        throw new UnsupportedOperationException("Method not decompiled: h.h0.c.a(java.lang.String, int, int):java.net.InetAddress");
    }

    public static Charset a(e eVar, Charset charset) {
        if (eVar.a(0L, f4532d)) {
            eVar.skip(f4532d.e());
            return f4537i;
        }
        if (eVar.a(0L, f4533e)) {
            eVar.skip(f4533e.e());
            return f4538j;
        }
        if (eVar.a(0L, f4534f)) {
            eVar.skip(f4534f.e());
            return f4539k;
        }
        if (eVar.a(0L, f4535g)) {
            eVar.skip(f4535g.e());
            return l;
        }
        if (!eVar.a(0L, f4536h)) {
            return charset;
        }
        eVar.skip(f4536h.e());
        return m;
    }

    public static <T> List<T> a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory a(String str, boolean z) {
        return new b(str, z);
    }

    public static void a(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e2) {
                if (!a(e2)) {
                    throw e2;
                }
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused) {
            }
        }
    }

    public static boolean a(s sVar, int i2, TimeUnit timeUnit) {
        try {
            return b(sVar, i2, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private static boolean a(String str, int i2, int i3, byte[] bArr, int i4) {
        int i5 = i4;
        while (i2 < i3) {
            if (i5 == bArr.length) {
                return false;
            }
            if (i5 != i4) {
                if (str.charAt(i2) != '.') {
                    return false;
                }
                i2++;
            }
            int i6 = i2;
            int i7 = 0;
            while (i6 < i3) {
                char cCharAt = str.charAt(i6);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                if ((i7 == 0 && i2 != i6) || (i7 = ((i7 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i6++;
            }
            if (i6 - i2 == 0) {
                return false;
            }
            bArr[i5] = (byte) i7;
            i5++;
            i2 = i6;
        }
        return i5 == i4 + 4;
    }

    public static String[] a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i2]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i2++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] a(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    public static int b(String str, int i2, int i3) {
        while (i2 < i3) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static boolean b(s sVar, int i2, TimeUnit timeUnit) {
        long jNanoTime = System.nanoTime();
        long jC = sVar.b().d() ? sVar.b().c() - jNanoTime : Long.MAX_VALUE;
        sVar.b().a(Math.min(jC, timeUnit.toNanos(i2)) + jNanoTime);
        try {
            i.c cVar = new i.c();
            while (sVar.a(cVar, 8192L) != -1) {
                cVar.l();
            }
            i.t tVarB = sVar.b();
            if (jC == Long.MAX_VALUE) {
                tVarB.a();
            } else {
                tVarB.a(jNanoTime + jC);
            }
            return true;
        } catch (InterruptedIOException unused) {
            i.t tVarB2 = sVar.b();
            if (jC == Long.MAX_VALUE) {
                tVarB2.a();
            } else {
                tVarB2.a(jNanoTime + jC);
            }
            return false;
        } catch (Throwable th) {
            i.t tVarB3 = sVar.b();
            if (jC == Long.MAX_VALUE) {
                tVarB3.a();
            } else {
                tVarB3.a(jNanoTime + jC);
            }
            throw th;
        }
    }

    private static boolean b(String str) {
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static int c(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return i2;
            }
        }
        return -1;
    }

    public static int c(String str, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            char cCharAt = str.charAt(i4);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i4 + 1;
            }
        }
        return i2;
    }

    public static String d(String str, int i2, int i3) {
        int iB = b(str, i2, i3);
        return str.substring(iB, c(str, iB, i3));
    }

    public static boolean d(String str) {
        return p.matcher(str).matches();
    }
}
