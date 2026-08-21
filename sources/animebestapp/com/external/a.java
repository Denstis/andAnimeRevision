package animebestapp.com.external;

import g.p.b.f;
import g.s.c;
import g.s.m;
import g.s.n;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f1540b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f1539a = {91, 49, 44, 32, 50, 44, 32, 51, 44, 32, 55, 44, 32, 49, 52, 44, 32, 50, 56, 44, 32, 50, 57, 44, 32, 51, 48, 44, 32, 49, 53, 44, 32, 50, 54, 44, 32, 50, 55, 93};

    private a() {
    }

    public final boolean a(String str) {
        f.b(str, "g");
        return n.a((CharSequence) m.a(m.a(m.a(new String(f1539a, c.f4406a), "[", "", false, 4, (Object) null), "]", "", false, 4, (Object) null), " ", "", false, 4, (Object) null), new String[]{","}, false, 0, 6, (Object) null).contains(str);
    }
}
