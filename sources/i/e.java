package i;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public interface e extends s, ReadableByteChannel {
    long a(byte b2);

    long a(r rVar);

    c a();

    String a(Charset charset);

    boolean a(long j2);

    boolean a(long j2, f fVar);

    f b(long j2);

    String c(long j2);

    boolean c();

    String d();

    byte[] d(long j2);

    int e();

    void e(long j2);

    short f();

    long g();

    InputStream h();

    byte readByte();

    void readFully(byte[] bArr);

    int readInt();

    short readShort();

    void skip(long j2);
}
