package i;

import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes.dex */
public interface d extends r, WritableByteChannel {
    c a();

    d a(f fVar);

    d a(String str);

    d f(long j2);

    @Override // i.r, java.io.Flushable
    void flush();

    d g(long j2);

    d i();

    d write(byte[] bArr);

    d write(byte[] bArr, int i2, int i3);

    d writeByte(int i2);

    d writeInt(int i2);

    d writeShort(int i2);
}
