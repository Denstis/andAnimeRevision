package b.h.n;

import android.util.Log;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class b extends Writer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private StringBuilder f2558c = new StringBuilder(128);

    public b(String str) {
        this.f2557b = str;
    }

    private void j() {
        if (this.f2558c.length() > 0) {
            Log.d(this.f2557b, this.f2558c.toString());
            StringBuilder sb = this.f2558c;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        j();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        j();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            char c2 = cArr[i2 + i4];
            if (c2 == '\n') {
                j();
            } else {
                this.f2558c.append(c2);
            }
        }
    }
}
