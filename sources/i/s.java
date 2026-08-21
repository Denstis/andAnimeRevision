package i;

import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
public interface s extends Closeable {
    long a(c cVar, long j2);

    t b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();
}
