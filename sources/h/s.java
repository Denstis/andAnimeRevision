package h;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f4900a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List<String> f4901a = new ArrayList(20);

        private void d(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt <= ' ' || cCharAt >= 127) {
                    throw new IllegalArgumentException(h.h0.c.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i2), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException("value for name " + str + " == null");
            }
            int length2 = str2.length();
            for (int i3 = 0; i3 < length2; i3++) {
                char cCharAt2 = str2.charAt(i3);
                if ((cCharAt2 <= 31 && cCharAt2 != '\t') || cCharAt2 >= 127) {
                    throw new IllegalArgumentException(h.h0.c.a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i3), str, str2));
                }
            }
        }

        a a(String str) {
            int iIndexOf = str.indexOf(":", 1);
            if (iIndexOf != -1) {
                b(str.substring(0, iIndexOf), str.substring(iIndexOf + 1));
                return this;
            }
            if (str.startsWith(":")) {
                b("", str.substring(1));
                return this;
            }
            b("", str);
            return this;
        }

        public a a(String str, String str2) {
            d(str, str2);
            b(str, str2);
            return this;
        }

        public s a() {
            return new s(this);
        }

        public a b(String str) {
            int i2 = 0;
            while (i2 < this.f4901a.size()) {
                if (str.equalsIgnoreCase(this.f4901a.get(i2))) {
                    this.f4901a.remove(i2);
                    this.f4901a.remove(i2);
                    i2 -= 2;
                }
                i2 += 2;
            }
            return this;
        }

        a b(String str, String str2) {
            this.f4901a.add(str);
            this.f4901a.add(str2.trim());
            return this;
        }

        public a c(String str, String str2) {
            d(str, str2);
            b(str);
            b(str, str2);
            return this;
        }
    }

    s(a aVar) {
        List<String> list = aVar.f4901a;
        this.f4900a = (String[]) list.toArray(new String[list.size()]);
    }

    private s(String[] strArr) {
        this.f4900a = strArr;
    }

    public static s a(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException("namesAndValues == null");
        }
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i2 = 0; i2 < strArr2.length; i2++) {
            if (strArr2[i2] == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i2] = strArr2[i2].trim();
        }
        for (int i3 = 0; i3 < strArr2.length; i3 += 2) {
            String str = strArr2[i3];
            String str2 = strArr2[i3 + 1];
            if (str.length() == 0 || str.indexOf(0) != -1 || str2.indexOf(0) != -1) {
                throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
            }
        }
        return new s(strArr2);
    }

    private static String a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public a a() {
        a aVar = new a();
        Collections.addAll(aVar.f4901a, this.f4900a);
        return aVar;
    }

    public String a(int i2) {
        return this.f4900a[i2 * 2];
    }

    public String a(String str) {
        return a(this.f4900a, str);
    }

    public int b() {
        return this.f4900a.length / 2;
    }

    public String b(int i2) {
        return this.f4900a[(i2 * 2) + 1];
    }

    public List<String> b(String str) {
        int iB = b();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < iB; i2++) {
            if (str.equalsIgnoreCase(a(i2))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i2));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public boolean equals(Object obj) {
        return (obj instanceof s) && Arrays.equals(((s) obj).f4900a, this.f4900a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f4900a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int iB = b();
        for (int i2 = 0; i2 < iB; i2++) {
            sb.append(a(i2));
            sb.append(": ");
            sb.append(b(i2));
            sb.append("\n");
        }
        return sb.toString();
    }
}
