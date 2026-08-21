package i;

import java.io.Closeable;
import java.io.Flushable;

/* JADX INFO: loaded from: classes.dex */
public interface r extends Closeable, Flushable {
    t b();

    void b(c cVar, long j2);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();
}
