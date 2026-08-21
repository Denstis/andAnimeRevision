package okhttp3.internal.publicsuffix;

import h.h0.c;
import h.h0.j.f;
import i.e;
import i.j;
import i.l;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class PublicSuffixDatabase {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f5206e = {42};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f5207f = new String[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f5208g = {"*"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final PublicSuffixDatabase f5209h = new PublicSuffixDatabase();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f5210a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CountDownLatch f5211b = new CountDownLatch(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f5212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f5213d;

    private static String a(byte[] bArr, byte[][] bArr2, int i2) {
        int i3;
        int i4;
        int i5;
        int length = bArr.length;
        int i6 = 0;
        while (i6 < length) {
            int i7 = (i6 + length) / 2;
            while (i7 > -1 && bArr[i7] != 10) {
                i7--;
            }
            int i8 = i7 + 1;
            int i9 = 1;
            while (true) {
                i3 = i8 + i9;
                if (bArr[i3] == 10) {
                    break;
                }
                i9++;
            }
            int i10 = i3 - i8;
            int i11 = i2;
            boolean z = false;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                if (z) {
                    z = false;
                    i4 = 46;
                } else {
                    i4 = bArr2[i11][i12] & 255;
                }
                i5 = i4 - (bArr[i8 + i13] & 255);
                if (i5 == 0) {
                    i13++;
                    i12++;
                    if (i13 == i10) {
                        break;
                    }
                    if (bArr2[i11].length == i12) {
                        if (i11 == bArr2.length - 1) {
                            break;
                        }
                        i11++;
                        z = true;
                        i12 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i5 >= 0) {
                if (i5 <= 0) {
                    int i14 = i10 - i13;
                    int length2 = bArr2[i11].length - i12;
                    while (true) {
                        i11++;
                        if (i11 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i11].length;
                    }
                    if (length2 >= i14) {
                        if (length2 <= i14) {
                            return new String(bArr, i8, i10, c.f4537i);
                        }
                    }
                }
                i6 = i3 + 1;
            }
            length = i8 - 1;
        }
        return null;
    }

    public static PublicSuffixDatabase a() {
        return f5209h;
    }

    private String[] a(String[] strArr) {
        String strA;
        String strA2;
        String strA3;
        if (this.f5210a.get() || !this.f5210a.compareAndSet(false, true)) {
            try {
                this.f5211b.await();
            } catch (InterruptedException unused) {
            }
        } else {
            c();
        }
        synchronized (this) {
            if (this.f5212c == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        byte[][] bArr = new byte[strArr.length][];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            bArr[i2] = strArr[i2].getBytes(c.f4537i);
        }
        int i3 = 0;
        while (true) {
            if (i3 >= bArr.length) {
                strA = null;
                break;
            }
            strA = a(this.f5212c, bArr, i3);
            if (strA != null) {
                break;
            }
            i3++;
        }
        if (bArr.length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i4 = 0; i4 < bArr2.length - 1; i4++) {
                bArr2[i4] = f5206e;
                strA2 = a(this.f5212c, bArr2, i4);
                if (strA2 != null) {
                    break;
                }
            }
            strA2 = null;
        } else {
            strA2 = null;
        }
        if (strA2 != null) {
            for (int i5 = 0; i5 < bArr.length - 1; i5++) {
                strA3 = a(this.f5213d, bArr, i5);
                if (strA3 != null) {
                    break;
                }
            }
            strA3 = null;
        } else {
            strA3 = null;
        }
        if (strA3 != null) {
            return ("!" + strA3).split("\\.");
        }
        if (strA == null && strA2 == null) {
            return f5208g;
        }
        String[] strArrSplit = strA != null ? strA.split("\\.") : f5207f;
        String[] strArrSplit2 = strA2 != null ? strA2.split("\\.") : f5207f;
        return strArrSplit.length > strArrSplit2.length ? strArrSplit : strArrSplit2;
    }

    private void b() {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        e eVarA = l.a(new j(l.a(resourceAsStream)));
        try {
            byte[] bArr = new byte[eVarA.readInt()];
            eVarA.readFully(bArr);
            byte[] bArr2 = new byte[eVarA.readInt()];
            eVarA.readFully(bArr2);
            synchronized (this) {
                this.f5212c = bArr;
                this.f5213d = bArr2;
            }
            this.f5211b.countDown();
        } finally {
            c.a(eVarA);
        }
    }

    private void c() {
        boolean z = false;
        while (true) {
            try {
                try {
                    b();
                    break;
                } catch (InterruptedIOException unused) {
                    z = true;
                } catch (IOException e2) {
                    f.c().a(5, "Failed to read public suffix list", e2);
                    if (z) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public String a(String str) {
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] strArrSplit = IDN.toUnicode(str).split("\\.");
        String[] strArrA = a(strArrSplit);
        if (strArrSplit.length == strArrA.length && strArrA[0].charAt(0) != '!') {
            return null;
        }
        char cCharAt = strArrA[0].charAt(0);
        int length = strArrSplit.length;
        int length2 = strArrA.length;
        if (cCharAt != '!') {
            length2++;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArrSplit2 = str.split("\\.");
        for (int i2 = length - length2; i2 < strArrSplit2.length; i2++) {
            sb.append(strArrSplit2[i2]);
            sb.append('.');
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }
}
