package i;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class c implements e, d, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f4992d = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    o f4993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f4994c;

    class a extends OutputStream {
        a() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        public String toString() {
            return c.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i2) {
            c.this.writeByte((int) ((byte) i2));
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) {
            c.this.write(bArr, i2, i3);
        }
    }

    class b extends InputStream {
        b() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(c.this.f4994c, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            c cVar = c.this;
            if (cVar.f4994c > 0) {
                return cVar.readByte() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            return c.this.a(bArr, i2, i3);
        }

        public String toString() {
            return c.this + ".inputStream()";
        }
    }

    public int a(byte[] bArr, int i2, int i3) {
        u.a(bArr.length, i2, i3);
        o oVar = this.f4993b;
        if (oVar == null) {
            return -1;
        }
        int iMin = Math.min(i3, oVar.f5029c - oVar.f5028b);
        System.arraycopy(oVar.f5027a, oVar.f5028b, bArr, i2, iMin);
        oVar.f5028b += iMin;
        this.f4994c -= (long) iMin;
        if (oVar.f5028b == oVar.f5029c) {
            this.f4993b = oVar.b();
            p.a(oVar);
        }
        return iMin;
    }

    @Override // i.e
    public long a(byte b2) {
        return a(b2, 0L, Long.MAX_VALUE);
    }

    public long a(byte b2, long j2, long j3) {
        o oVar;
        long j4 = 0;
        if (j2 < 0 || j3 < j2) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f4994c), Long.valueOf(j2), Long.valueOf(j3)));
        }
        long j5 = this.f4994c;
        if (j3 <= j5) {
            j5 = j3;
        }
        if (j2 == j5 || (oVar = this.f4993b) == null) {
            return -1L;
        }
        long j6 = this.f4994c;
        if (j6 - j2 >= j2) {
            while (true) {
                j6 = j4;
                j4 = ((long) (oVar.f5029c - oVar.f5028b)) + j6;
                if (j4 >= j2) {
                    break;
                }
                oVar = oVar.f5032f;
            }
        } else {
            while (j6 > j2) {
                oVar = oVar.f5033g;
                j6 -= (long) (oVar.f5029c - oVar.f5028b);
            }
        }
        long j7 = j2;
        while (j6 < j5) {
            byte[] bArr = oVar.f5027a;
            int iMin = (int) Math.min(oVar.f5029c, (((long) oVar.f5028b) + j5) - j6);
            for (int i2 = (int) ((((long) oVar.f5028b) + j7) - j6); i2 < iMin; i2++) {
                if (bArr[i2] == b2) {
                    return ((long) (i2 - oVar.f5028b)) + j6;
                }
            }
            j7 = ((long) (oVar.f5029c - oVar.f5028b)) + j6;
            oVar = oVar.f5032f;
            j6 = j7;
        }
        return -1L;
    }

    @Override // i.s
    public long a(c cVar, long j2) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        long j3 = this.f4994c;
        if (j3 == 0) {
            return -1L;
        }
        if (j2 > j3) {
            j2 = j3;
        }
        cVar.b(this, j2);
        return j2;
    }

    @Override // i.e
    public long a(r rVar) {
        long j2 = this.f4994c;
        if (j2 > 0) {
            rVar.b(this, j2);
        }
        return j2;
    }

    public long a(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j2 = 0;
        while (true) {
            long jA = sVar.a(this, 8192L);
            if (jA == -1) {
                return j2;
            }
            j2 += jA;
        }
    }

    @Override // i.e, i.d
    public c a() {
        return this;
    }

    public c a(c cVar, long j2, long j3) {
        if (cVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        u.a(this.f4994c, j2, j3);
        if (j3 == 0) {
            return this;
        }
        cVar.f4994c += j3;
        o oVar = this.f4993b;
        while (true) {
            int i2 = oVar.f5029c;
            int i3 = oVar.f5028b;
            if (j2 < i2 - i3) {
                break;
            }
            j2 -= (long) (i2 - i3);
            oVar = oVar.f5032f;
        }
        while (j3 > 0) {
            o oVarC = oVar.c();
            oVarC.f5028b = (int) (((long) oVarC.f5028b) + j2);
            oVarC.f5029c = Math.min(oVarC.f5028b + ((int) j3), oVarC.f5029c);
            o oVar2 = cVar.f4993b;
            if (oVar2 == null) {
                oVarC.f5033g = oVarC;
                oVarC.f5032f = oVarC;
                cVar.f4993b = oVarC;
            } else {
                oVar2.f5033g.a(oVarC);
            }
            j3 -= (long) (oVarC.f5029c - oVarC.f5028b);
            oVar = oVar.f5032f;
            j2 = 0;
        }
        return this;
    }

    @Override // i.d
    public c a(f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        fVar.a(this);
        return this;
    }

    @Override // i.d
    public c a(String str) {
        a(str, 0, str.length());
        return this;
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1095)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1049)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:117)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public c a(String str, int i2, int i3) {
        int i4;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i2);
        }
        if (i3 < i2) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
        }
        if (i3 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
        }
        while (i2 < i3) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                o oVarB = b(1);
                byte[] bArr = oVarB.f5027a;
                int i5 = oVarB.f5029c - i2;
                int iMin = Math.min(i3, 8192 - i5);
                int i6 = i2 + 1;
                bArr[i2 + i5] = (byte) cCharAt;
                while (i6 < iMin) {
                    char cCharAt2 = str.charAt(i6);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    bArr[i6 + i5] = (byte) cCharAt2;
                    i6++;
                }
                int i7 = oVarB.f5029c;
                int i8 = (i5 + i6) - i7;
                oVarB.f5029c = i7 + i8;
                this.f4994c += (long) i8;
                i2 = i6;
            } else {
                if (cCharAt < 2048) {
                    i4 = (cCharAt >> 6) | PsExtractor.AUDIO_STREAM;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    writeByte((cCharAt >> '\f') | 224);
                    i4 = ((cCharAt >> 6) & 63) | 128;
                } else {
                    int i9 = i2 + 1;
                    char cCharAt3 = i9 < i3 ? str.charAt(i9) : (char) 0;
                    if (cCharAt > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        writeByte(63);
                        i2 = i9;
                    } else {
                        int i10 = (((cCharAt & 10239) << 10) | (9215 & cCharAt3)) + C.DEFAULT_BUFFER_SEGMENT_SIZE;
                        writeByte((i10 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                        writeByte(((i10 >> 12) & 63) | 128);
                        writeByte(((i10 >> 6) & 63) | 128);
                        writeByte((i10 & 63) | 128);
                        i2 += 2;
                    }
                }
                writeByte(i4);
                writeByte((cCharAt & '?') | 128);
                i2++;
            }
        }
        return this;
    }

    public c a(String str, int i2, int i3, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i2 < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i2);
        }
        if (i3 < i2) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
        }
        if (i3 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
        }
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (charset.equals(u.f5042a)) {
            a(str, i2, i3);
            return this;
        }
        byte[] bytes = str.substring(i2, i3).getBytes(charset);
        write(bytes, 0, bytes.length);
        return this;
    }

    @Override // i.d
    public /* bridge */ /* synthetic */ d a(f fVar) {
        a(fVar);
        return this;
    }

    @Override // i.d
    public /* bridge */ /* synthetic */ d a(String str) {
        a(str);
        return this;
    }

    public f a(int i2) {
        return i2 == 0 ? f.f4998f : new q(this, i2);
    }

    public String a(long j2, Charset charset) {
        u.a(this.f4994c, 0L, j2);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j2 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j2);
        }
        if (j2 == 0) {
            return "";
        }
        o oVar = this.f4993b;
        int i2 = oVar.f5028b;
        if (((long) i2) + j2 > oVar.f5029c) {
            return new String(d(j2), charset);
        }
        String str = new String(oVar.f5027a, i2, (int) j2, charset);
        oVar.f5028b = (int) (((long) oVar.f5028b) + j2);
        this.f4994c -= j2;
        if (oVar.f5028b == oVar.f5029c) {
            this.f4993b = oVar.b();
            p.a(oVar);
        }
        return str;
    }

    @Override // i.e
    public String a(Charset charset) {
        try {
            return a(this.f4994c, charset);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // i.e
    public boolean a(long j2) {
        return this.f4994c >= j2;
    }

    @Override // i.e
    public boolean a(long j2, f fVar) {
        return a(j2, fVar, 0, fVar.e());
    }

    public boolean a(long j2, f fVar, int i2, int i3) {
        if (j2 < 0 || i2 < 0 || i3 < 0 || this.f4994c - j2 < i3 || fVar.e() - i2 < i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (h(((long) i4) + j2) != fVar.a(i2 + i4)) {
                return false;
            }
        }
        return true;
    }

    @Override // i.e
    public f b(long j2) {
        return new f(d(j2));
    }

    o b(int i2) {
        if (i2 < 1 || i2 > 8192) {
            throw new IllegalArgumentException();
        }
        o oVar = this.f4993b;
        if (oVar == null) {
            this.f4993b = p.a();
            o oVar2 = this.f4993b;
            oVar2.f5033g = oVar2;
            oVar2.f5032f = oVar2;
            return oVar2;
        }
        o oVar3 = oVar.f5033g;
        if (oVar3.f5029c + i2 <= 8192 && oVar3.f5031e) {
            return oVar3;
        }
        o oVarA = p.a();
        oVar3.a(oVarA);
        return oVarA;
    }

    @Override // i.s
    public t b() {
        return t.f5038d;
    }

    @Override // i.r
    public void b(c cVar, long j2) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        u.a(cVar.f4994c, 0L, j2);
        while (j2 > 0) {
            o oVar = cVar.f4993b;
            if (j2 < oVar.f5029c - oVar.f5028b) {
                o oVar2 = this.f4993b;
                o oVar3 = oVar2 != null ? oVar2.f5033g : null;
                if (oVar3 != null && oVar3.f5031e) {
                    if ((((long) oVar3.f5029c) + j2) - ((long) (oVar3.f5030d ? 0 : oVar3.f5028b)) <= 8192) {
                        cVar.f4993b.a(oVar3, (int) j2);
                        cVar.f4994c -= j2;
                        this.f4994c += j2;
                        return;
                    }
                }
                cVar.f4993b = cVar.f4993b.a((int) j2);
            }
            o oVar4 = cVar.f4993b;
            long j3 = oVar4.f5029c - oVar4.f5028b;
            cVar.f4993b = oVar4.b();
            o oVar5 = this.f4993b;
            if (oVar5 == null) {
                this.f4993b = oVar4;
                o oVar6 = this.f4993b;
                oVar6.f5033g = oVar6;
                oVar6.f5032f = oVar6;
            } else {
                oVar5.f5033g.a(oVar4);
                oVar4.a();
            }
            cVar.f4994c -= j3;
            this.f4994c += j3;
            j2 -= j3;
        }
    }

    public c c(int i2) {
        int i3;
        int i4;
        if (i2 >= 128) {
            if (i2 < 2048) {
                i4 = (i2 >> 6) | PsExtractor.AUDIO_STREAM;
            } else {
                if (i2 < 65536) {
                    if (i2 < 55296 || i2 > 57343) {
                        i3 = (i2 >> 12) | 224;
                    } else {
                        writeByte(63);
                    }
                } else {
                    if (i2 > 1114111) {
                        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i2));
                    }
                    writeByte((i2 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                    i3 = ((i2 >> 12) & 63) | 128;
                }
                writeByte(i3);
                i4 = ((i2 >> 6) & 63) | 128;
            }
            writeByte(i4);
            i2 = (i2 & 63) | 128;
            writeByte(i2);
        } else {
            writeByte(i2);
        }
        return this;
    }

    @Override // i.e
    public String c(long j2) throws EOFException {
        if (j2 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j2);
        }
        long j3 = j2 != Long.MAX_VALUE ? j2 + 1 : Long.MAX_VALUE;
        long jA = a((byte) 10, 0L, j3);
        if (jA != -1) {
            return j(jA);
        }
        if (j3 < s() && h(j3 - 1) == 13 && h(j3) == 10) {
            return j(j3);
        }
        c cVar = new c();
        a(cVar, 0L, Math.min(32L, s()));
        throw new EOFException("\\n not found: limit=" + Math.min(s(), j2) + " content=" + cVar.p().b() + (char) 8230);
    }

    @Override // i.e
    public boolean c() {
        return this.f4994c == 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public c m8clone() {
        c cVar = new c();
        if (this.f4994c == 0) {
            return cVar;
        }
        cVar.f4993b = this.f4993b.c();
        o oVar = cVar.f4993b;
        oVar.f5033g = oVar;
        oVar.f5032f = oVar;
        o oVar2 = this.f4993b;
        while (true) {
            oVar2 = oVar2.f5032f;
            if (oVar2 == this.f4993b) {
                cVar.f4994c = this.f4994c;
                return cVar;
            }
            cVar.f4993b.f5033g.a(oVar2.c());
        }
    }

    @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // i.e
    public String d() {
        return c(Long.MAX_VALUE);
    }

    @Override // i.e
    public byte[] d(long j2) throws EOFException {
        u.a(this.f4994c, 0L, j2);
        if (j2 <= 2147483647L) {
            byte[] bArr = new byte[(int) j2];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j2);
    }

    @Override // i.e
    public int e() {
        return u.a(readInt());
    }

    @Override // i.e
    public void e(long j2) throws EOFException {
        if (this.f4994c < j2) {
            throw new EOFException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j2 = this.f4994c;
        if (j2 != cVar.f4994c) {
            return false;
        }
        long j3 = 0;
        if (j2 == 0) {
            return true;
        }
        o oVar = this.f4993b;
        o oVar2 = cVar.f4993b;
        int i2 = oVar.f5028b;
        int i3 = oVar2.f5028b;
        while (j3 < this.f4994c) {
            long jMin = Math.min(oVar.f5029c - i2, oVar2.f5029c - i3);
            int i4 = i3;
            int i5 = i2;
            int i6 = 0;
            while (i6 < jMin) {
                int i7 = i5 + 1;
                int i8 = i4 + 1;
                if (oVar.f5027a[i5] != oVar2.f5027a[i4]) {
                    return false;
                }
                i6++;
                i5 = i7;
                i4 = i8;
            }
            if (i5 == oVar.f5029c) {
                oVar = oVar.f5032f;
                i2 = oVar.f5028b;
            } else {
                i2 = i5;
            }
            if (i4 == oVar2.f5029c) {
                oVar2 = oVar2.f5032f;
                i3 = oVar2.f5028b;
            } else {
                i3 = i4;
            }
            j3 += jMin;
        }
        return true;
    }

    @Override // i.d
    public c f(long j2) {
        if (j2 == 0) {
            writeByte(48);
            return this;
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j2)) / 4) + 1;
        o oVarB = b(iNumberOfTrailingZeros);
        byte[] bArr = oVarB.f5027a;
        int i2 = oVarB.f5029c;
        for (int i3 = (i2 + iNumberOfTrailingZeros) - 1; i3 >= i2; i3--) {
            bArr[i3] = f4992d[(int) (15 & j2)];
            j2 >>>= 4;
        }
        oVarB.f5029c += iNumberOfTrailingZeros;
        this.f4994c += (long) iNumberOfTrailingZeros;
        return this;
    }

    @Override // i.d
    public /* bridge */ /* synthetic */ d f(long j2) {
        f(j2);
        return this;
    }

    @Override // i.e
    public short f() {
        return u.a(readShort());
    }

    @Override // i.d, i.r, java.io.Flushable
    public void flush() {
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a3 A[EDGE_INSN: B:45:0x00a3->B:38:0x00a3 BREAK  A[LOOP:0: B:5:0x000b->B:47:?], SYNTHETIC] */
    @Override // i.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long g() {
        /*
            r15 = this;
            long r0 = r15.f4994c
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Laa
            r0 = 0
            r4 = r2
            r1 = 0
        Lb:
            i.o r6 = r15.f4993b
            byte[] r7 = r6.f5027a
            int r8 = r6.f5028b
            int r9 = r6.f5029c
        L13:
            if (r8 >= r9) goto L8f
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L3a
        L22:
            r11 = 97
            if (r10 < r11) goto L2f
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2f
            int r11 = r10 + (-97)
        L2c:
            int r11 = r11 + 10
            goto L3a
        L2f:
            r11 = 65
            if (r10 < r11) goto L70
            r11 = 70
            if (r10 > r11) goto L70
            int r11 = r10 + (-65)
            goto L2c
        L3a:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L4a
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r1 = r1 + 1
            goto L13
        L4a:
            i.c r0 = new i.c
            r0.<init>()
            r0.f(r4)
            r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.q()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L70:
            if (r1 == 0) goto L74
            r0 = 1
            goto L8f
        L74:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8f:
            if (r8 != r9) goto L9b
            i.o r7 = r6.b()
            r15.f4993b = r7
            i.p.a(r6)
            goto L9d
        L9b:
            r6.f5028b = r8
        L9d:
            if (r0 != 0) goto La3
            i.o r6 = r15.f4993b
            if (r6 != 0) goto Lb
        La3:
            long r2 = r15.f4994c
            long r0 = (long) r1
            long r2 = r2 - r0
            r15.f4994c = r2
            return r4
        Laa:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            goto Lb3
        Lb2:
            throw r0
        Lb3:
            goto Lb2
        */
        throw new UnsupportedOperationException("Method not decompiled: i.c.g():long");
    }

    @Override // i.d
    public c g(long j2) {
        if (j2 == 0) {
            writeByte(48);
            return this;
        }
        boolean z = false;
        int i2 = 1;
        if (j2 < 0) {
            j2 = -j2;
            if (j2 < 0) {
                a("-9223372036854775808");
                return this;
            }
            z = true;
        }
        if (j2 >= 100000000) {
            i2 = j2 < 1000000000000L ? j2 < 10000000000L ? j2 < C.NANOS_PER_SECOND ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        } else if (j2 >= 10000) {
            i2 = j2 < 1000000 ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8;
        } else if (j2 >= 100) {
            i2 = j2 < 1000 ? 3 : 4;
        } else if (j2 >= 10) {
            i2 = 2;
        }
        if (z) {
            i2++;
        }
        o oVarB = b(i2);
        byte[] bArr = oVarB.f5027a;
        int i3 = oVarB.f5029c + i2;
        while (j2 != 0) {
            i3--;
            bArr[i3] = f4992d[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z) {
            bArr[i3 - 1] = 45;
        }
        oVarB.f5029c += i2;
        this.f4994c += (long) i2;
        return this;
    }

    @Override // i.d
    public /* bridge */ /* synthetic */ d g(long j2) {
        g(j2);
        return this;
    }

    public byte h(long j2) {
        int i2;
        u.a(this.f4994c, j2, 1L);
        long j3 = this.f4994c;
        if (j3 - j2 <= j2) {
            long j4 = j2 - j3;
            o oVar = this.f4993b;
            do {
                oVar = oVar.f5033g;
                int i3 = oVar.f5029c;
                i2 = oVar.f5028b;
                j4 += (long) (i3 - i2);
            } while (j4 < 0);
            return oVar.f5027a[i2 + ((int) j4)];
        }
        o oVar2 = this.f4993b;
        while (true) {
            int i4 = oVar2.f5029c;
            int i5 = oVar2.f5028b;
            long j5 = i4 - i5;
            if (j2 < j5) {
                return oVar2.f5027a[i5 + ((int) j2)];
            }
            j2 -= j5;
            oVar2 = oVar2.f5032f;
        }
    }

    @Override // i.e
    public InputStream h() {
        return new b();
    }

    public int hashCode() {
        o oVar = this.f4993b;
        if (oVar == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = oVar.f5029c;
            for (int i4 = oVar.f5028b; i4 < i3; i4++) {
                i2 = (i2 * 31) + oVar.f5027a[i4];
            }
            oVar = oVar.f5032f;
        } while (oVar != this.f4993b);
        return i2;
    }

    @Override // i.d
    public c i() {
        return this;
    }

    @Override // i.d
    public /* bridge */ /* synthetic */ d i() {
        i();
        return this;
    }

    public String i(long j2) {
        return a(j2, u.f5042a);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.lang.String j(long r7) throws java.io.EOFException {
        /*
            r6 = this;
            r0 = 1
            r2 = 0
            int r4 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r4 <= 0) goto L1c
            long r2 = r7 - r0
            byte r4 = r6.h(r2)
            r5 = 13
            if (r4 != r5) goto L1c
            java.lang.String r7 = r6.i(r2)
            r0 = 2
        L18:
            r6.skip(r0)
            return r7
        L1c:
            java.lang.String r7 = r6.i(r7)
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: i.c.j(long):java.lang.String");
    }

    public void l() {
        try {
            skip(this.f4994c);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public long m() {
        long j2 = this.f4994c;
        if (j2 == 0) {
            return 0L;
        }
        o oVar = this.f4993b.f5033g;
        int i2 = oVar.f5029c;
        return (i2 >= 8192 || !oVar.f5031e) ? j2 : j2 - ((long) (i2 - oVar.f5028b));
    }

    public OutputStream n() {
        return new a();
    }

    public byte[] o() {
        try {
            return d(this.f4994c);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public f p() {
        return new f(o());
    }

    public String q() {
        try {
            return a(this.f4994c, u.f5042a);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public int r() throws EOFException {
        int i2;
        int i3;
        int i4;
        if (this.f4994c == 0) {
            throw new EOFException();
        }
        byte bH = h(0L);
        if ((bH & 128) == 0) {
            i2 = bH & 127;
            i3 = 1;
            i4 = 0;
        } else if ((bH & 224) == 192) {
            i2 = bH & 31;
            i3 = 2;
            i4 = 128;
        } else if ((bH & 240) == 224) {
            i2 = bH & 15;
            i3 = 3;
            i4 = 2048;
        } else {
            if ((bH & 248) != 240) {
                skip(1L);
                return 65533;
            }
            i2 = bH & 7;
            i3 = 4;
            i4 = C.DEFAULT_BUFFER_SEGMENT_SIZE;
        }
        long j2 = i3;
        if (this.f4994c < j2) {
            throw new EOFException("size < " + i3 + ": " + this.f4994c + " (to read code point prefixed 0x" + Integer.toHexString(bH) + ")");
        }
        for (int i5 = 1; i5 < i3; i5++) {
            long j3 = i5;
            byte bH2 = h(j3);
            if ((bH2 & 192) != 128) {
                skip(j3);
                return 65533;
            }
            i2 = (i2 << 6) | (bH2 & 63);
        }
        skip(j2);
        if (i2 > 1114111) {
            return 65533;
        }
        if ((i2 < 55296 || i2 > 57343) && i2 >= i4) {
            return i2;
        }
        return 65533;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        o oVar = this.f4993b;
        if (oVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), oVar.f5029c - oVar.f5028b);
        byteBuffer.put(oVar.f5027a, oVar.f5028b, iMin);
        oVar.f5028b += iMin;
        this.f4994c -= (long) iMin;
        if (oVar.f5028b == oVar.f5029c) {
            this.f4993b = oVar.b();
            p.a(oVar);
        }
        return iMin;
    }

    @Override // i.e
    public byte readByte() {
        long j2 = this.f4994c;
        if (j2 == 0) {
            throw new IllegalStateException("size == 0");
        }
        o oVar = this.f4993b;
        int i2 = oVar.f5028b;
        int i3 = oVar.f5029c;
        int i4 = i2 + 1;
        byte b2 = oVar.f5027a[i2];
        this.f4994c = j2 - 1;
        if (i4 == i3) {
            this.f4993b = oVar.b();
            p.a(oVar);
        } else {
            oVar.f5028b = i4;
        }
        return b2;
    }

    @Override // i.e
    public void readFully(byte[] bArr) throws EOFException {
        int i2 = 0;
        while (i2 < bArr.length) {
            int iA = a(bArr, i2, bArr.length - i2);
            if (iA == -1) {
                throw new EOFException();
            }
            i2 += iA;
        }
    }

    @Override // i.e
    public int readInt() {
        long j2 = this.f4994c;
        if (j2 < 4) {
            throw new IllegalStateException("size < 4: " + this.f4994c);
        }
        o oVar = this.f4993b;
        int i2 = oVar.f5028b;
        int i3 = oVar.f5029c;
        if (i3 - i2 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = oVar.f5027a;
        int i4 = i2 + 1;
        int i5 = i4 + 1;
        int i6 = ((bArr[i2] & 255) << 24) | ((bArr[i4] & 255) << 16);
        int i7 = i5 + 1;
        int i8 = i6 | ((bArr[i5] & 255) << 8);
        int i9 = i7 + 1;
        int i10 = i8 | (bArr[i7] & 255);
        this.f4994c = j2 - 4;
        if (i9 == i3) {
            this.f4993b = oVar.b();
            p.a(oVar);
        } else {
            oVar.f5028b = i9;
        }
        return i10;
    }

    @Override // i.e
    public short readShort() {
        long j2 = this.f4994c;
        if (j2 < 2) {
            throw new IllegalStateException("size < 2: " + this.f4994c);
        }
        o oVar = this.f4993b;
        int i2 = oVar.f5028b;
        int i3 = oVar.f5029c;
        if (i3 - i2 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = oVar.f5027a;
        int i4 = i2 + 1;
        int i5 = i4 + 1;
        int i6 = ((bArr[i2] & 255) << 8) | (bArr[i4] & 255);
        this.f4994c = j2 - 2;
        if (i5 == i3) {
            this.f4993b = oVar.b();
            p.a(oVar);
        } else {
            oVar.f5028b = i5;
        }
        return (short) i6;
    }

    public long s() {
        return this.f4994c;
    }

    @Override // i.e
    public void skip(long j2) throws EOFException {
        while (j2 > 0) {
            if (this.f4993b == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j2, r0.f5029c - r0.f5028b);
            long j3 = iMin;
            this.f4994c -= j3;
            j2 -= j3;
            o oVar = this.f4993b;
            oVar.f5028b += iMin;
            if (oVar.f5028b == oVar.f5029c) {
                this.f4993b = oVar.b();
                p.a(oVar);
            }
        }
    }

    public f t() {
        long j2 = this.f4994c;
        if (j2 <= 2147483647L) {
            return a((int) j2);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f4994c);
    }

    public String toString() {
        return t().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i2 = iRemaining;
        while (i2 > 0) {
            o oVarB = b(1);
            int iMin = Math.min(i2, 8192 - oVarB.f5029c);
            byteBuffer.get(oVarB.f5027a, oVarB.f5029c, iMin);
            i2 -= iMin;
            oVarB.f5029c += iMin;
        }
        this.f4994c += (long) iRemaining;
        return iRemaining;
    }

    @Override // i.d
    public c write(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        write(bArr, 0, bArr.length);
        return this;
    }

    @Override // i.d
    public c write(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j2 = i3;
        u.a(bArr.length, i2, j2);
        int i4 = i3 + i2;
        while (i2 < i4) {
            o oVarB = b(1);
            int iMin = Math.min(i4 - i2, 8192 - oVarB.f5029c);
            System.arraycopy(bArr, i2, oVarB.f5027a, oVarB.f5029c, iMin);
            i2 += iMin;
            oVarB.f5029c += iMin;
        }
        this.f4994c += j2;
        return this;
    }

    @Override // i.d
    public /* bridge */ /* synthetic */ d write(byte[] bArr) {
        write(bArr);
        return this;
    }

    @Override // i.d
    public /* bridge */ /* synthetic */ d write(byte[] bArr, int i2, int i3) {
        write(bArr, i2, i3);
        return this;
    }

    @Override // i.d
    public c writeByte(int i2) {
        o oVarB = b(1);
        byte[] bArr = oVarB.f5027a;
        int i3 = oVarB.f5029c;
        oVarB.f5029c = i3 + 1;
        bArr[i3] = (byte) i2;
        this.f4994c++;
        return this;
    }

    @Override // i.d
    public /* bridge */ /* synthetic */ d writeByte(int i2) {
        writeByte(i2);
        return this;
    }

    @Override // i.d
    public c writeInt(int i2) {
        o oVarB = b(4);
        byte[] bArr = oVarB.f5027a;
        int i3 = oVarB.f5029c;
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >>> 24) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i2 >>> 16) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i2 >>> 8) & 255);
        bArr[i6] = (byte) (i2 & 255);
        oVarB.f5029c = i6 + 1;
        this.f4994c += 4;
        return this;
    }

    @Override // i.d
    public /* bridge */ /* synthetic */ d writeInt(int i2) {
        writeInt(i2);
        return this;
    }

    @Override // i.d
    public c writeShort(int i2) {
        o oVarB = b(2);
        byte[] bArr = oVarB.f5027a;
        int i3 = oVarB.f5029c;
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >>> 8) & 255);
        bArr[i4] = (byte) (i2 & 255);
        oVarB.f5029c = i4 + 1;
        this.f4994c += 2;
        return this;
    }

    @Override // i.d
    public /* bridge */ /* synthetic */ d writeShort(int i2) {
        writeShort(i2);
        return this;
    }
}
