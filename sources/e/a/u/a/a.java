package e.a.u.a;

import e.a.n;
import e.a.w.b;
import e.a.x.e;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile e<Callable<n>, n> f4115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile e<n, n> f4116b;

    public static n a(n nVar) {
        if (nVar == null) {
            throw new NullPointerException("scheduler == null");
        }
        e<n, n> eVar = f4116b;
        return eVar == null ? nVar : (n) a((e<n, R>) eVar, nVar);
    }

    static n a(e<Callable<n>, n> eVar, Callable<n> callable) {
        n nVar = (n) a((e<Callable<n>, R>) eVar, callable);
        if (nVar != null) {
            return nVar;
        }
        throw new NullPointerException("Scheduler Callable returned null");
    }

    static n a(Callable<n> callable) {
        try {
            n nVarCall = callable.call();
            if (nVarCall != null) {
                return nVarCall;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            b.a(th);
            throw null;
        }
    }

    static <T, R> R a(e<T, R> eVar, T t) {
        try {
            return eVar.apply(t);
        } catch (Throwable th) {
            b.a(th);
            throw null;
        }
    }

    public static n b(Callable<n> callable) {
        if (callable == null) {
            throw new NullPointerException("scheduler == null");
        }
        e<Callable<n>, n> eVar = f4115a;
        return eVar == null ? a(callable) : a(eVar, callable);
    }
}
