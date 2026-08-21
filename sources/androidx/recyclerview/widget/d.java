package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.h;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class d<T> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Executor f1256g = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f1257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final c<T> f1258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Executor f1259c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<T> f1260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<T> f1261e = Collections.emptyList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f1262f;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f1263b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f1264c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f1265d;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.d$a$a, reason: collision with other inner class name */
        class C0023a extends h.b {
            C0023a() {
            }

            @Override // androidx.recyclerview.widget.h.b
            public int a() {
                return a.this.f1264c.size();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.h.b
            public boolean a(int i2, int i3) {
                Object obj = a.this.f1263b.get(i2);
                Object obj2 = a.this.f1264c.get(i3);
                if (obj != null && obj2 != null) {
                    return d.this.f1258b.b().a(obj, obj2);
                }
                if (obj == null && obj2 == null) {
                    return true;
                }
                throw new AssertionError();
            }

            @Override // androidx.recyclerview.widget.h.b
            public int b() {
                return a.this.f1263b.size();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.h.b
            public boolean b(int i2, int i3) {
                Object obj = a.this.f1263b.get(i2);
                Object obj2 = a.this.f1264c.get(i3);
                return (obj == null || obj2 == null) ? obj == null && obj2 == null : d.this.f1258b.b().b(obj, obj2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.h.b
            public Object c(int i2, int i3) {
                Object obj = a.this.f1263b.get(i2);
                Object obj2 = a.this.f1264c.get(i3);
                if (obj == null || obj2 == null) {
                    throw new AssertionError();
                }
                return d.this.f1258b.b().c(obj, obj2);
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ h.c f1268b;

            b(h.c cVar) {
                this.f1268b = cVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                d dVar = d.this;
                if (dVar.f1262f == aVar.f1265d) {
                    dVar.a(aVar.f1264c, this.f1268b);
                }
            }
        }

        a(List list, List list2, int i2) {
            this.f1263b = list;
            this.f1264c = list2;
            this.f1265d = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f1259c.execute(new b(h.a(new C0023a())));
        }
    }

    private static class b implements Executor {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Handler f1270b = new Handler(Looper.getMainLooper());

        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f1270b.post(runnable);
        }
    }

    public d(p pVar, c<T> cVar) {
        this.f1257a = pVar;
        this.f1258b = cVar;
        this.f1259c = cVar.c() != null ? cVar.c() : f1256g;
    }

    public List<T> a() {
        return this.f1261e;
    }

    public void a(List<T> list) {
        int i2 = this.f1262f + 1;
        this.f1262f = i2;
        List<T> list2 = this.f1260d;
        if (list == list2) {
            return;
        }
        if (list == null) {
            int size = list2.size();
            this.f1260d = null;
            this.f1261e = Collections.emptyList();
            this.f1257a.c(0, size);
            return;
        }
        if (list2 != null) {
            this.f1258b.a().execute(new a(list2, list, i2));
            return;
        }
        this.f1260d = list;
        this.f1261e = Collections.unmodifiableList(list);
        this.f1257a.b(0, list.size());
    }

    void a(List<T> list, h.c cVar) {
        this.f1260d = list;
        this.f1261e = Collections.unmodifiableList(list);
        cVar.a(this.f1257a);
    }
}
