package c.a.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import c.a.a.o.c;
import c.a.a.o.m;
import c.a.a.o.n;
import c.a.a.o.p;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class k implements c.a.a.o.i, g<j<Drawable>> {
    private static final c.a.a.r.f m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final c f3121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final Context f3122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final c.a.a.o.h f3123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n f3124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final m f3125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p f3126g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f3127h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Handler f3128i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final c.a.a.o.c f3129j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final CopyOnWriteArrayList<c.a.a.r.e<Object>> f3130k;
    private c.a.a.r.f l;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = k.this;
            kVar.f3123d.a(kVar);
        }
    }

    private class b implements c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final n f3132a;

        b(n nVar) {
            this.f3132a = nVar;
        }

        @Override // c.a.a.o.c.a
        public void a(boolean z) {
            if (z) {
                synchronized (k.this) {
                    this.f3132a.c();
                }
            }
        }
    }

    static {
        c.a.a.r.f fVarB = c.a.a.r.f.b((Class<?>) Bitmap.class);
        fVarB.F();
        m = fVarB;
        c.a.a.r.f.b((Class<?>) com.bumptech.glide.load.p.g.c.class).F();
        c.a.a.r.f.b(com.bumptech.glide.load.n.j.f3588b).a(h.LOW).a(true);
    }

    public k(c cVar, c.a.a.o.h hVar, m mVar, Context context) {
        this(cVar, hVar, mVar, new n(), cVar.d(), context);
    }

    k(c cVar, c.a.a.o.h hVar, m mVar, n nVar, c.a.a.o.d dVar, Context context) {
        this.f3126g = new p();
        this.f3127h = new a();
        this.f3128i = new Handler(Looper.getMainLooper());
        this.f3121b = cVar;
        this.f3123d = hVar;
        this.f3125f = mVar;
        this.f3124e = nVar;
        this.f3122c = context;
        this.f3129j = dVar.a(context.getApplicationContext(), new b(nVar));
        if (c.a.a.t.k.b()) {
            this.f3128i.post(this.f3127h);
        } else {
            hVar.a(this);
        }
        hVar.a(this.f3129j);
        this.f3130k = new CopyOnWriteArrayList<>(cVar.f().b());
        a(cVar.f().c());
        cVar.a(this);
    }

    private void c(c.a.a.r.j.h<?> hVar) {
        if (b(hVar) || this.f3121b.a(hVar) || hVar.a() == null) {
            return;
        }
        c.a.a.r.c cVarA = hVar.a();
        hVar.a((c.a.a.r.c) null);
        cVarA.clear();
    }

    public <ResourceType> j<ResourceType> a(Class<ResourceType> cls) {
        return new j<>(this.f3121b, this, cls, this.f3122c);
    }

    public j<Drawable> a(String str) {
        j<Drawable> jVarC = c();
        jVarC.a(str);
        return jVarC;
    }

    protected synchronized void a(c.a.a.r.f fVar) {
        c.a.a.r.f fVarClone = fVar.mo4clone();
        fVarClone.a();
        this.l = fVarClone;
    }

    public synchronized void a(c.a.a.r.j.h<?> hVar) {
        if (hVar == null) {
            return;
        }
        c(hVar);
    }

    synchronized void a(c.a.a.r.j.h<?> hVar, c.a.a.r.c cVar) {
        this.f3126g.a(hVar);
        this.f3124e.b(cVar);
    }

    public j<Bitmap> b() {
        return a(Bitmap.class).a((c.a.a.r.a<?>) m);
    }

    <T> l<?, T> b(Class<T> cls) {
        return this.f3121b.f().a(cls);
    }

    synchronized boolean b(c.a.a.r.j.h<?> hVar) {
        c.a.a.r.c cVarA = hVar.a();
        if (cVarA == null) {
            return true;
        }
        if (!this.f3124e.a(cVarA)) {
            return false;
        }
        this.f3126g.b(hVar);
        hVar.a((c.a.a.r.c) null);
        return true;
    }

    public j<Drawable> c() {
        return a(Drawable.class);
    }

    List<c.a.a.r.e<Object>> d() {
        return this.f3130k;
    }

    synchronized c.a.a.r.f e() {
        return this.l;
    }

    public synchronized void f() {
        this.f3124e.b();
    }

    public synchronized void g() {
        this.f3124e.d();
    }

    @Override // c.a.a.o.i
    public synchronized void onDestroy() {
        this.f3126g.onDestroy();
        Iterator<c.a.a.r.j.h<?>> it = this.f3126g.c().iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        this.f3126g.b();
        this.f3124e.a();
        this.f3123d.b(this);
        this.f3123d.b(this.f3129j);
        this.f3128i.removeCallbacks(this.f3127h);
        this.f3121b.b(this);
    }

    @Override // c.a.a.o.i
    public synchronized void onStart() {
        g();
        this.f3126g.onStart();
    }

    @Override // c.a.a.o.i
    public synchronized void onStop() {
        f();
        this.f3126g.onStop();
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f3124e + ", treeNode=" + this.f3125f + "}";
    }
}
