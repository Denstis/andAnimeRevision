package g.m;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class q extends p {
    public static final <T> boolean a(Collection<? super T> collection, Iterable<? extends T> iterable) {
        g.p.b.f.b(collection, "receiver$0");
        g.p.b.f.b(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z = false;
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z = true;
            }
        }
        return z;
    }
}
