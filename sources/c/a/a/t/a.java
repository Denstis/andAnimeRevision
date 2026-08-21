package c.a.a.t;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: c.a.a.t.a$a, reason: collision with other inner class name */
    private static class C0132a extends InputStream {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ByteBuffer f3311b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f3312c = -1;

        C0132a(ByteBuffer byteBuffer) {
            this.f3311b = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f3311b.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i2) {
            this.f3312c = this.f3311b.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f3311b.hasRemaining()) {
                return this.f3311b.get();
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            if (!this.f3311b.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i3, available());
            this.f3311b.get(bArr, i2, iMin);
            return iMin;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            if (this.f3312c == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f3311b.position(this.f3312c);
        }

        @Override // java.io.InputStream
        public long skip(long j2) {
            if (!this.f3311b.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j2, available());
            ByteBuffer byteBuffer = this.f3311b;
            byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
            return jMin;
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f3313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f3314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final byte[] f3315c;

        b(byte[] bArr, int i2, int i3) {
            this.f3315c = bArr;
            this.f3313a = i2;
            this.f3314b = i3;
        }
    }

    static {
        new AtomicReference();
    }

    private static b a(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    public static ByteBuffer a(File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile.getChannel();
                try {
                    MappedByteBuffer mappedByteBufferLoad = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException unused) {
                        }
                    }
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused2) {
                    }
                    return mappedByteBufferLoad;
                } catch (Throwable th) {
                    fileChannel = channel;
                    th = th;
                    if (fileChannel != null) {
                        try {
                            fileChannel.close();
                        } catch (IOException unused3) {
                        }
                    }
                    if (randomAccessFile == null) {
                        throw th;
                    }
                    try {
                        randomAccessFile.close();
                        throw th;
                    } catch (IOException unused4) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    public static void a(ByteBuffer byteBuffer, File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        byteBuffer.position(0);
        FileChannel channel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                channel = randomAccessFile.getChannel();
                channel.write(byteBuffer);
                channel.force(false);
                channel.close();
                randomAccessFile.close();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused) {
                    }
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th) {
                th = th;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    public static byte[] b(ByteBuffer byteBuffer) {
        b bVarA = a(byteBuffer);
        if (bVarA != null && bVarA.f3313a == 0 && bVarA.f3314b == bVarA.f3315c.length) {
            return byteBuffer.array();
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[byteBufferAsReadOnlyBuffer.limit()];
        byteBufferAsReadOnlyBuffer.position(0);
        byteBufferAsReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static InputStream c(ByteBuffer byteBuffer) {
        return new C0132a(byteBuffer);
    }
}
