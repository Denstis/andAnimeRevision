package androidx.recyclerview.widget;

import androidx.recyclerview.widget.h;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f1248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f1249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h.d<T> f1250c;

    public static final class a<T> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Object f1251d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static Executor f1252e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Executor f1253a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Executor f1254b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final h.d<T> f1255c;

        public a(h.d<T> dVar) {
            this.f1255c = dVar;
        }

        public c<T> a() {
            if (this.f1254b == null) {
                synchronized (f1251d) {
                    if (f1252e == null) {
                        f1252e = Executors.newFixedThreadPool(2);
                    }
                }
                this.f1254b = f1252e;
            }
            return new c<>(this.f1253a, this.f1254b, this.f1255c);
        }
    }

    c(Executor executor, Executor executor2, h.d<T> dVar) {
        this.f1248a = executor;
        this.f1249b = executor2;
        this.f1250c = dVar;
    }

    public Executor a() {
        return this.f1249b;
    }

    public h.d<T> b() {
        return this.f1250c;
    }

    public Executor c() {
        return this.f1248a;
    }
}
