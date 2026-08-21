package h.h0.f;

import h.e0;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<e0> f4575a = new LinkedHashSet();

    public synchronized void a(e0 e0Var) {
        this.f4575a.remove(e0Var);
    }

    public synchronized void b(e0 e0Var) {
        this.f4575a.add(e0Var);
    }

    public synchronized boolean c(e0 e0Var) {
        return this.f4575a.contains(e0Var);
    }
}
