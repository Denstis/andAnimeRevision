package com.bumptech.glide.load.p.c;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class j implements ImageHeaderParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final byte[] f3805a = "Exif\u0000\u0000".getBytes(Charset.forName(C.UTF8_NAME));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f3806b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    private static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f3807a;

        a(ByteBuffer byteBuffer) {
            this.f3807a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.p.c.j.c
        public int a() {
            return ((c() << 8) & 65280) | (c() & 255);
        }

        @Override // com.bumptech.glide.load.p.c.j.c
        public int a(byte[] bArr, int i2) {
            int iMin = Math.min(i2, this.f3807a.remaining());
            if (iMin == 0) {
                return -1;
            }
            this.f3807a.get(bArr, 0, iMin);
            return iMin;
        }

        @Override // com.bumptech.glide.load.p.c.j.c
        public short b() {
            return (short) (c() & 255);
        }

        @Override // com.bumptech.glide.load.p.c.j.c
        public int c() {
            if (this.f3807a.remaining() < 1) {
                return -1;
            }
            return this.f3807a.get();
        }

        @Override // com.bumptech.glide.load.p.c.j.c
        public long skip(long j2) {
            int iMin = (int) Math.min(this.f3807a.remaining(), j2);
            ByteBuffer byteBuffer = this.f3807a;
            byteBuffer.position(byteBuffer.position() + iMin);
            return iMin;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f3808a;

        b(byte[] bArr, int i2) {
            this.f3808a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i2);
        }

        private boolean a(int i2, int i3) {
            return this.f3808a.remaining() - i2 >= i3;
        }

        int a() {
            return this.f3808a.remaining();
        }

        short a(int i2) {
            if (a(i2, 2)) {
                return this.f3808a.getShort(i2);
            }
            return (short) -1;
        }

        void a(ByteOrder byteOrder) {
            this.f3808a.order(byteOrder);
        }

        int b(int i2) {
            if (a(i2, 4)) {
                return this.f3808a.getInt(i2);
            }
            return -1;
        }
    }

    private interface c {
        int a();

        int a(byte[] bArr, int i2);

        short b();

        int c();

        long skip(long j2);
    }

    private static final class d implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InputStream f3809a;

        d(InputStream inputStream) {
            this.f3809a = inputStream;
        }

        @Override // com.bumptech.glide.load.p.c.j.c
        public int a() {
            return ((this.f3809a.read() << 8) & 65280) | (this.f3809a.read() & 255);
        }

        @Override // com.bumptech.glide.load.p.c.j.c
        public int a(byte[] bArr, int i2) throws IOException {
            int i3 = i2;
            while (i3 > 0) {
                int i4 = this.f3809a.read(bArr, i2 - i3, i3);
                if (i4 == -1) {
                    break;
                }
                i3 -= i4;
            }
            return i2 - i3;
        }

        @Override // com.bumptech.glide.load.p.c.j.c
        public short b() {
            return (short) (this.f3809a.read() & 255);
        }

        @Override // com.bumptech.glide.load.p.c.j.c
        public int c() {
            return this.f3809a.read();
        }

        @Override // com.bumptech.glide.load.p.c.j.c
        public long skip(long j2) throws IOException {
            if (j2 < 0) {
                return 0L;
            }
            long j3 = j2;
            while (j3 > 0) {
                long jSkip = this.f3809a.skip(j3);
                if (jSkip <= 0) {
                    if (this.f3809a.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j3 -= jSkip;
            }
            return j2 - j3;
        }
    }

    private static int a(int i2, int i3) {
        return i2 + 2 + (i3 * 12);
    }

    private static int a(b bVar) {
        ByteOrder byteOrder;
        StringBuilder sb;
        String str;
        String string;
        short sA = bVar.a(6);
        if (sA != 18761) {
            if (sA != 19789 && Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) sA));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        bVar.a(byteOrder);
        int iB = bVar.b(10) + 6;
        short sA2 = bVar.a(iB);
        for (int i2 = 0; i2 < sA2; i2++) {
            int iA = a(iB, i2);
            short sA3 = bVar.a(iA);
            if (sA3 == 274) {
                short sA4 = bVar.a(iA + 2);
                if (sA4 >= 1 && sA4 <= 12) {
                    int iB2 = bVar.b(iA + 4);
                    if (iB2 >= 0) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got tagIndex=" + i2 + " tagType=" + ((int) sA3) + " formatCode=" + ((int) sA4) + " componentCount=" + iB2);
                        }
                        int i3 = iB2 + f3806b[sA4];
                        if (i3 <= 4) {
                            int i4 = iA + 8;
                            if (i4 >= 0 && i4 <= bVar.a()) {
                                if (i3 >= 0 && i3 + i4 <= bVar.a()) {
                                    return bVar.a(i4);
                                }
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    sb = new StringBuilder();
                                    sb.append("Illegal number of bytes for TI tag data tagType=");
                                    sb.append((int) sA3);
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                string = "Illegal tagValueOffset=" + i4 + " tagType=" + ((int) sA3);
                                Log.d("DfltImageHeaderParser", string);
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            sb = new StringBuilder();
                            str = "Got byte count > 4, not orientation, continuing, formatCode=";
                            sb.append(str);
                            sb.append((int) sA4);
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        string = "Negative tiff component count";
                        Log.d("DfltImageHeaderParser", string);
                    }
                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    sb = new StringBuilder();
                    str = "Got invalid format code = ";
                    sb.append(str);
                    sb.append((int) sA4);
                }
                string = sb.toString();
                Log.d("DfltImageHeaderParser", string);
            }
        }
        return -1;
    }

    private int a(c cVar, com.bumptech.glide.load.n.a0.b bVar) {
        int iA = cVar.a();
        if (!a(iA)) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + iA);
            }
            return -1;
        }
        int iB = b(cVar);
        if (iB == -1) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
            }
            return -1;
        }
        byte[] bArr = (byte[]) bVar.b(iB, byte[].class);
        try {
            return a(cVar, bArr, iB);
        } finally {
            bVar.a(bArr);
        }
    }

    private int a(c cVar, byte[] bArr, int i2) {
        int iA = cVar.a(bArr, i2);
        if (iA == i2) {
            if (a(bArr, i2)) {
                return a(new b(bArr, i2));
            }
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
            }
            return -1;
        }
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i2 + ", actually read: " + iA);
        }
        return -1;
    }

    private ImageHeaderParser.ImageType a(c cVar) {
        int iA = cVar.a();
        if (iA == 65496) {
            return ImageHeaderParser.ImageType.JPEG;
        }
        int iA2 = ((iA << 16) & (-65536)) | (cVar.a() & 65535);
        if (iA2 == -1991225785) {
            cVar.skip(21L);
            return cVar.c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
        }
        if ((iA2 >> 8) == 4671814) {
            return ImageHeaderParser.ImageType.GIF;
        }
        if (iA2 != 1380533830) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        cVar.skip(4L);
        if ((((cVar.a() << 16) & (-65536)) | (cVar.a() & 65535)) != 1464156752) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int iA3 = ((cVar.a() << 16) & (-65536)) | (cVar.a() & 65535);
        if ((iA3 & (-256)) != 1448097792) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int i2 = iA3 & 255;
        if (i2 == 88) {
            cVar.skip(4L);
            return (cVar.c() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
        }
        if (i2 != 76) {
            return ImageHeaderParser.ImageType.WEBP;
        }
        cVar.skip(4L);
        return (cVar.c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
    }

    private static boolean a(int i2) {
        return (i2 & 65496) == 65496 || i2 == 19789 || i2 == 18761;
    }

    private boolean a(byte[] bArr, int i2) {
        boolean z = bArr != null && i2 > f3805a.length;
        if (!z) {
            return z;
        }
        int i3 = 0;
        while (true) {
            byte[] bArr2 = f3805a;
            if (i3 >= bArr2.length) {
                return z;
            }
            if (bArr[i3] != bArr2[i3]) {
                return false;
            }
            i3++;
        }
    }

    private int b(c cVar) {
        short sB;
        int iA;
        long j2;
        long jSkip;
        do {
            short sB2 = cVar.b();
            if (sB2 != 255) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) sB2));
                }
                return -1;
            }
            sB = cVar.b();
            if (sB == 218) {
                return -1;
            }
            if (sB == 217) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            iA = cVar.a() - 2;
            if (sB == 225) {
                return iA;
            }
            j2 = iA;
            jSkip = cVar.skip(j2);
        } while (jSkip == j2);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Unable to skip enough data, type: " + ((int) sB) + ", wanted to skip: " + iA + ", but actually skipped: " + jSkip);
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int a(InputStream inputStream, com.bumptech.glide.load.n.a0.b bVar) {
        c.a.a.t.j.a(inputStream);
        d dVar = new d(inputStream);
        c.a.a.t.j.a(bVar);
        return a(dVar, bVar);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public ImageHeaderParser.ImageType a(InputStream inputStream) {
        c.a.a.t.j.a(inputStream);
        return a(new d(inputStream));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) {
        c.a.a.t.j.a(byteBuffer);
        return a(new a(byteBuffer));
    }
}
