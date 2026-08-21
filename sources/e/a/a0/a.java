package e.a.a0;

import e.a.b;
import e.a.f;
import e.a.h;
import e.a.m;
import e.a.n;
import e.a.o;
import e.a.q;
import e.a.w.c;
import e.a.x.d;
import e.a.x.e;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static volatile d<? super Throwable> f4093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile e<? super Runnable, ? extends Runnable> f4094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static volatile e<? super Callable<n>, ? extends n> f4095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static volatile e<? super Callable<n>, ? extends n> f4096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static volatile e<? super Callable<n>, ? extends n> f4097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static volatile e<? super Callable<n>, ? extends n> f4098f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static volatile e<? super n, ? extends n> f4099g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static volatile e<? super n, ? extends n> f4100h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static volatile e<? super e.a.e, ? extends e.a.e> f4101i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static volatile e<? super h, ? extends h> f4102j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static volatile e<? super f, ? extends f> f4103k;
    static volatile e<? super o, ? extends o> l;
    static volatile e<? super b, ? extends b> m;
    static volatile e.a.x.b<? super h, ? super m, ? extends m> n;
    static volatile e.a.x.b<? super o, ? super q, ? extends q> o;

    public static b a(b bVar) {
        e<? super b, ? extends b> eVar = m;
        return eVar != null ? (b) a((e<b, R>) eVar, bVar) : bVar;
    }

    public static <T> e.a.e<T> a(e.a.e<T> eVar) {
        e<? super e.a.e, ? extends e.a.e> eVar2 = f4101i;
        return eVar2 != null ? (e.a.e) a((e<e.a.e<T>, R>) eVar2, eVar) : eVar;
    }

    public static <T> f<T> a(f<T> fVar) {
        e<? super f, ? extends f> eVar = f4103k;
        return eVar != null ? (f) a((e<f<T>, R>) eVar, fVar) : fVar;
    }

    public static <T> h<T> a(h<T> hVar) {
        e<? super h, ? extends h> eVar = f4102j;
        return eVar != null ? (h) a((e<h<T>, R>) eVar, hVar) : hVar;
    }

    public static <T> m<? super T> a(h<T> hVar, m<? super T> mVar) {
        e.a.x.b<? super h, ? super m, ? extends m> bVar = n;
        return bVar != null ? (m) a(bVar, hVar, mVar) : mVar;
    }

    public static n a(n nVar) {
        e<? super n, ? extends n> eVar = f4099g;
        return eVar == null ? nVar : (n) a((e<n, R>) eVar, nVar);
    }

    static n a(e<? super Callable<n>, ? extends n> eVar, Callable<n> callable) {
        Object objA = a((e<Callable<n>, Object>) eVar, callable);
        e.a.y.b.b.a(objA, "Scheduler Callable result can't be null");
        return (n) objA;
    }

    static n a(Callable<n> callable) {
        try {
            n nVarCall = callable.call();
            e.a.y.b.b.a(nVarCall, "Scheduler Callable result can't be null");
            return nVarCall;
        } catch (Throwable th) {
            throw e.a.y.h.b.a(th);
        }
    }

    public static <T> o<T> a(o<T> oVar) {
        e<? super o, ? extends o> eVar = l;
        return eVar != null ? (o) a((e<o<T>, R>) eVar, oVar) : oVar;
    }

    public static <T> q<? super T> a(o<T> oVar, q<? super T> qVar) {
        e.a.x.b<? super o, ? super q, ? extends q> bVar = o;
        return bVar != null ? (q) a(bVar, oVar, qVar) : qVar;
    }

    static <T, U, R> R a(e.a.x.b<T, U, R> bVar, T t, U u) {
        try {
            return bVar.a(t, u);
        } catch (Throwable th) {
            throw e.a.y.h.b.a(th);
        }
    }

    static <T, R> R a(e<T, R> eVar, T t) {
        try {
            return eVar.apply(t);
        } catch (Throwable th) {
            throw e.a.y.h.b.a(th);
        }
    }

    public static Runnable a(Runnable runnable) {
        e.a.y.b.b.a(runnable, "run is null");
        e<? super Runnable, ? extends Runnable> eVar = f4094b;
        return eVar == null ? runnable : (Runnable) a((e<Runnable, R>) eVar, runnable);
    }

    static boolean a(Throwable th) {
        return (th instanceof c) || (th instanceof IllegalStateException) || (th instanceof NullPointerException) || (th instanceof IllegalArgumentException) || (th instanceof e.a.w.a);
    }

    public static n b(n nVar) {
        e<? super n, ? extends n> eVar = f4100h;
        return eVar == null ? nVar : (n) a((e<n, R>) eVar, nVar);
    }

    public static n b(Callable<n> callable) {
        e.a.y.b.b.a(callable, "Scheduler Callable can't be null");
        e<? super Callable<n>, ? extends n> eVar = f4095c;
        return eVar == null ? a(callable) : a(eVar, callable);
    }

    public static void b(Throwable th) {
        d<? super Throwable> dVar = f4093a;
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!a(th)) {
            th = new e.a.w.e(th);
        }
        if (dVar != null) {
            try {
                dVar.a(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                c(th2);
            }
        }
        th.printStackTrace();
        c(th);
    }

    public static n c(Callable<n> callable) {
        e.a.y.b.b.a(callable, "Scheduler Callable can't be null");
        e<? super Callable<n>, ? extends n> eVar = f4097e;
        return eVar == null ? a(callable) : a(eVar, callable);
    }

    static void c(Throwable th) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }

    public static n d(Callable<n> callable) {
        e.a.y.b.b.a(callable, "Scheduler Callable can't be null");
        e<? super Callable<n>, ? extends n> eVar = f4098f;
        return eVar == null ? a(callable) : a(eVar, callable);
    }

    public static n e(Callable<n> callable) {
        e.a.y.b.b.a(callable, "Scheduler Callable can't be null");
        e<? super Callable<n>, ? extends n> eVar = f4096d;
        return eVar == null ? a(callable) : a(eVar, callable);
    }
}
