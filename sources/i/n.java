package i;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
final class n implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f5023b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s f5024c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f5025d;

    class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            n nVar = n.this;
            if (nVar.f5025d) {
                throw new IOException("closed");
            }
            return (int) Math.min(nVar.f5023b.f4994c, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            n.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            n nVar = n.this;
            if (nVar.f5025d) {
                throw new IOException("closed");
            }
            c cVar = nVar.f5023b;
            if (cVar.f4994c == 0 && nVar.f5024c.a(cVar, 8192L) == -1) {
                return -1;
            }
            return n.this.f5023b.readByte() & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) throws IOException {
            if (n.this.f5025d) {
                throw new IOException("closed");
            }
            u.a(bArr.length, i2, i3);
            n nVar = n.this;
            c cVar = nVar.f5023b;
            if (cVar.f4994c == 0 && nVar.f5024c.a(cVar, 8192L) == -1) {
                return -1;
            }
            return n.this.f5023b.a(bArr, i2, i3);
        }

        public String toString() {
            return n.this + ".inputStream()";
        }
    }

    n(s sVar) {
        if (sVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f5024c = sVar;
    }

    @Override // i.e
    public long a(byte b2) {
        return a(b2, 0L, Long.MAX_VALUE);
    }

    public long a(byte b2, long j2, long j3) {
        if (this.f5025d) {
            throw new IllegalStateException("closed");
        }
        if (j2 < 0 || j3 < j2) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j2), Long.valueOf(j3)));
        }
        while (j2 < j3) {
            long jA = this.f5023b.a(b2, j2, j3);
            if (jA != -1) {
                return jA;
            }
            c cVar = this.f5023b;
            long j4 = cVar.f4994c;
            if (j4 >= j3 || this.f5024c.a(cVar, 8192L) == -1) {
                break;
            }
            j2 = Math.max(j2, j4);
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
        if (this.f5025d) {
            throw new IllegalStateException("closed");
        }
        c cVar2 = this.f5023b;
        if (cVar2.f4994c == 0 && this.f5024c.a(cVar2, 8192L) == -1) {
            return -1L;
        }
        return this.f5023b.a(cVar, Math.min(j2, this.f5023b.f4994c));
    }

    @Override // i.e
    public long a(r rVar) {
        c cVar;
        if (rVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j2 = 0;
        while (true) {
            long jA = this.f5024c.a(this.f5023b, 8192L);
            cVar = this.f5023b;
            if (jA == -1) {
                break;
            }
            long jM = cVar.m();
            if (jM > 0) {
                j2 += jM;
                rVar.b(this.f5023b, jM);
            }
        }
        if (cVar.s() <= 0) {
            return j2;
        }
        long jS = j2 + this.f5023b.s();
        c cVar2 = this.f5023b;
        rVar.b(cVar2, cVar2.s());
        return jS;
    }

    @Override // i.e, i.d
    public c a() {
        return this.f5023b;
    }

    @Override // i.e
    public String a(Charset charset) {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.f5023b.a(this.f5024c);
        return this.f5023b.a(charset);
    }

    @Override // i.e
    public boolean a(long j2) {
        c cVar;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
        if (this.f5025d) {
            throw new IllegalStateException("closed");
        }
        do {
            cVar = this.f5023b;
            if (cVar.f4994c >= j2) {
                return true;
            }
        } while (this.f5024c.a(cVar, 8192L) != -1);
        return false;
    }

    @Override // i.e
    public boolean a(long j2, f fVar) {
        return a(j2, fVar, 0, fVar.e());
    }

    public boolean a(long j2, f fVar, int i2, int i3) {
        if (this.f5025d) {
            throw new IllegalStateException("closed");
        }
        if (j2 < 0 || i2 < 0 || i3 < 0 || fVar.e() - i2 < i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            long j3 = ((long) i4) + j2;
            if (!a(1 + j3) || this.f5023b.h(j3) != fVar.a(i2 + i4)) {
                return false;
            }
        }
        return true;
    }

    @Override // i.e
    public f b(long j2) throws EOFException {
        e(j2);
        return this.f5023b.b(j2);
    }

    @Override // i.s
    public t b() {
        return this.f5024c.b();
    }

    @Override // i.e
    public String c(long j2) throws EOFException {
        if (j2 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j2);
        }
        long j3 = j2 == Long.MAX_VALUE ? Long.MAX_VALUE : j2 + 1;
        long jA = a((byte) 10, 0L, j3);
        if (jA != -1) {
            return this.f5023b.j(jA);
        }
        if (j3 < Long.MAX_VALUE && a(j3) && this.f5023b.h(j3 - 1) == 13 && a(1 + j3) && this.f5023b.h(j3) == 10) {
            return this.f5023b.j(j3);
        }
        c cVar = new c();
        c cVar2 = this.f5023b;
        cVar2.a(cVar, 0L, Math.min(32L, cVar2.s()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f5023b.s(), j2) + " content=" + cVar.p().b() + (char) 8230);
    }

    @Override // i.e
    public boolean c() {
        if (this.f5025d) {
            throw new IllegalStateException("closed");
        }
        return this.f5023b.c() && this.f5024c.a(this.f5023b, 8192L) == -1;
    }

    @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f5025d) {
            return;
        }
        this.f5025d = true;
        this.f5024c.close();
        this.f5023b.l();
    }

    @Override // i.e
    public String d() {
        return c(Long.MAX_VALUE);
    }

    @Override // i.e
    public byte[] d(long j2) throws EOFException {
        e(j2);
        return this.f5023b.d(j2);
    }

    @Override // i.e
    public int e() throws EOFException {
        e(4L);
        return this.f5023b.e();
    }

    @Override // i.e
    public void e(long j2) throws EOFException {
        if (!a(j2)) {
            throw new EOFException();
        }
    }

    @Override // i.e
    public short f() throws EOFException {
        e(2L);
        return this.f5023b.f();
    }

    @Override // i.e
    public long g() throws EOFException {
        byte bH;
        e(1L);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (!a(i3)) {
                break;
            }
            bH = this.f5023b.h(i2);
            if ((bH < 48 || bH > 57) && ((bH < 97 || bH > 102) && (bH < 65 || bH > 70))) {
                break;
            }
            i2 = i3;
        }
        if (i2 == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bH)));
        }
        return this.f5023b.g();
    }

    @Override // i.e
    public InputStream h() {
        return new a();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f5025d;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        c cVar = this.f5023b;
        if (cVar.f4994c == 0 && this.f5024c.a(cVar, 8192L) == -1) {
            return -1;
        }
        return this.f5023b.read(byteBuffer);
    }

    @Override // i.e
    public byte readByte() throws EOFException {
        e(1L);
        return this.f5023b.readByte();
    }

    @Override // i.e
    public void readFully(byte[] bArr) throws EOFException {
        try {
            e(bArr.length);
            this.f5023b.readFully(bArr);
        } catch (EOFException e2) {
            int i2 = 0;
            while (true) {
                c cVar = this.f5023b;
                long j2 = cVar.f4994c;
                if (j2 <= 0) {
                    throw e2;
                }
                int iA = cVar.a(bArr, i2, (int) j2);
                if (iA == -1) {
                    throw new AssertionError();
                }
                i2 += iA;
            }
        }
    }

    @Override // i.e
    public int readInt() throws EOFException {
        e(4L);
        return this.f5023b.readInt();
    }

    @Override // i.e
    public short readShort() throws EOFException {
        e(2L);
        return this.f5023b.readShort();
    }

    @Override // i.e
    public void skip(long j2) throws EOFException {
        if (this.f5025d) {
            throw new IllegalStateException("closed");
        }
        while (j2 > 0) {
            c cVar = this.f5023b;
            if (cVar.f4994c == 0 && this.f5024c.a(cVar, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j2, this.f5023b.s());
            this.f5023b.skip(jMin);
            j2 -= jMin;
        }
    }

    public String toString() {
        return "buffer(" + this.f5024c + ")";
    }
}
