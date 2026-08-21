package g.m;

import java.util.Collection;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class m extends l {
    public static <T> int a(Iterable<? extends T> iterable, int i2) {
        g.p.b.f.b(iterable, "receiver$0");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i2;
    }
}
