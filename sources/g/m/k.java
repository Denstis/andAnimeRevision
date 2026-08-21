package g.m;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class k {
    public static <T> List<T> a(T t) {
        List<T> listSingletonList = Collections.singletonList(t);
        g.p.b.f.a((Object) listSingletonList, "java.util.Collections.singletonList(element)");
        return listSingletonList;
    }

    public static final <T> Object[] a(T[] tArr, boolean z) {
        g.p.b.f.b(tArr, "receiver$0");
        if (z && g.p.b.f.a(tArr.getClass(), Object[].class)) {
            return tArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
        g.p.b.f.a((Object) objArrCopyOf, "java.util.Arrays.copyOf(… Array<Any?>::class.java)");
        return objArrCopyOf;
    }
}
