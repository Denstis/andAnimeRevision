package g.m;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class c0 extends b0 {
    public static final int a(int i2) {
        if (i2 < 3) {
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return i2 + (i2 / 3);
        }
        return Integer.MAX_VALUE;
    }

    public static final <K, V> Map<K, V> a() {
        w wVar = w.f4382b;
        if (wVar != null) {
            return wVar;
        }
        throw new g.j("null cannot be cast to non-null type kotlin.collections.Map<K, V>");
    }

    public static <K, V> Map<K, V> a(g.f<? extends K, ? extends V>... fVarArr) {
        g.p.b.f.b(fVarArr, "pairs");
        if (fVarArr.length <= 0) {
            return a();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(a(fVarArr.length));
        a(fVarArr, linkedHashMap);
        return linkedHashMap;
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M a(g.f<? extends K, ? extends V>[] fVarArr, M m) {
        g.p.b.f.b(fVarArr, "receiver$0");
        g.p.b.f.b(m, FirebaseAnalytics.Param.DESTINATION);
        a(m, fVarArr);
        return m;
    }

    public static final <K, V> void a(Map<? super K, ? super V> map, g.f<? extends K, ? extends V>[] fVarArr) {
        g.p.b.f.b(map, "receiver$0");
        g.p.b.f.b(fVarArr, "pairs");
        for (g.f<? extends K, ? extends V> fVar : fVarArr) {
            map.put(fVar.a(), fVar.b());
        }
    }
}
