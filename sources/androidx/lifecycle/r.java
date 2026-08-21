package androidx.lifecycle;

import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<String, p> f1078a = new HashMap<>();

    final p a(String str) {
        return this.f1078a.get(str);
    }

    public final void a() {
        Iterator<p> it = this.f1078a.values().iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.f1078a.clear();
    }

    final void a(String str, p pVar) {
        p pVarPut = this.f1078a.put(str, pVar);
        if (pVarPut != null) {
            pVarPut.a();
        }
    }
}
