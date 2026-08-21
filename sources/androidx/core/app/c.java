package androidx.core.app;

import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static boolean a(b.k.a.d dVar) {
        try {
            return dVar.isInBackStack();
        } catch (IllegalAccessError unused) {
            return b(dVar);
        }
    }

    private static boolean b(b.k.a.d dVar) {
        dVar.dump("", null, new PrintWriter(new StringWriter()), null);
        return !r0.toString().contains("mBackStackNesting=0");
    }
}
