package i;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class f implements Serializable, Comparable<f> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final char[] f4997e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final f f4998f = a(new byte[0]);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final byte[] f4999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    transient int f5000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient String f5001d;

    f(byte[] bArr) {
        this.f4999b = bArr;
    }

    private static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: " + c2);
            }
        }
        return (c2 - c3) + 10;
    }

    static int a(String str, int i2) {
        int length = str.length();
        int iCharCount = 0;
        int i3 = 0;
        while (iCharCount < length) {
            if (i3 == i2) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i3++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }

    public static f a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) ((a(str.charAt(i3)) << 4) + a(str.charAt(i3 + 1)));
        }
        return a(bArr);
    }

    public static f a(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    private f b(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.f4999b));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    public static f c(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        f fVar = new f(str.getBytes(u.f5042a));
        fVar.f5001d = str;
        return fVar;
    }

    public byte a(int i2) {
        return this.f4999b[i2];
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(f fVar) {
        int iE = e();
        int iE2 = fVar.e();
        int iMin = Math.min(iE, iE2);
        for (int i2 = 0; i2 < iMin; i2++) {
            int iA = a(i2) & 255;
            int iA2 = fVar.a(i2) & 255;
            if (iA != iA2) {
                return iA < iA2 ? -1 : 1;
            }
        }
        if (iE == iE2) {
            return 0;
        }
        return iE < iE2 ? -1 : 1;
    }

    public f a(int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.f4999b;
        if (i3 > bArr.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f4999b.length + ")");
        }
        int i4 = i3 - i2;
        if (i4 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i2 == 0 && i3 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(this.f4999b, i2, bArr2, 0, i4);
        return new f(bArr2);
    }

    public String a() {
        return b.a(this.f4999b);
    }

    void a(c cVar) {
        byte[] bArr = this.f4999b;
        cVar.write(bArr, 0, bArr.length);
    }

    public boolean a(int i2, f fVar, int i3, int i4) {
        return fVar.a(i3, this.f4999b, i2, i4);
    }

    public boolean a(int i2, byte[] bArr, int i3, int i4) {
        if (i2 >= 0) {
            byte[] bArr2 = this.f4999b;
            if (i2 <= bArr2.length - i4 && i3 >= 0 && i3 <= bArr.length - i4 && u.a(bArr2, i2, bArr, i3, i4)) {
                return true;
            }
        }
        return false;
    }

    public String b() {
        byte[] bArr = this.f4999b;
        char[] cArr = new char[bArr.length * 2];
        int i2 = 0;
        for (byte b2 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = f4997e;
            cArr[i2] = cArr2[(b2 >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public final boolean b(f fVar) {
        return a(0, fVar, 0, fVar.e());
    }

    public f c() {
        return b("SHA-1");
    }

    public f d() {
        return b("SHA-256");
    }

    public int e() {
        return this.f4999b.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            int iE = fVar.e();
            byte[] bArr = this.f4999b;
            if (iE == bArr.length && fVar.a(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public f f() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f4999b;
            if (i2 >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i2];
            if (b2 >= 65 && b2 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i2] = (byte) (b2 + 32);
                for (int i3 = i2 + 1; i3 < bArr2.length; i3++) {
                    byte b3 = bArr2[i3];
                    if (b3 >= 65 && b3 <= 90) {
                        bArr2[i3] = (byte) (b3 + 32);
                    }
                }
                return new f(bArr2);
            }
            i2++;
        }
    }

    public byte[] g() {
        return (byte[]) this.f4999b.clone();
    }

    public String h() {
        String str = this.f5001d;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f4999b, u.f5042a);
        this.f5001d = str2;
        return str2;
    }

    public int hashCode() {
        int i2 = this.f5000c;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Arrays.hashCode(this.f4999b);
        this.f5000c = iHashCode;
        return iHashCode;
    }

    public String toString() {
        StringBuilder sb;
        StringBuilder sb2;
        if (this.f4999b.length == 0) {
            return "[size=0]";
        }
        String strH = h();
        int iA = a(strH, 64);
        if (iA == -1) {
            if (this.f4999b.length <= 64) {
                sb2 = new StringBuilder();
                sb2.append("[hex=");
                sb2.append(b());
                sb2.append("]");
            } else {
                sb2 = new StringBuilder();
                sb2.append("[size=");
                sb2.append(this.f4999b.length);
                sb2.append(" hex=");
                sb2.append(a(0, 64).b());
                sb2.append("…]");
            }
            return sb2.toString();
        }
        String strReplace = strH.substring(0, iA).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iA < strH.length()) {
            sb = new StringBuilder();
            sb.append("[size=");
            sb.append(this.f4999b.length);
            sb.append(" text=");
            sb.append(strReplace);
            sb.append("…]");
        } else {
            sb = new StringBuilder();
            sb.append("[text=");
            sb.append(strReplace);
            sb.append("]");
        }
        return sb.toString();
    }
}
