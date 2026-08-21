package g.s;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class j extends i {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object] */
    public static <T> void a(Appendable appendable, T t, g.p.a.b<? super T, ? extends CharSequence> bVar) throws IOException {
        CharSequence charSequenceValueOf;
        g.p.b.f.b(appendable, "receiver$0");
        if (bVar == null) {
            if (!(t != 0 ? t instanceof CharSequence : true)) {
                if (t instanceof Character) {
                    appendable.append(((Character) t).charValue());
                    return;
                }
                charSequenceValueOf = String.valueOf((Object) t);
            }
            appendable.append(charSequenceValueOf);
        }
        t = (T) bVar.a(t);
        charSequenceValueOf = (CharSequence) t;
        appendable.append(charSequenceValueOf);
    }
}
