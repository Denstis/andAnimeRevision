package c.a.a.r;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import c.a.a.t.l.a;
import com.bumptech.glide.load.n.k;
import com.bumptech.glide.load.n.q;
import com.bumptech.glide.load.n.v;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class h<R> implements c, c.a.a.r.j.g, g, a.f {
    private static final b.h.n.d<h<?>> D = c.a.a.t.l.a.a(150, new a());
    private static final boolean E = Log.isLoggable("Request", 2);
    private int A;
    private int B;
    private RuntimeException C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c.a.a.t.l.c f3272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e<R> f3273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f3274f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f3275g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private c.a.a.e f3276h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Object f3277i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Class<R> f3278j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private c.a.a.r.a<?> f3279k;
    private int l;
    private int m;
    private c.a.a.h n;
    private c.a.a.r.j.h<R> o;
    private List<e<R>> p;
    private k q;
    private c.a.a.r.k.c<? super R> r;
    private Executor s;
    private v<R> t;
    private k.d u;
    private long v;
    private b w;
    private Drawable x;
    private Drawable y;
    private Drawable z;

    class a implements a.d<h<?>> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // c.a.a.t.l.a.d
        public h<?> a() {
            return new h<>();
        }
    }

    private enum b {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    h() {
        this.f3271c = E ? String.valueOf(super.hashCode()) : null;
        this.f3272d = c.a.a.t.l.c.b();
    }

    private static int a(int i2, float f2) {
        return i2 == Integer.MIN_VALUE ? i2 : Math.round(f2 * i2);
    }

    private Drawable a(int i2) {
        return com.bumptech.glide.load.p.e.a.a(this.f3276h, i2, this.f3279k.u() != null ? this.f3279k.u() : this.f3275g.getTheme());
    }

    private synchronized void a(Context context, c.a.a.e eVar, Object obj, Class<R> cls, c.a.a.r.a<?> aVar, int i2, int i3, c.a.a.h hVar, c.a.a.r.j.h<R> hVar2, e<R> eVar2, List<e<R>> list, d dVar, k kVar, c.a.a.r.k.c<? super R> cVar, Executor executor) {
        this.f3275g = context;
        this.f3276h = eVar;
        this.f3277i = obj;
        this.f3278j = cls;
        this.f3279k = aVar;
        this.l = i2;
        this.m = i3;
        this.n = hVar;
        this.o = hVar2;
        this.f3273e = eVar2;
        this.p = list;
        this.f3274f = dVar;
        this.q = kVar;
        this.r = cVar;
        this.s = executor;
        this.w = b.PENDING;
        if (this.C == null && eVar.g()) {
            this.C = new RuntimeException("Glide request origin trace");
        }
    }

    private synchronized void a(q qVar, int i2) {
        boolean zA;
        this.f3272d.a();
        qVar.a(this.C);
        int iE = this.f3276h.e();
        if (iE <= i2) {
            Log.w("Glide", "Load failed for " + this.f3277i + " with size [" + this.A + "x" + this.B + "]", qVar);
            if (iE <= 4) {
                qVar.a("Glide");
            }
        }
        this.u = null;
        this.w = b.FAILED;
        boolean z = true;
        this.f3270b = true;
        try {
            if (this.p != null) {
                Iterator<e<R>> it = this.p.iterator();
                zA = false;
                while (it.hasNext()) {
                    zA |= it.next().a(qVar, this.f3277i, this.o, o());
                }
            } else {
                zA = false;
            }
            if (this.f3273e == null || !this.f3273e.a(qVar, this.f3277i, this.o, o())) {
                z = false;
            }
            if (!(zA | z)) {
                r();
            }
            this.f3270b = false;
            p();
        } catch (Throwable th) {
            this.f3270b = false;
            throw th;
        }
    }

    private void a(v<?> vVar) {
        this.q.b(vVar);
        this.t = null;
    }

    private synchronized void a(v<R> vVar, R r, com.bumptech.glide.load.a aVar) {
        boolean zA;
        boolean zO = o();
        this.w = b.COMPLETE;
        this.t = vVar;
        if (this.f3276h.e() <= 3) {
            Log.d("Glide", "Finished loading " + r.getClass().getSimpleName() + " from " + aVar + " for " + this.f3277i + " with size [" + this.A + "x" + this.B + "] in " + c.a.a.t.f.a(this.v) + " ms");
        }
        boolean z = true;
        this.f3270b = true;
        try {
            if (this.p != null) {
                Iterator<e<R>> it = this.p.iterator();
                zA = false;
                while (it.hasNext()) {
                    zA |= it.next().a(r, this.f3277i, this.o, aVar, zO);
                }
            } else {
                zA = false;
            }
            if (this.f3273e == null || !this.f3273e.a(r, this.f3277i, this.o, aVar, zO)) {
                z = false;
            }
            if (!(z | zA)) {
                this.o.a(r, this.r.a(aVar, zO));
            }
            this.f3270b = false;
            q();
        } catch (Throwable th) {
            this.f3270b = false;
            throw th;
        }
    }

    private void a(String str) {
        Log.v("Request", str + " this: " + this.f3271c);
    }

    private synchronized boolean a(h<?> hVar) {
        boolean z;
        synchronized (hVar) {
            z = (this.p == null ? 0 : this.p.size()) == (hVar.p == null ? 0 : hVar.p.size());
        }
        return z;
    }

    public static <R> h<R> b(Context context, c.a.a.e eVar, Object obj, Class<R> cls, c.a.a.r.a<?> aVar, int i2, int i3, c.a.a.h hVar, c.a.a.r.j.h<R> hVar2, e<R> eVar2, List<e<R>> list, d dVar, k kVar, c.a.a.r.k.c<? super R> cVar, Executor executor) {
        h<R> hVar3 = (h) D.a();
        if (hVar3 == null) {
            hVar3 = new h<>();
        }
        hVar3.a(context, eVar, obj, cls, aVar, i2, i3, hVar, hVar2, eVar2, list, dVar, kVar, cVar, executor);
        return hVar3;
    }

    private void g() {
        if (this.f3270b) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    private boolean h() {
        d dVar = this.f3274f;
        return dVar == null || dVar.f(this);
    }

    private boolean i() {
        d dVar = this.f3274f;
        return dVar == null || dVar.c(this);
    }

    private boolean j() {
        d dVar = this.f3274f;
        return dVar == null || dVar.d(this);
    }

    private void k() {
        g();
        this.f3272d.a();
        this.o.a((c.a.a.r.j.g) this);
        k.d dVar = this.u;
        if (dVar != null) {
            dVar.a();
            this.u = null;
        }
    }

    private Drawable l() {
        if (this.x == null) {
            this.x = this.f3279k.f();
            if (this.x == null && this.f3279k.e() > 0) {
                this.x = a(this.f3279k.e());
            }
        }
        return this.x;
    }

    private Drawable m() {
        if (this.z == null) {
            this.z = this.f3279k.g();
            if (this.z == null && this.f3279k.h() > 0) {
                this.z = a(this.f3279k.h());
            }
        }
        return this.z;
    }

    private Drawable n() {
        if (this.y == null) {
            this.y = this.f3279k.o();
            if (this.y == null && this.f3279k.p() > 0) {
                this.y = a(this.f3279k.p());
            }
        }
        return this.y;
    }

    private boolean o() {
        d dVar = this.f3274f;
        return dVar == null || !dVar.d();
    }

    private void p() {
        d dVar = this.f3274f;
        if (dVar != null) {
            dVar.b(this);
        }
    }

    private void q() {
        d dVar = this.f3274f;
        if (dVar != null) {
            dVar.e(this);
        }
    }

    private synchronized void r() {
        if (i()) {
            Drawable drawableM = this.f3277i == null ? m() : null;
            if (drawableM == null) {
                drawableM = l();
            }
            if (drawableM == null) {
                drawableM = n();
            }
            this.o.a(drawableM);
        }
    }

    @Override // c.a.a.r.c
    public synchronized void a() {
        g();
        this.f3275g = null;
        this.f3276h = null;
        this.f3277i = null;
        this.f3278j = null;
        this.f3279k = null;
        this.l = -1;
        this.m = -1;
        this.o = null;
        this.p = null;
        this.f3273e = null;
        this.f3274f = null;
        this.r = null;
        this.u = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = -1;
        this.B = -1;
        this.C = null;
        D.a(this);
    }

    @Override // c.a.a.r.j.g
    public synchronized void a(int i2, int i3) throws Throwable {
        try {
            this.f3272d.a();
            if (E) {
                a("Got onSizeReady in " + c.a.a.t.f.a(this.v));
            }
            if (this.w != b.WAITING_FOR_SIZE) {
                return;
            }
            this.w = b.RUNNING;
            float fT = this.f3279k.t();
            this.A = a(i2, fT);
            this.B = a(i3, fT);
            if (E) {
                a("finished setup for calling load in " + c.a.a.t.f.a(this.v));
            }
            try {
                try {
                    this.u = this.q.a(this.f3276h, this.f3277i, this.f3279k.s(), this.A, this.B, this.f3279k.r(), this.f3278j, this.n, this.f3279k.d(), this.f3279k.v(), this.f3279k.C(), this.f3279k.A(), this.f3279k.l(), this.f3279k.y(), this.f3279k.x(), this.f3279k.w(), this.f3279k.i(), this, this.s);
                    if (this.w != b.RUNNING) {
                        this.u = null;
                    }
                    if (E) {
                        a("finished onSizeReady in " + c.a.a.t.f.a(this.v));
                    }
                    return;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        throw th;
    }

    @Override // c.a.a.r.g
    public synchronized void a(q qVar) {
        a(qVar, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // c.a.a.r.g
    public synchronized void a(v<?> vVar, com.bumptech.glide.load.a aVar) {
        this.f3272d.a();
        this.u = null;
        if (vVar == null) {
            a(new q("Expected to receive a Resource<R> with an object of " + this.f3278j + " inside, but instead got null."));
            return;
        }
        Object obj = vVar.get();
        if (obj != null && this.f3278j.isAssignableFrom(obj.getClass())) {
            if (j()) {
                a(vVar, obj, aVar);
                return;
            } else {
                a(vVar);
                this.w = b.COMPLETE;
                return;
            }
        }
        a(vVar);
        StringBuilder sb = new StringBuilder();
        sb.append("Expected to receive an object of ");
        sb.append(this.f3278j);
        sb.append(" but instead got ");
        sb.append(obj != null ? obj.getClass() : "");
        sb.append("{");
        sb.append(obj);
        sb.append("} inside Resource{");
        sb.append(vVar);
        sb.append("}.");
        sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
        a(new q(sb.toString()));
    }

    @Override // c.a.a.r.c
    public synchronized boolean a(c cVar) {
        boolean z = false;
        if (!(cVar instanceof h)) {
            return false;
        }
        h<?> hVar = (h) cVar;
        synchronized (hVar) {
            if (this.l == hVar.l && this.m == hVar.m && c.a.a.t.k.a(this.f3277i, hVar.f3277i) && this.f3278j.equals(hVar.f3278j) && this.f3279k.equals(hVar.f3279k) && this.n == hVar.n && a(hVar)) {
                z = true;
            }
        }
        return z;
    }

    @Override // c.a.a.r.c
    public synchronized boolean b() {
        return f();
    }

    @Override // c.a.a.r.c
    public synchronized void begin() {
        g();
        this.f3272d.a();
        this.v = c.a.a.t.f.a();
        if (this.f3277i == null) {
            if (c.a.a.t.k.b(this.l, this.m)) {
                this.A = this.l;
                this.B = this.m;
            }
            a(new q("Received null model"), m() == null ? 5 : 3);
            return;
        }
        if (this.w == b.RUNNING) {
            throw new IllegalArgumentException("Cannot restart a running request");
        }
        if (this.w == b.COMPLETE) {
            a((v<?>) this.t, com.bumptech.glide.load.a.MEMORY_CACHE);
            return;
        }
        this.w = b.WAITING_FOR_SIZE;
        if (c.a.a.t.k.b(this.l, this.m)) {
            a(this.l, this.m);
        } else {
            this.o.b(this);
        }
        if ((this.w == b.RUNNING || this.w == b.WAITING_FOR_SIZE) && i()) {
            this.o.b(n());
        }
        if (E) {
            a("finished run method in " + c.a.a.t.f.a(this.v));
        }
    }

    @Override // c.a.a.r.c
    public synchronized boolean c() {
        return this.w == b.FAILED;
    }

    @Override // c.a.a.r.c
    public synchronized void clear() {
        g();
        this.f3272d.a();
        if (this.w == b.CLEARED) {
            return;
        }
        k();
        if (this.t != null) {
            a((v<?>) this.t);
        }
        if (h()) {
            this.o.c(n());
        }
        this.w = b.CLEARED;
    }

    @Override // c.a.a.t.l.a.f
    public c.a.a.t.l.c d() {
        return this.f3272d;
    }

    @Override // c.a.a.r.c
    public synchronized boolean e() {
        return this.w == b.CLEARED;
    }

    @Override // c.a.a.r.c
    public synchronized boolean f() {
        return this.w == b.COMPLETE;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0010  */
    @Override // c.a.a.r.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isRunning() {
        /*
            r2 = this;
            monitor-enter(r2)
            c.a.a.r.h$b r0 = r2.w     // Catch: java.lang.Throwable -> L13
            c.a.a.r.h$b r1 = c.a.a.r.h.b.RUNNING     // Catch: java.lang.Throwable -> L13
            if (r0 == r1) goto L10
            c.a.a.r.h$b r0 = r2.w     // Catch: java.lang.Throwable -> L13
            c.a.a.r.h$b r1 = c.a.a.r.h.b.WAITING_FOR_SIZE     // Catch: java.lang.Throwable -> L13
            if (r0 != r1) goto Le
            goto L10
        Le:
            r0 = 0
            goto L11
        L10:
            r0 = 1
        L11:
            monitor-exit(r2)
            return r0
        L13:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.r.h.isRunning():boolean");
    }
}
