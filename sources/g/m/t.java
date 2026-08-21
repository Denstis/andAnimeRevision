package g.m;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class t extends s {

    static final class a extends g.p.b.g implements g.p.a.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f4379b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i2) {
            super(1);
            this.f4379b = i2;
        }

        @Override // g.p.a.b
        public /* bridge */ /* synthetic */ Object a(Object obj) {
            a(((Number) obj).intValue());
            throw null;
        }

        public final Void a(int i2) {
            throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + this.f4379b + '.');
        }
    }

    public static <T> int a(List<? extends T> list, T t) {
        g.p.b.f.b(list, "receiver$0");
        return list.indexOf(t);
    }

    public static final <T, A extends Appendable> A a(Iterable<? extends T> iterable, A a2, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, g.p.a.b<? super T, ? extends CharSequence> bVar) throws IOException {
        g.p.b.f.b(iterable, "receiver$0");
        g.p.b.f.b(a2, "buffer");
        g.p.b.f.b(charSequence, "separator");
        g.p.b.f.b(charSequence2, "prefix");
        g.p.b.f.b(charSequence3, "postfix");
        g.p.b.f.b(charSequence4, "truncated");
        a2.append(charSequence2);
        int i3 = 0;
        for (T t : iterable) {
            i3++;
            if (i3 > 1) {
                a2.append(charSequence);
            }
            if (i2 >= 0 && i3 > i2) {
                break;
            }
            g.s.j.a(a2, t, bVar);
        }
        if (i2 >= 0 && i3 > i2) {
            a2.append(charSequence4);
        }
        a2.append(charSequence3);
        return a2;
    }

    public static final <T> T a(Iterable<? extends T> iterable, int i2, g.p.a.b<? super Integer, ? extends T> bVar) {
        g.p.b.f.b(iterable, "receiver$0");
        g.p.b.f.b(bVar, "defaultValue");
        if (iterable instanceof List) {
            List list = (List) iterable;
            return (i2 < 0 || i2 > l.a(list)) ? bVar.a(Integer.valueOf(i2)) : (T) list.get(i2);
        }
        if (i2 >= 0) {
            int i3 = 0;
            for (T t : iterable) {
                int i4 = i3 + 1;
                if (i2 == i3) {
                    return t;
                }
                i3 = i4;
            }
        }
        return bVar.a(Integer.valueOf(i2));
    }

    public static final <T> String a(Iterable<? extends T> iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, g.p.a.b<? super T, ? extends CharSequence> bVar) throws IOException {
        g.p.b.f.b(iterable, "receiver$0");
        g.p.b.f.b(charSequence, "separator");
        g.p.b.f.b(charSequence2, "prefix");
        g.p.b.f.b(charSequence3, "postfix");
        g.p.b.f.b(charSequence4, "truncated");
        StringBuilder sb = new StringBuilder();
        a(iterable, sb, charSequence, charSequence2, charSequence3, i2, charSequence4, bVar);
        String string = sb.toString();
        g.p.b.f.a((Object) string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static /* synthetic */ String a(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, g.p.a.b bVar, int i3, Object obj) {
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
        return a(iterable, charSequence, charSequence5, charSequence6, i4, charSequence7, bVar);
    }

    public static final <T, C extends Collection<? super T>> C a(Iterable<? extends T> iterable, C c2) {
        g.p.b.f.b(iterable, "receiver$0");
        g.p.b.f.b(c2, FirebaseAnalytics.Param.DESTINATION);
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            c2.add(it.next());
        }
        return c2;
    }

    public static final <T> List<T> a(Iterable<? extends T> iterable) {
        g.p.b.f.b(iterable, "receiver$0");
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return c(iterable);
        }
        List<T> listD = d(iterable);
        s.c(listD);
        return listD;
    }

    public static byte[] a(Collection<Byte> collection) {
        g.p.b.f.b(collection, "receiver$0");
        byte[] bArr = new byte[collection.size()];
        Iterator<Byte> it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            bArr[i2] = it.next().byteValue();
            i2++;
        }
        return bArr;
    }

    public static <T> T b(Iterable<? extends T> iterable) {
        g.p.b.f.b(iterable, "receiver$0");
        if (iterable instanceof List) {
            return (T) e((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static <T> T b(Iterable<? extends T> iterable, int i2) {
        g.p.b.f.b(iterable, "receiver$0");
        return iterable instanceof List ? (T) ((List) iterable).get(i2) : (T) a(iterable, i2, new a(i2));
    }

    public static final <T> List<T> b(Collection<? extends T> collection) {
        g.p.b.f.b(collection, "receiver$0");
        return new ArrayList(collection);
    }

    public static <T> List<T> b(Collection<? extends T> collection, Iterable<? extends T> iterable) {
        g.p.b.f.b(collection, "receiver$0");
        g.p.b.f.b(iterable, "elements");
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            q.a(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection.size() + collection2.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static <T> List<T> c(Iterable<? extends T> iterable) {
        g.p.b.f.b(iterable, "receiver$0");
        if (!(iterable instanceof Collection)) {
            return l.b(d(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return l.a();
        }
        if (size != 1) {
            return b(collection);
        }
        return k.a(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static <T> T d(List<? extends T> list) {
        g.p.b.f.b(list, "receiver$0");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final <T> List<T> d(Iterable<? extends T> iterable) {
        g.p.b.f.b(iterable, "receiver$0");
        if (iterable instanceof Collection) {
            return b((Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        a(iterable, arrayList);
        return arrayList;
    }

    public static final <T> T e(List<? extends T> list) {
        g.p.b.f.b(list, "receiver$0");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }
}
