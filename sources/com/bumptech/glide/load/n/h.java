package com.bumptech.glide.load.n;

import android.os.Build;
import android.util.Log;
import c.a.a.i;
import c.a.a.t.l.a;
import com.bumptech.glide.load.n.f;
import com.bumptech.glide.load.n.i;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class h<R> implements f.a, Runnable, Comparable<h<?>>, a.f {
    private Object A;
    private com.bumptech.glide.load.a B;
    private com.bumptech.glide.load.m.d<?> C;
    private volatile com.bumptech.glide.load.n.f D;
    private volatile boolean E;
    private volatile boolean F;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f3553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b.h.n.d<h<?>> f3554f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private c.a.a.e f3557i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.bumptech.glide.load.g f3558j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private c.a.a.h f3559k;
    private n l;
    private int m;
    private int n;
    private j o;
    private com.bumptech.glide.load.i p;
    private b<R> q;
    private int r;
    private EnumC0142h s;
    private g t;
    private long u;
    private boolean v;
    private Object w;
    private Thread x;
    private com.bumptech.glide.load.g y;
    private com.bumptech.glide.load.g z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.n.g<R> f3550b = new com.bumptech.glide.load.n.g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Throwable> f3551c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c.a.a.t.l.c f3552d = c.a.a.t.l.c.b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d<?> f3555g = new d<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final f f3556h = new f();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3560a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f3561b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final /* synthetic */ int[] f3562c = new int[com.bumptech.glide.load.c.values().length];

        static {
            try {
                f3562c[com.bumptech.glide.load.c.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3562c[com.bumptech.glide.load.c.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f3561b = new int[EnumC0142h.values().length];
            try {
                f3561b[EnumC0142h.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3561b[EnumC0142h.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3561b[EnumC0142h.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3561b[EnumC0142h.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3561b[EnumC0142h.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            f3560a = new int[g.values().length];
            try {
                f3560a[g.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3560a[g.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3560a[g.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    interface b<R> {
        void a(h<?> hVar);

        void a(q qVar);

        void a(v<R> vVar, com.bumptech.glide.load.a aVar);
    }

    private final class c<Z> implements i.a<Z> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.bumptech.glide.load.a f3563a;

        c(com.bumptech.glide.load.a aVar) {
            this.f3563a = aVar;
        }

        @Override // com.bumptech.glide.load.n.i.a
        public v<Z> a(v<Z> vVar) {
            return h.this.a(this.f3563a, vVar);
        }
    }

    private static class d<Z> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.bumptech.glide.load.g f3565a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.bumptech.glide.load.k<Z> f3566b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private u<Z> f3567c;

        d() {
        }

        void a() {
            this.f3565a = null;
            this.f3566b = null;
            this.f3567c = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        <X> void a(com.bumptech.glide.load.g gVar, com.bumptech.glide.load.k<X> kVar, u<X> uVar) {
            this.f3565a = gVar;
            this.f3566b = kVar;
            this.f3567c = uVar;
        }

        void a(e eVar, com.bumptech.glide.load.i iVar) {
            c.a.a.t.l.b.a("DecodeJob.encode");
            try {
                eVar.a().a(this.f3565a, new com.bumptech.glide.load.n.e(this.f3566b, this.f3567c, iVar));
            } finally {
                this.f3567c.e();
                c.a.a.t.l.b.a();
            }
        }

        boolean b() {
            return this.f3567c != null;
        }
    }

    interface e {
        com.bumptech.glide.load.n.b0.a a();
    }

    private static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f3568a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3569b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3570c;

        f() {
        }

        private boolean b(boolean z) {
            return (this.f3570c || z || this.f3569b) && this.f3568a;
        }

        synchronized boolean a() {
            this.f3569b = true;
            return b(false);
        }

        synchronized boolean a(boolean z) {
            this.f3568a = true;
            return b(z);
        }

        synchronized boolean b() {
            this.f3570c = true;
            return b(false);
        }

        synchronized void c() {
            this.f3569b = false;
            this.f3568a = false;
            this.f3570c = false;
        }
    }

    private enum g {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* JADX INFO: renamed from: com.bumptech.glide.load.n.h$h, reason: collision with other inner class name */
    private enum EnumC0142h {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    h(e eVar, b.h.n.d<h<?>> dVar) {
        this.f3553e = eVar;
        this.f3554f = dVar;
    }

    private com.bumptech.glide.load.i a(com.bumptech.glide.load.a aVar) {
        com.bumptech.glide.load.i iVar = this.p;
        if (Build.VERSION.SDK_INT < 26) {
            return iVar;
        }
        boolean z = aVar == com.bumptech.glide.load.a.RESOURCE_DISK_CACHE || this.f3550b.o();
        Boolean bool = (Boolean) iVar.a(com.bumptech.glide.load.p.c.l.f3821h);
        if (bool != null && (!bool.booleanValue() || z)) {
            return iVar;
        }
        com.bumptech.glide.load.i iVar2 = new com.bumptech.glide.load.i();
        iVar2.a(this.p);
        iVar2.a(com.bumptech.glide.load.p.c.l.f3821h, Boolean.valueOf(z));
        return iVar2;
    }

    private EnumC0142h a(EnumC0142h enumC0142h) {
        int i2 = a.f3561b[enumC0142h.ordinal()];
        if (i2 == 1) {
            return this.o.a() ? EnumC0142h.DATA_CACHE : a(EnumC0142h.DATA_CACHE);
        }
        if (i2 == 2) {
            return this.v ? EnumC0142h.FINISHED : EnumC0142h.SOURCE;
        }
        if (i2 == 3 || i2 == 4) {
            return EnumC0142h.FINISHED;
        }
        if (i2 == 5) {
            return this.o.b() ? EnumC0142h.RESOURCE_CACHE : a(EnumC0142h.RESOURCE_CACHE);
        }
        throw new IllegalArgumentException("Unrecognized stage: " + enumC0142h);
    }

    private <Data> v<R> a(com.bumptech.glide.load.m.d<?> dVar, Data data, com.bumptech.glide.load.a aVar) {
        if (data == null) {
            return null;
        }
        try {
            long jA = c.a.a.t.f.a();
            v<R> vVarA = a(data, aVar);
            if (Log.isLoggable("DecodeJob", 2)) {
                a("Decoded result " + vVarA, jA);
            }
            return vVarA;
        } finally {
            dVar.b();
        }
    }

    private <Data> v<R> a(Data data, com.bumptech.glide.load.a aVar) {
        return a(data, aVar, this.f3550b.a((Class) data.getClass()));
    }

    private <Data, ResourceType> v<R> a(Data data, com.bumptech.glide.load.a aVar, t<Data, ResourceType, R> tVar) {
        com.bumptech.glide.load.i iVarA = a(aVar);
        com.bumptech.glide.load.m.e<Data> eVarB = this.f3557i.f().b(data);
        try {
            return tVar.a(eVarB, iVarA, this.m, this.n, new c(aVar));
        } finally {
            eVarB.b();
        }
    }

    private void a(v<R> vVar, com.bumptech.glide.load.a aVar) {
        n();
        this.q.a(vVar, aVar);
    }

    private void a(String str, long j2) {
        a(str, j2, (String) null);
    }

    private void a(String str, long j2, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(c.a.a.t.f.a(j2));
        sb.append(", load key: ");
        sb.append(this.l);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(v<R> vVar, com.bumptech.glide.load.a aVar) {
        if (vVar instanceof r) {
            ((r) vVar).initialize();
        }
        u uVar = 0;
        if (this.f3555g.b()) {
            vVar = u.b(vVar);
            uVar = vVar;
        }
        a((v) vVar, aVar);
        this.s = EnumC0142h.ENCODE;
        try {
            if (this.f3555g.b()) {
                this.f3555g.a(this.f3553e, this.p);
            }
            i();
        } finally {
            if (uVar != 0) {
                uVar.e();
            }
        }
    }

    private void e() {
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Retrieved data", this.u, "data: " + this.A + ", cache key: " + this.y + ", fetcher: " + this.C);
        }
        v<R> vVarA = null;
        try {
            vVarA = a(this.C, this.A, this.B);
        } catch (q e2) {
            e2.a(this.z, this.B);
            this.f3551c.add(e2);
        }
        if (vVarA != null) {
            b(vVarA, this.B);
        } else {
            l();
        }
    }

    private com.bumptech.glide.load.n.f f() {
        int i2 = a.f3561b[this.s.ordinal()];
        if (i2 == 1) {
            return new w(this.f3550b, this);
        }
        if (i2 == 2) {
            return new com.bumptech.glide.load.n.c(this.f3550b, this);
        }
        if (i2 == 3) {
            return new z(this.f3550b, this);
        }
        if (i2 == 4) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.s);
    }

    private int g() {
        return this.f3559k.ordinal();
    }

    private void h() {
        n();
        this.q.a(new q("Failed to load resource", new ArrayList(this.f3551c)));
        j();
    }

    private void i() {
        if (this.f3556h.a()) {
            k();
        }
    }

    private void j() {
        if (this.f3556h.b()) {
            k();
        }
    }

    private void k() {
        this.f3556h.c();
        this.f3555g.a();
        this.f3550b.a();
        this.E = false;
        this.f3557i = null;
        this.f3558j = null;
        this.p = null;
        this.f3559k = null;
        this.l = null;
        this.q = null;
        this.s = null;
        this.D = null;
        this.x = null;
        this.y = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.u = 0L;
        this.F = false;
        this.w = null;
        this.f3551c.clear();
        this.f3554f.a(this);
    }

    private void l() {
        this.x = Thread.currentThread();
        this.u = c.a.a.t.f.a();
        boolean zA = false;
        while (!this.F && this.D != null && !(zA = this.D.a())) {
            this.s = a(this.s);
            this.D = f();
            if (this.s == EnumC0142h.SOURCE) {
                b();
                return;
            }
        }
        if ((this.s == EnumC0142h.FINISHED || this.F) && !zA) {
            h();
        }
    }

    private void m() {
        int i2 = a.f3560a[this.t.ordinal()];
        if (i2 == 1) {
            this.s = a(EnumC0142h.INITIALIZE);
            this.D = f();
        } else if (i2 != 2) {
            if (i2 == 3) {
                e();
                return;
            }
            throw new IllegalStateException("Unrecognized run reason: " + this.t);
        }
        l();
    }

    private void n() {
        Throwable th;
        this.f3552d.a();
        if (!this.E) {
            this.E = true;
            return;
        }
        if (this.f3551c.isEmpty()) {
            th = null;
        } else {
            List<Throwable> list = this.f3551c;
            th = list.get(list.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(h<?> hVar) {
        int iG = g() - hVar.g();
        return iG == 0 ? this.r - hVar.r : iG;
    }

    h<R> a(c.a.a.e eVar, Object obj, n nVar, com.bumptech.glide.load.g gVar, int i2, int i3, Class<?> cls, Class<R> cls2, c.a.a.h hVar, j jVar, Map<Class<?>, com.bumptech.glide.load.l<?>> map, boolean z, boolean z2, boolean z3, com.bumptech.glide.load.i iVar, b<R> bVar, int i4) {
        this.f3550b.a(eVar, obj, gVar, i2, i3, jVar, cls, cls2, hVar, iVar, map, z, z2, this.f3553e);
        this.f3557i = eVar;
        this.f3558j = gVar;
        this.f3559k = hVar;
        this.l = nVar;
        this.m = i2;
        this.n = i3;
        this.o = jVar;
        this.v = z3;
        this.p = iVar;
        this.q = bVar;
        this.r = i4;
        this.t = g.INITIALIZE;
        this.w = obj;
        return this;
    }

    <Z> v<Z> a(com.bumptech.glide.load.a aVar, v<Z> vVar) {
        v<Z> vVarA;
        com.bumptech.glide.load.l<Z> lVar;
        com.bumptech.glide.load.c cVarA;
        com.bumptech.glide.load.g dVar;
        Class<?> cls = vVar.get().getClass();
        com.bumptech.glide.load.k<Z> kVarA = null;
        if (aVar != com.bumptech.glide.load.a.RESOURCE_DISK_CACHE) {
            com.bumptech.glide.load.l<Z> lVarB = this.f3550b.b(cls);
            lVar = lVarB;
            vVarA = lVarB.a(this.f3557i, vVar, this.m, this.n);
        } else {
            vVarA = vVar;
            lVar = null;
        }
        if (!vVar.equals(vVarA)) {
            vVar.a();
        }
        if (this.f3550b.b((v<?>) vVarA)) {
            kVarA = this.f3550b.a((v) vVarA);
            cVarA = kVarA.a(this.p);
        } else {
            cVarA = com.bumptech.glide.load.c.NONE;
        }
        com.bumptech.glide.load.k kVar = kVarA;
        if (!this.o.a(!this.f3550b.a(this.y), aVar, cVarA)) {
            return vVarA;
        }
        if (kVar == null) {
            throw new i.d(vVarA.get().getClass());
        }
        int i2 = a.f3562c[cVarA.ordinal()];
        if (i2 == 1) {
            dVar = new com.bumptech.glide.load.n.d(this.y, this.f3558j);
        } else {
            if (i2 != 2) {
                throw new IllegalArgumentException("Unknown strategy: " + cVarA);
            }
            dVar = new x(this.f3550b.b(), this.y, this.f3558j, this.m, this.n, lVar, cls, this.p);
        }
        u uVarB = u.b(vVarA);
        this.f3555g.a(dVar, kVar, uVarB);
        return uVarB;
    }

    public void a() {
        this.F = true;
        com.bumptech.glide.load.n.f fVar = this.D;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // com.bumptech.glide.load.n.f.a
    public void a(com.bumptech.glide.load.g gVar, Exception exc, com.bumptech.glide.load.m.d<?> dVar, com.bumptech.glide.load.a aVar) {
        dVar.b();
        q qVar = new q("Fetching data failed", exc);
        qVar.a(gVar, aVar, dVar.a());
        this.f3551c.add(qVar);
        if (Thread.currentThread() == this.x) {
            l();
        } else {
            this.t = g.SWITCH_TO_SOURCE_SERVICE;
            this.q.a((h<?>) this);
        }
    }

    @Override // com.bumptech.glide.load.n.f.a
    public void a(com.bumptech.glide.load.g gVar, Object obj, com.bumptech.glide.load.m.d<?> dVar, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.g gVar2) {
        this.y = gVar;
        this.A = obj;
        this.C = dVar;
        this.B = aVar;
        this.z = gVar2;
        if (Thread.currentThread() != this.x) {
            this.t = g.DECODE_DATA;
            this.q.a((h<?>) this);
        } else {
            c.a.a.t.l.b.a("DecodeJob.decodeFromRetrievedData");
            try {
                e();
            } finally {
                c.a.a.t.l.b.a();
            }
        }
    }

    void a(boolean z) {
        if (this.f3556h.a(z)) {
            k();
        }
    }

    @Override // com.bumptech.glide.load.n.f.a
    public void b() {
        this.t = g.SWITCH_TO_SOURCE_SERVICE;
        this.q.a((h<?>) this);
    }

    boolean c() {
        EnumC0142h enumC0142hA = a(EnumC0142h.INITIALIZE);
        return enumC0142hA == EnumC0142h.RESOURCE_CACHE || enumC0142hA == EnumC0142h.DATA_CACHE;
    }

    @Override // c.a.a.t.l.a.f
    public c.a.a.t.l.c d() {
        return this.f3552d;
    }

    @Override // java.lang.Runnable
    public void run() {
        c.a.a.t.l.b.a("DecodeJob#run(model=%s)", this.w);
        com.bumptech.glide.load.m.d<?> dVar = this.C;
        try {
            try {
                try {
                    if (this.F) {
                        h();
                        if (dVar != null) {
                            dVar.b();
                        }
                        c.a.a.t.l.b.a();
                        return;
                    }
                    m();
                    if (dVar != null) {
                        dVar.b();
                    }
                    c.a.a.t.l.b.a();
                } catch (Throwable th) {
                    if (Log.isLoggable("DecodeJob", 3)) {
                        Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.F + ", stage: " + this.s, th);
                    }
                    if (this.s != EnumC0142h.ENCODE) {
                        this.f3551c.add(th);
                        h();
                    }
                    if (!this.F) {
                        throw th;
                    }
                    throw th;
                }
            } catch (com.bumptech.glide.load.n.b e2) {
                throw e2;
            }
        } catch (Throwable th2) {
            if (dVar != null) {
                dVar.b();
            }
            c.a.a.t.l.b.a();
            throw th2;
        }
    }
}
