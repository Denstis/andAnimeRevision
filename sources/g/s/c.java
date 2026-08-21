package g.s;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f4406a;

    static {
        new c();
        Charset charsetForName = Charset.forName(C.UTF8_NAME);
        g.p.b.f.a((Object) charsetForName, "Charset.forName(\"UTF-8\")");
        f4406a = charsetForName;
        g.p.b.f.a((Object) Charset.forName(C.UTF16_NAME), "Charset.forName(\"UTF-16\")");
        g.p.b.f.a((Object) Charset.forName("UTF-16BE"), "Charset.forName(\"UTF-16BE\")");
        g.p.b.f.a((Object) Charset.forName("UTF-16LE"), "Charset.forName(\"UTF-16LE\")");
        g.p.b.f.a((Object) Charset.forName(C.ASCII_NAME), "Charset.forName(\"US-ASCII\")");
        g.p.b.f.a((Object) Charset.forName("ISO-8859-1"), "Charset.forName(\"ISO-8859-1\")");
    }

    private c() {
    }
}
