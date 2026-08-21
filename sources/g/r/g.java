package g.r;

import g.s.j;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class g extends f {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements Iterable<T>, g.p.b.l.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g.r.a f4401b;

        public a(g.r.a aVar) {
            this.f4401b = aVar;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this.f4401b.iterator();
        }
    }

    public static <T, R> g.r.a<R> a(g.r.a<? extends T> aVar, g.p.a.b<? super T, ? extends R> bVar) {
        g.p.b.f.b(aVar, "receiver$0");
        g.p.b.f.b(bVar, "transform");
        return new h(aVar, bVar);
    }

    public static final <T, A extends Appendable> A a(g.r.a<? extends T> aVar, A a2, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, g.p.a.b<? super T, ? extends CharSequence> bVar) throws IOException {
        g.p.b.f.b(aVar, "receiver$0");
        g.p.b.f.b(a2, "buffer");
        g.p.b.f.b(charSequence, "separator");
        g.p.b.f.b(charSequence2, "prefix");
        g.p.b.f.b(charSequence3, "postfix");
        g.p.b.f.b(charSequence4, "truncated");
        a2.append(charSequence2);
        int i3 = 0;
        for (T t : aVar) {
            i3++;
            if (i3 > 1) {
                a2.append(charSequence);
            }
            if (i2 >= 0 && i3 > i2) {
                break;
            }
            j.a(a2, t, bVar);
        }
        if (i2 >= 0 && i3 > i2) {
            a2.append(charSequence4);
        }
        a2.append(charSequence3);
        return a2;
    }

    public static <T> Iterable<T> a(g.r.a<? extends T> aVar) {
        g.p.b.f.b(aVar, "receiver$0");
        return new a(aVar);
    }

    public static final <T> String a(g.r.a<? extends T> aVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, g.p.a.b<? super T, ? extends CharSequence> bVar) throws IOException {
        g.p.b.f.b(aVar, "receiver$0");
        g.p.b.f.b(charSequence, "separator");
        g.p.b.f.b(charSequence2, "prefix");
        g.p.b.f.b(charSequence3, "postfix");
        g.p.b.f.b(charSequence4, "truncated");
        StringBuilder sb = new StringBuilder();
        a(aVar, sb, charSequence, charSequence2, charSequence3, i2, charSequence4, bVar);
        String string = sb.toString();
        g.p.b.f.a((Object) string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static /* synthetic */ String a(g.r.a aVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, g.p.a.b bVar, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i3 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i3 & 4) == 0 ? charSequence3 : "";
        int i4 = (i3 & 8) != 0 ? -1 : i2;
        if ((i3 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i3 & 32) != 0) {
            bVar = null;
        }
        return a(aVar, charSequence, charSequence5, charSequence6, i4, charSequence7, bVar);
    }
}
