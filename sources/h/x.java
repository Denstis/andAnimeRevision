package h;

import h.c0;
import h.e;
import h.p;
import h.s;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class x implements Cloneable, e.a, g0 {
    static final List<y> C = h.h0.c.a(y.HTTP_2, y.HTTP_1_1);
    static final List<k> D = h.h0.c.a(k.f4857f, k.f4859h);
    final int A;
    final int B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final n f4945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Proxy f4946c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final List<y> f4947d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<k> f4948e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final List<u> f4949f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final List<u> f4950g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final p.c f4951h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final ProxySelector f4952i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final m f4953j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final c f4954k;
    final h.h0.e.d l;
    final SocketFactory m;
    final SSLSocketFactory n;
    final h.h0.k.c o;
    final HostnameVerifier p;
    final g q;
    final h.b r;
    final h.b s;
    final j t;
    final o u;
    final boolean v;
    final boolean w;
    final boolean x;
    final int y;
    final int z;

    final class a extends h.h0.a {
        a() {
        }

        @Override // h.h0.a
        public int a(c0.a aVar) {
            return aVar.f4462c;
        }

        @Override // h.h0.a
        public h.h0.f.c a(j jVar, h.a aVar, h.h0.f.g gVar, e0 e0Var) {
            return jVar.a(aVar, gVar, e0Var);
        }

        @Override // h.h0.a
        public h.h0.f.d a(j jVar) {
            return jVar.f4853e;
        }

        @Override // h.h0.a
        public Socket a(j jVar, h.a aVar, h.h0.f.g gVar) {
            return jVar.a(aVar, gVar);
        }

        @Override // h.h0.a
        public void a(k kVar, SSLSocket sSLSocket, boolean z) {
            kVar.a(sSLSocket, z);
        }

        @Override // h.h0.a
        public void a(s.a aVar, String str) {
            aVar.a(str);
        }

        @Override // h.h0.a
        public void a(s.a aVar, String str, String str2) {
            aVar.b(str, str2);
        }

        @Override // h.h0.a
        public boolean a(h.a aVar, h.a aVar2) {
            return aVar.a(aVar2);
        }

        @Override // h.h0.a
        public boolean a(j jVar, h.h0.f.c cVar) {
            return jVar.a(cVar);
        }

        @Override // h.h0.a
        public void b(j jVar, h.h0.f.c cVar) {
            jVar.b(cVar);
        }
    }

    public static final class b {
        int A;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Proxy f4956b;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        c f4964j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        h.h0.e.d f4965k;
        SSLSocketFactory m;
        h.h0.k.c n;
        h.b q;
        h.b r;
        j s;
        o t;
        boolean u;
        boolean v;
        boolean w;
        int x;
        int y;
        int z;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final List<u> f4959e = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final List<u> f4960f = new ArrayList();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        n f4955a = new n();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<y> f4957c = x.C;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        List<k> f4958d = x.D;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        p.c f4961g = p.a(p.f4888a);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        ProxySelector f4962h = ProxySelector.getDefault();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        m f4963i = m.f4879a;
        SocketFactory l = SocketFactory.getDefault();
        HostnameVerifier o = h.h0.k.d.f4838a;
        g p = g.f4508c;

        public b() {
            h.b bVar = h.b.f4442a;
            this.q = bVar;
            this.r = bVar;
            this.s = new j();
            this.t = o.f4887a;
            this.u = true;
            this.v = true;
            this.w = true;
            this.x = 10000;
            this.y = 10000;
            this.z = 10000;
            this.A = 0;
        }

        public b a(long j2, TimeUnit timeUnit) {
            this.x = h.h0.c.a("timeout", j2, timeUnit);
            return this;
        }

        public b a(u uVar) {
            if (uVar == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.f4959e.add(uVar);
            return this;
        }

        public b a(List<k> list) {
            this.f4958d = h.h0.c.a(list);
            return this;
        }

        public b a(boolean z) {
            this.w = z;
            return this;
        }

        public x a() {
            return new x(this);
        }

        public b b(long j2, TimeUnit timeUnit) {
            this.y = h.h0.c.a("timeout", j2, timeUnit);
            return this;
        }

        public b c(long j2, TimeUnit timeUnit) {
            this.z = h.h0.c.a("timeout", j2, timeUnit);
            return this;
        }
    }

    static {
        h.h0.a.f4527a = new a();
    }

    public x() {
        this(new b());
    }

    x(b bVar) {
        boolean z;
        h.h0.k.c cVarA;
        this.f4945b = bVar.f4955a;
        this.f4946c = bVar.f4956b;
        this.f4947d = bVar.f4957c;
        this.f4948e = bVar.f4958d;
        this.f4949f = h.h0.c.a(bVar.f4959e);
        this.f4950g = h.h0.c.a(bVar.f4960f);
        this.f4951h = bVar.f4961g;
        this.f4952i = bVar.f4962h;
        this.f4953j = bVar.f4963i;
        this.f4954k = bVar.f4964j;
        this.l = bVar.f4965k;
        this.m = bVar.l;
        Iterator<k> it = this.f4948e.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z = z || it.next().b();
            }
        }
        if (bVar.m == null && z) {
            X509TrustManager x509TrustManagerB = B();
            this.n = a(x509TrustManagerB);
            cVarA = h.h0.k.c.a(x509TrustManagerB);
        } else {
            this.n = bVar.m;
            cVarA = bVar.n;
        }
        this.o = cVarA;
        this.p = bVar.o;
        this.q = bVar.p.a(this.o);
        this.r = bVar.q;
        this.s = bVar.r;
        this.t = bVar.s;
        this.u = bVar.t;
        this.v = bVar.u;
        this.w = bVar.v;
        this.x = bVar.w;
        this.y = bVar.x;
        this.z = bVar.y;
        this.A = bVar.z;
        this.B = bVar.A;
        if (this.f4949f.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f4949f);
        }
        if (this.f4950g.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.f4950g);
        }
    }

    private X509TrustManager B() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e2) {
            throw h.h0.c.a("No System TLS", (Exception) e2);
        }
    }

    private SSLSocketFactory a(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContextA = h.h0.j.f.c().a();
            sSLContextA.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContextA.getSocketFactory();
        } catch (GeneralSecurityException e2) {
            throw h.h0.c.a("No System TLS", (Exception) e2);
        }
    }

    public int A() {
        return this.A;
    }

    public h.b a() {
        return this.s;
    }

    @Override // h.e.a
    public e a(a0 a0Var) {
        return z.a(this, a0Var, false);
    }

    public g b() {
        return this.q;
    }

    public int c() {
        return this.y;
    }

    public j d() {
        return this.t;
    }

    public List<k> e() {
        return this.f4948e;
    }

    public m f() {
        return this.f4953j;
    }

    public n g() {
        return this.f4945b;
    }

    public o h() {
        return this.u;
    }

    public p.c i() {
        return this.f4951h;
    }

    public boolean l() {
        return this.w;
    }

    public boolean m() {
        return this.v;
    }

    public HostnameVerifier n() {
        return this.p;
    }

    public List<u> o() {
        return this.f4949f;
    }

    h.h0.e.d p() {
        c cVar = this.f4954k;
        return cVar != null ? cVar.f4449b : this.l;
    }

    public List<u> q() {
        return this.f4950g;
    }

    public int r() {
        return this.B;
    }

    public List<y> s() {
        return this.f4947d;
    }

    public Proxy t() {
        return this.f4946c;
    }

    public h.b u() {
        return this.r;
    }

    public ProxySelector v() {
        return this.f4952i;
    }

    public int w() {
        return this.z;
    }

    public boolean x() {
        return this.x;
    }

    public SocketFactory y() {
        return this.m;
    }

    public SSLSocketFactory z() {
        return this.n;
    }
}
