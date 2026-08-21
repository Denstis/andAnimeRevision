package g.o;

import g.p.b.f;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final long a(Reader reader, Writer writer, int i2) throws IOException {
        f.b(reader, "receiver$0");
        f.b(writer, "out");
        char[] cArr = new char[i2];
        int i3 = reader.read(cArr);
        long j2 = 0;
        while (i3 >= 0) {
            writer.write(cArr, 0, i3);
            j2 += (long) i3;
            i3 = reader.read(cArr);
        }
        return j2;
    }

    public static /* synthetic */ long a(Reader reader, Writer writer, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 8192;
        }
        return a(reader, writer, i2);
    }

    public static final String a(Reader reader) {
        f.b(reader, "receiver$0");
        StringWriter stringWriter = new StringWriter();
        a(reader, stringWriter, 0, 2, null);
        String string = stringWriter.toString();
        f.a((Object) string, "buffer.toString()");
        return string;
    }
}
