package h.h0.i;

import com.google.android.exoplayer2.C;
import h.h0.i.h;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Closeable {
    private static final ExecutorService v = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), h.h0.c.a("OkHttp Http2Connection", true));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f4707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final h f4708c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final String f4710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f4711f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f4712g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f4713h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ScheduledExecutorService f4714i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ExecutorService f4715j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final l f4716k;
    private boolean l;
    long n;
    final Socket r;
    final h.h0.i.j s;
    final j t;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Map<Integer, h.h0.i.i> f4709d = new LinkedHashMap();
    long m = 0;
    m o = new m();
    final m p = new m();
    boolean q = false;
    final Set<Integer> u = new LinkedHashSet();

    class a extends h.h0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f4717c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ h.h0.i.b f4718d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Object[] objArr, int i2, h.h0.i.b bVar) {
            super(str, objArr);
            this.f4717c = i2;
            this.f4718d = bVar;
        }

        @Override // h.h0.b
        public void b() {
            try {
                g.this.b(this.f4717c, this.f4718d);
            } catch (IOException unused) {
                g.this.n();
            }
        }
    }

    class b extends h.h0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f4720c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f4721d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, Object[] objArr, int i2, long j2) {
            super(str, objArr);
            this.f4720c = i2;
            this.f4721d = j2;
        }

        @Override // h.h0.b
        public void b() {
            try {
                g.this.s.a(this.f4720c, this.f4721d);
            } catch (IOException unused) {
                g.this.n();
            }
        }
    }

    class c extends h.h0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f4723c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ List f4724d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, Object[] objArr, int i2, List list) {
            super(str, objArr);
            this.f4723c = i2;
            this.f4724d = list;
        }

        @Override // h.h0.b
        public void b() {
            if (g.this.f4716k.a(this.f4723c, this.f4724d)) {
                try {
                    g.this.s.a(this.f4723c, h.h0.i.b.CANCEL);
                    synchronized (g.this) {
                        g.this.u.remove(Integer.valueOf(this.f4723c));
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    class d extends h.h0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f4726c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ List f4727d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f4728e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Object[] objArr, int i2, List list, boolean z) {
            super(str, objArr);
            this.f4726c = i2;
            this.f4727d = list;
            this.f4728e = z;
        }

        @Override // h.h0.b
        public void b() {
            boolean zA = g.this.f4716k.a(this.f4726c, this.f4727d, this.f4728e);
            if (zA) {
                try {
                    g.this.s.a(this.f4726c, h.h0.i.b.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (zA || this.f4728e) {
                synchronized (g.this) {
                    g.this.u.remove(Integer.valueOf(this.f4726c));
                }
            }
        }
    }

    class e extends h.h0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f4730c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ i.c f4731d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f4732e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f4733f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, Object[] objArr, int i2, i.c cVar, int i3, boolean z) {
            super(str, objArr);
            this.f4730c = i2;
            this.f4731d = cVar;
            this.f4732e = i3;
            this.f4733f = z;
        }

        @Override // h.h0.b
        public void b() {
            try {
                boolean zA = g.this.f4716k.a(this.f4730c, this.f4731d, this.f4732e, this.f4733f);
                if (zA) {
                    g.this.s.a(this.f4730c, h.h0.i.b.CANCEL);
                }
                if (zA || this.f4733f) {
                    synchronized (g.this) {
                        g.this.u.remove(Integer.valueOf(this.f4730c));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    class f extends h.h0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f4735c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ h.h0.i.b f4736d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, Object[] objArr, int i2, h.h0.i.b bVar) {
            super(str, objArr);
            this.f4735c = i2;
            this.f4736d = bVar;
        }

        @Override // h.h0.b
        public void b() {
            g.this.f4716k.a(this.f4735c, this.f4736d);
            synchronized (g.this) {
                g.this.u.remove(Integer.valueOf(this.f4735c));
            }
        }
    }

    /* JADX INFO: renamed from: h.h0.i.g$g, reason: collision with other inner class name */
    public static class C0188g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Socket f4738a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f4739b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        i.e f4740c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        i.d f4741d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        h f4742e = h.f4746a;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        l f4743f = l.f4805a;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f4744g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f4745h;

        public C0188g(boolean z) {
            this.f4744g = z;
        }

        public C0188g a(int i2) {
            this.f4745h = i2;
            return this;
        }

        public C0188g a(h hVar) {
            this.f4742e = hVar;
            return this;
        }

        public C0188g a(Socket socket, String str, i.e eVar, i.d dVar) {
            this.f4738a = socket;
            this.f4739b = str;
            this.f4740c = eVar;
            this.f4741d = dVar;
            return this;
        }

        public g a() {
            return new g(this);
        }
    }

    public static abstract class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final h f4746a = new a();

        final class a extends h {
            a() {
            }

            @Override // h.h0.i.g.h
            public void a(h.h0.i.i iVar) {
                iVar.a(h.h0.i.b.REFUSED_STREAM);
            }
        }

        public void a(g gVar) {
        }

        public abstract void a(h.h0.i.i iVar);
    }

    final class i extends h.h0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final boolean f4747c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f4748d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f4749e;

        i(boolean z, int i2, int i3) {
            super("OkHttp %s ping %08x%08x", g.this.f4710e, Integer.valueOf(i2), Integer.valueOf(i3));
            this.f4747c = z;
            this.f4748d = i2;
            this.f4749e = i3;
        }

        @Override // h.h0.b
        public void b() {
            g.this.a(this.f4747c, this.f4748d, this.f4749e);
        }
    }

    class j extends h.h0.b implements h.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final h.h0.i.h f4751c;

        class a extends h.h0.b {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ h.h0.i.i f4753c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(String str, Object[] objArr, h.h0.i.i iVar) {
                super(str, objArr);
                this.f4753c = iVar;
            }

            @Override // h.h0.b
            public void b() {
                try {
                    g.this.f4708c.a(this.f4753c);
                } catch (IOException e2) {
                    h.h0.j.f.c().a(4, "Http2Connection.Listener failure for " + g.this.f4710e, e2);
                    try {
                        this.f4753c.a(h.h0.i.b.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        class b extends h.h0.b {
            b(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // h.h0.b
            public void b() {
                g gVar = g.this;
                gVar.f4708c.a(gVar);
            }
        }

        class c extends h.h0.b {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ m f4756c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(String str, Object[] objArr, m mVar) {
                super(str, objArr);
                this.f4756c = mVar;
            }

            @Override // h.h0.b
            public void b() {
                try {
                    g.this.s.a(this.f4756c);
                } catch (IOException unused) {
                    g.this.n();
                }
            }
        }

        j(h.h0.i.h hVar) {
            super("OkHttp %s", g.this.f4710e);
            this.f4751c = hVar;
        }

        private void a(m mVar) {
            try {
                g.this.f4714i.execute(new c("OkHttp %s ACK Settings", new Object[]{g.this.f4710e}, mVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // h.h0.i.h.b
        public void a() {
        }

        @Override // h.h0.i.h.b
        public void a(int i2, int i3, int i4, boolean z) {
        }

        @Override // h.h0.i.h.b
        public void a(int i2, int i3, List<h.h0.i.c> list) {
            g.this.a(i3, list);
        }

        @Override // h.h0.i.h.b
        public void a(int i2, long j2) {
            g gVar = g.this;
            if (i2 == 0) {
                synchronized (gVar) {
                    g.this.n += j2;
                    g.this.notifyAll();
                }
                return;
            }
            h.h0.i.i iVarA = gVar.a(i2);
            if (iVarA != null) {
                synchronized (iVarA) {
                    iVarA.a(j2);
                }
            }
        }

        @Override // h.h0.i.h.b
        public void a(int i2, h.h0.i.b bVar) {
            if (g.this.b(i2)) {
                g.this.a(i2, bVar);
                return;
            }
            h.h0.i.i iVarC = g.this.c(i2);
            if (iVarC != null) {
                iVarC.c(bVar);
            }
        }

        @Override // h.h0.i.h.b
        public void a(int i2, h.h0.i.b bVar, i.f fVar) {
            h.h0.i.i[] iVarArr;
            fVar.e();
            synchronized (g.this) {
                iVarArr = (h.h0.i.i[]) g.this.f4709d.values().toArray(new h.h0.i.i[g.this.f4709d.size()]);
                g.this.f4713h = true;
            }
            for (h.h0.i.i iVar : iVarArr) {
                if (iVar.c() > i2 && iVar.f()) {
                    iVar.c(h.h0.i.b.REFUSED_STREAM);
                    g.this.c(iVar.c());
                }
            }
        }

        @Override // h.h0.i.h.b
        public void a(boolean z, int i2, int i3) {
            if (!z) {
                try {
                    g.this.f4714i.execute(g.this.new i(true, i2, i3));
                } catch (RejectedExecutionException unused) {
                }
            } else {
                synchronized (g.this) {
                    g.this.l = false;
                    g.this.notifyAll();
                }
            }
        }

        @Override // h.h0.i.h.b
        public void a(boolean z, int i2, int i3, List<h.h0.i.c> list) {
            if (g.this.b(i2)) {
                g.this.a(i2, list, z);
                return;
            }
            synchronized (g.this) {
                h.h0.i.i iVarA = g.this.a(i2);
                if (iVarA != null) {
                    iVarA.a(list);
                    if (z) {
                        iVarA.i();
                        return;
                    }
                    return;
                }
                if (g.this.f4713h) {
                    return;
                }
                if (i2 <= g.this.f4711f) {
                    return;
                }
                if (i2 % 2 == g.this.f4712g % 2) {
                    return;
                }
                h.h0.i.i iVar = new h.h0.i.i(i2, g.this, false, z, list);
                g.this.f4711f = i2;
                g.this.f4709d.put(Integer.valueOf(i2), iVar);
                g.v.execute(new a("OkHttp %s stream %d", new Object[]{g.this.f4710e, Integer.valueOf(i2)}, iVar));
            }
        }

        @Override // h.h0.i.h.b
        public void a(boolean z, int i2, i.e eVar, int i3) throws IOException {
            if (g.this.b(i2)) {
                g.this.a(i2, eVar, i3, z);
                return;
            }
            h.h0.i.i iVarA = g.this.a(i2);
            if (iVarA == null) {
                g.this.c(i2, h.h0.i.b.PROTOCOL_ERROR);
                eVar.skip(i3);
            } else {
                iVarA.a(eVar, i3);
                if (z) {
                    iVarA.i();
                }
            }
        }

        @Override // h.h0.i.h.b
        public void a(boolean z, m mVar) {
            h.h0.i.i[] iVarArr;
            long j2;
            int i2;
            synchronized (g.this) {
                int iC = g.this.p.c();
                if (z) {
                    g.this.p.a();
                }
                g.this.p.a(mVar);
                a(mVar);
                int iC2 = g.this.p.c();
                iVarArr = null;
                if (iC2 == -1 || iC2 == iC) {
                    j2 = 0;
                } else {
                    j2 = iC2 - iC;
                    if (!g.this.q) {
                        g.this.h(j2);
                        g.this.q = true;
                    }
                    if (!g.this.f4709d.isEmpty()) {
                        iVarArr = (h.h0.i.i[]) g.this.f4709d.values().toArray(new h.h0.i.i[g.this.f4709d.size()]);
                    }
                }
                g.v.execute(new b("OkHttp %s settings", g.this.f4710e));
            }
            if (iVarArr == null || j2 == 0) {
                return;
            }
            for (h.h0.i.i iVar : iVarArr) {
                synchronized (iVar) {
                    iVar.a(j2);
                }
            }
        }

        @Override // h.h0.b
        protected void b() throws Throwable {
            h.h0.i.b bVar;
            g gVar;
            h.h0.i.b bVar2 = h.h0.i.b.INTERNAL_ERROR;
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                    this.f4751c.a(this);
                    while (this.f4751c.a(false, (h.b) this)) {
                    }
                    bVar = h.h0.i.b.NO_ERROR;
                    try {
                        bVar2 = h.h0.i.b.CANCEL;
                        gVar = g.this;
                    } catch (IOException unused) {
                        bVar = h.h0.i.b.PROTOCOL_ERROR;
                        bVar2 = h.h0.i.b.PROTOCOL_ERROR;
                        gVar = g.this;
                    }
                } catch (IOException unused2) {
                }
            } catch (IOException unused3) {
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                try {
                    g.this.a(bVar, bVar2);
                } catch (IOException unused4) {
                }
                h.h0.c.a(this.f4751c);
                throw th;
            }
            gVar.a(bVar, bVar2);
            h.h0.c.a(this.f4751c);
        }
    }

    g(C0188g c0188g) {
        this.f4716k = c0188g.f4743f;
        boolean z = c0188g.f4744g;
        this.f4707b = z;
        this.f4708c = c0188g.f4742e;
        this.f4712g = z ? 1 : 2;
        if (c0188g.f4744g) {
            this.f4712g += 2;
        }
        if (c0188g.f4744g) {
            this.o.a(7, C.DEFAULT_MUXED_BUFFER_SIZE);
        }
        this.f4710e = c0188g.f4739b;
        this.f4714i = new ScheduledThreadPoolExecutor(1, h.h0.c.a(h.h0.c.a("OkHttp %s Writer", this.f4710e), false));
        if (c0188g.f4745h != 0) {
            ScheduledExecutorService scheduledExecutorService = this.f4714i;
            i iVar = new i(false, 0, 0);
            int i2 = c0188g.f4745h;
            scheduledExecutorService.scheduleAtFixedRate(iVar, i2, i2, TimeUnit.MILLISECONDS);
        }
        this.f4715j = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), h.h0.c.a(h.h0.c.a("OkHttp %s Push Observer", this.f4710e), true));
        this.p.a(7, 65535);
        this.p.a(5, 16384);
        this.n = this.p.c();
        this.r = c0188g.f4738a;
        this.s = new h.h0.i.j(c0188g.f4741d, this.f4707b);
        this.t = new j(new h.h0.i.h(c0188g.f4740c, this.f4707b));
    }

    private h.h0.i.i b(int i2, List<h.h0.i.c> list, boolean z) {
        int i3;
        h.h0.i.i iVar;
        boolean z2;
        boolean z3 = !z;
        synchronized (this.s) {
            synchronized (this) {
                if (this.f4712g > 1073741823) {
                    a(h.h0.i.b.REFUSED_STREAM);
                }
                if (this.f4713h) {
                    throw new h.h0.i.a();
                }
                i3 = this.f4712g;
                this.f4712g += 2;
                iVar = new h.h0.i.i(i3, this, z3, false, list);
                z2 = !z || this.n == 0 || iVar.f4770b == 0;
                if (iVar.g()) {
                    this.f4709d.put(Integer.valueOf(i3), iVar);
                }
            }
            if (i2 == 0) {
                this.s.a(z3, i3, i2, list);
            } else {
                if (this.f4707b) {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
                this.s.a(i2, i3, list);
            }
        }
        if (z2) {
            this.s.flush();
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        try {
            a(h.h0.i.b.PROTOCOL_ERROR, h.h0.i.b.PROTOCOL_ERROR);
        } catch (IOException unused) {
        }
    }

    synchronized h.h0.i.i a(int i2) {
        return this.f4709d.get(Integer.valueOf(i2));
    }

    public h.h0.i.i a(List<h.h0.i.c> list, boolean z) {
        return b(0, list, z);
    }

    void a(int i2, long j2) {
        try {
            this.f4714i.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.f4710e, Integer.valueOf(i2)}, i2, j2));
        } catch (RejectedExecutionException unused) {
        }
    }

    void a(int i2, h.h0.i.b bVar) {
        this.f4715j.execute(new f("OkHttp %s Push Reset[%s]", new Object[]{this.f4710e, Integer.valueOf(i2)}, i2, bVar));
    }

    void a(int i2, i.e eVar, int i3, boolean z) throws IOException {
        i.c cVar = new i.c();
        long j2 = i3;
        eVar.e(j2);
        eVar.a(cVar, j2);
        if (cVar.s() == j2) {
            this.f4715j.execute(new e("OkHttp %s Push Data[%s]", new Object[]{this.f4710e, Integer.valueOf(i2)}, i2, cVar, i3, z));
            return;
        }
        throw new IOException(cVar.s() + " != " + i3);
    }

    void a(int i2, List<h.h0.i.c> list) {
        synchronized (this) {
            if (this.u.contains(Integer.valueOf(i2))) {
                c(i2, h.h0.i.b.PROTOCOL_ERROR);
                return;
            }
            this.u.add(Integer.valueOf(i2));
            try {
                this.f4715j.execute(new c("OkHttp %s Push Request[%s]", new Object[]{this.f4710e, Integer.valueOf(i2)}, i2, list));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    void a(int i2, List<h.h0.i.c> list, boolean z) {
        try {
            this.f4715j.execute(new d("OkHttp %s Push Headers[%s]", new Object[]{this.f4710e, Integer.valueOf(i2)}, i2, list, z));
        } catch (RejectedExecutionException unused) {
        }
    }

    public void a(int i2, boolean z, i.c cVar, long j2) {
        int iMin;
        long j3;
        if (j2 == 0) {
            this.s.a(z, i2, cVar, 0);
            return;
        }
        while (j2 > 0) {
            synchronized (this) {
                while (this.n <= 0) {
                    try {
                        if (!this.f4709d.containsKey(Integer.valueOf(i2))) {
                            throw new IOException("stream closed");
                        }
                        wait();
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                iMin = Math.min((int) Math.min(j2, this.n), this.s.k());
                j3 = iMin;
                this.n -= j3;
            }
            j2 -= j3;
            this.s.a(z && j2 == 0, i2, cVar, iMin);
        }
    }

    public void a(h.h0.i.b bVar) {
        synchronized (this.s) {
            synchronized (this) {
                if (this.f4713h) {
                    return;
                }
                this.f4713h = true;
                this.s.a(this.f4711f, bVar, h.h0.c.f4529a);
            }
        }
    }

    void a(h.h0.i.b bVar, h.h0.i.b bVar2) throws IOException {
        h.h0.i.i[] iVarArr = null;
        try {
            a(bVar);
            e = null;
        } catch (IOException e2) {
            e = e2;
        }
        synchronized (this) {
            if (!this.f4709d.isEmpty()) {
                iVarArr = (h.h0.i.i[]) this.f4709d.values().toArray(new h.h0.i.i[this.f4709d.size()]);
                this.f4709d.clear();
            }
        }
        if (iVarArr != null) {
            for (h.h0.i.i iVar : iVarArr) {
                try {
                    iVar.a(bVar2);
                } catch (IOException e3) {
                    if (e != null) {
                        e = e3;
                    }
                }
            }
        }
        try {
            this.s.close();
        } catch (IOException e4) {
            if (e == null) {
                e = e4;
            }
        }
        try {
            this.r.close();
        } catch (IOException e5) {
            e = e5;
        }
        this.f4714i.shutdown();
        this.f4715j.shutdown();
        if (e != null) {
            throw e;
        }
    }

    void a(boolean z) {
        if (z) {
            this.s.j();
            this.s.b(this.o);
            if (this.o.c() != 65535) {
                this.s.a(0, r6 - 65535);
            }
        }
        new Thread(this.t).start();
    }

    void a(boolean z, int i2, int i3) {
        boolean z2;
        if (!z) {
            synchronized (this) {
                z2 = this.l;
                this.l = true;
            }
            if (z2) {
                n();
                return;
            }
        }
        try {
            this.s.a(z, i2, i3);
        } catch (IOException unused) {
            n();
        }
    }

    void b(int i2, h.h0.i.b bVar) {
        this.s.a(i2, bVar);
    }

    boolean b(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    synchronized h.h0.i.i c(int i2) {
        h.h0.i.i iVarRemove;
        iVarRemove = this.f4709d.remove(Integer.valueOf(i2));
        notifyAll();
        return iVarRemove;
    }

    void c(int i2, h.h0.i.b bVar) {
        try {
            this.f4714i.execute(new a("OkHttp %s stream %d", new Object[]{this.f4710e, Integer.valueOf(i2)}, i2, bVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a(h.h0.i.b.NO_ERROR, h.h0.i.b.CANCEL);
    }

    public void flush() {
        this.s.flush();
    }

    void h(long j2) {
        this.n += j2;
        if (j2 > 0) {
            notifyAll();
        }
    }

    public synchronized boolean j() {
        return this.f4713h;
    }

    public synchronized int k() {
        return this.p.b(Integer.MAX_VALUE);
    }

    public void l() {
        a(true);
    }
}
