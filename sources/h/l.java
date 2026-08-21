package h;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Pattern f4868j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Pattern f4869k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern l = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f4872c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4873d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f4875f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f4876g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f4877h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f4878i;

    private l(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f4870a = str;
        this.f4871b = str2;
        this.f4872c = j2;
        this.f4873d = str3;
        this.f4874e = str4;
        this.f4875f = z;
        this.f4876g = z2;
        this.f4878i = z3;
        this.f4877h = z4;
    }

    private static int a(String str, int i2, int i3, boolean z) {
        while (i2 < i3) {
            char cCharAt = str.charAt(i2);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z)) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    private static long a(String str, int i2, int i3) {
        int iA = a(str, i2, i3, false);
        Matcher matcher = m.matcher(str);
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int iIndexOf = -1;
        int i7 = -1;
        int i8 = -1;
        while (iA < i3) {
            int iA2 = a(str, iA + 1, i3, true);
            matcher.region(iA, iA2);
            if (i5 == -1 && matcher.usePattern(m).matches()) {
                int i9 = Integer.parseInt(matcher.group(1));
                int i10 = Integer.parseInt(matcher.group(2));
                i8 = Integer.parseInt(matcher.group(3));
                i7 = i10;
                i5 = i9;
            } else if (i6 == -1 && matcher.usePattern(l).matches()) {
                i6 = Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1 && matcher.usePattern(f4869k).matches()) {
                iIndexOf = f4869k.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
            } else if (i4 == -1 && matcher.usePattern(f4868j).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
            }
            iA = a(str, iA2 + 1, i3, false);
        }
        if (i4 >= 70 && i4 <= 99) {
            i4 += 1900;
        }
        if (i4 >= 0 && i4 <= 69) {
            i4 += 2000;
        }
        if (i4 < 1601) {
            throw new IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new IllegalArgumentException();
        }
        if (i6 < 1 || i6 > 31) {
            throw new IllegalArgumentException();
        }
        if (i5 < 0 || i5 > 23) {
            throw new IllegalArgumentException();
        }
        if (i7 < 0 || i7 > 59) {
            throw new IllegalArgumentException();
        }
        if (i8 < 0 || i8 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(h.h0.c.n);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i4);
        gregorianCalendar.set(2, iIndexOf - 1);
        gregorianCalendar.set(5, i6);
        gregorianCalendar.set(11, i5);
        gregorianCalendar.set(12, i7);
        gregorianCalendar.set(13, i8);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00c7 A[PHI: r0
      0x00c7: PHI (r0v15 long) = (r0v2 long), (r0v5 long) binds: [B:42:0x00c5, B:53:0x00e8] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static h.l a(long r24, h.t r26, java.lang.String r27) {
        /*
            Method dump skipped, instruction units count: 328
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h.l.a(long, h.t, java.lang.String):h.l");
    }

    public static l a(t tVar, String str) {
        return a(System.currentTimeMillis(), tVar, str);
    }

    private static String a(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String strA = h.h0.c.a(str);
        if (strA != null) {
            return strA;
        }
        throw new IllegalArgumentException();
    }

    public static List<l> a(t tVar, s sVar) {
        List<String> listB = sVar.b("Set-Cookie");
        int size = listB.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            l lVarA = a(tVar, listB.get(i2));
            if (lVarA != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(lVarA);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    private static boolean a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !h.h0.c.d(str);
    }

    private static long b(String str) {
        try {
            long j2 = Long.parseLong(str);
            if (j2 <= 0) {
                return Long.MIN_VALUE;
            }
            return j2;
        } catch (NumberFormatException e2) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e2;
        }
    }

    public String a() {
        return this.f4870a;
    }

    String a(boolean z) {
        String strA;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4870a);
        sb.append('=');
        sb.append(this.f4871b);
        if (this.f4877h) {
            if (this.f4872c == Long.MIN_VALUE) {
                strA = "; max-age=0";
            } else {
                sb.append("; expires=");
                strA = h.h0.g.d.a(new Date(this.f4872c));
            }
            sb.append(strA);
        }
        if (!this.f4878i) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.f4873d);
        }
        sb.append("; path=");
        sb.append(this.f4874e);
        if (this.f4875f) {
            sb.append("; secure");
        }
        if (this.f4876g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public String b() {
        return this.f4871b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return lVar.f4870a.equals(this.f4870a) && lVar.f4871b.equals(this.f4871b) && lVar.f4873d.equals(this.f4873d) && lVar.f4874e.equals(this.f4874e) && lVar.f4872c == this.f4872c && lVar.f4875f == this.f4875f && lVar.f4876g == this.f4876g && lVar.f4877h == this.f4877h && lVar.f4878i == this.f4878i;
    }

    public int hashCode() {
        int iHashCode = (((((((527 + this.f4870a.hashCode()) * 31) + this.f4871b.hashCode()) * 31) + this.f4873d.hashCode()) * 31) + this.f4874e.hashCode()) * 31;
        long j2 = this.f4872c;
        return ((((((((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (!this.f4875f ? 1 : 0)) * 31) + (!this.f4876g ? 1 : 0)) * 31) + (!this.f4877h ? 1 : 0)) * 31) + (!this.f4878i ? 1 : 0);
    }

    public String toString() {
        return a(false);
    }
}
