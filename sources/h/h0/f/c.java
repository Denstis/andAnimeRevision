package h.h0.f;

import h.a0;
import h.c0;
import h.e0;
import h.h0.i.g;
import h.i;
import h.j;
import h.k;
import h.p;
import h.r;
import h.t;
import h.u;
import h.x;
import h.y;
import i.l;
import i.s;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes.dex */
public final class c extends g.h implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f4565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e0 f4566c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Socket f4567d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Socket f4568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r f4569f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private y f4570g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private h.h0.i.g f4571h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private i.e f4572i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private i.d f4573j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4574k;
    public int l;
    public int m = 1;
    public final List<Reference<g>> n = new ArrayList();
    public long o = Long.MAX_VALUE;

    public c(j jVar, e0 e0Var) {
        this.f4565b = jVar;
        this.f4566c = e0Var;
    }

    private a0 a(int i2, int i3, a0 a0Var, t tVar) throws IOException {
        String str = "CONNECT " + h.h0.c.a(tVar, true) + " HTTP/1.1";
        while (true) {
            h.h0.h.a aVar = new h.h0.h.a(null, null, this.f4572i, this.f4573j);
            this.f4572i.b().a(i2, TimeUnit.MILLISECONDS);
            this.f4573j.b().a(i3, TimeUnit.MILLISECONDS);
            aVar.a(a0Var.c(), str);
            aVar.a();
            c0.a aVarA = aVar.a(false);
            aVarA.a(a0Var);
            c0 c0VarA = aVarA.a();
            long jA = h.h0.g.e.a(c0VarA);
            if (jA == -1) {
                jA = 0;
            }
            s sVarB = aVar.b(jA);
            h.h0.c.b(sVarB, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
            sVarB.close();
            int iL = c0VarA.l();
            if (iL == 200) {
                if (this.f4572i.a().c() && this.f4573j.a().c()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iL != 407) {
                throw new IOException("Unexpected response code for CONNECT: " + c0VarA.l());
            }
            a0 a0VarA = this.f4566c.a().g().a(this.f4566c, c0VarA);
            if (a0VarA == null) {
                throw new IOException("Failed to authenticate with proxy");
            }
            if ("close".equalsIgnoreCase(c0VarA.b("Connection"))) {
                return a0VarA;
            }
            a0Var = a0VarA;
        }
    }

    private void a(int i2, int i3, int i4, h.e eVar, p pVar) throws IOException {
        a0 a0VarG = g();
        t tVarG = a0VarG.g();
        for (int i5 = 0; i5 < 21; i5++) {
            a(i2, i3, eVar, pVar);
            a0VarG = a(i3, i4, a0VarG, tVarG);
            if (a0VarG == null) {
                return;
            }
            h.h0.c.a(this.f4567d);
            this.f4567d = null;
            this.f4573j = null;
            this.f4572i = null;
            pVar.a(eVar, this.f4566c.d(), this.f4566c.b(), null);
        }
    }

    private void a(int i2, int i3, h.e eVar, p pVar) throws IOException {
        Proxy proxyB = this.f4566c.b();
        this.f4567d = (proxyB.type() == Proxy.Type.DIRECT || proxyB.type() == Proxy.Type.HTTP) ? this.f4566c.a().i().createSocket() : new Socket(proxyB);
        pVar.a(eVar, this.f4566c.d(), proxyB);
        this.f4567d.setSoTimeout(i3);
        try {
            h.h0.j.f.c().a(this.f4567d, this.f4566c.d(), i2);
            try {
                this.f4572i = l.a(l.b(this.f4567d));
                this.f4573j = l.a(l.a(this.f4567d));
            } catch (NullPointerException e2) {
                if ("throw with null exception".equals(e2.getMessage())) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f4566c.d());
            connectException.initCause(e3);
            throw connectException;
        }
    }

    private void a(b bVar) throws Throwable {
        SSLSocket sSLSocket;
        h.a aVarA = this.f4566c.a();
        try {
            try {
                sSLSocket = (SSLSocket) aVarA.j().createSocket(this.f4567d, aVarA.k().g(), aVarA.k().k(), true);
            } catch (AssertionError e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
            sSLSocket = null;
        }
        try {
            k kVarA = bVar.a(sSLSocket);
            if (kVarA.c()) {
                h.h0.j.f.c().a(sSLSocket, aVarA.k().g(), aVarA.e());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            if (!a(session)) {
                throw new IOException("a valid ssl session was not established");
            }
            r rVarA = r.a(session);
            if (aVarA.d().verify(aVarA.k().g(), session)) {
                aVarA.a().a(aVarA.k().g(), rVarA.b());
                String strB = kVarA.c() ? h.h0.j.f.c().b(sSLSocket) : null;
                this.f4568e = sSLSocket;
                this.f4572i = l.a(l.b(this.f4568e));
                this.f4573j = l.a(l.a(this.f4568e));
                this.f4569f = rVarA;
                this.f4570g = strB != null ? y.a(strB) : y.HTTP_1_1;
                if (sSLSocket != null) {
                    h.h0.j.f.c().a(sSLSocket);
                    return;
                }
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) rVarA.b().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + aVarA.k().g() + " not verified:\n    certificate: " + h.g.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + h.h0.k.d.a(x509Certificate));
        } catch (AssertionError e3) {
            e = e3;
            if (!h.h0.c.a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            if (sSLSocket != null) {
                h.h0.j.f.c().a(sSLSocket);
            }
            h.h0.c.a((Socket) sSLSocket);
            throw th;
        }
    }

    private void a(b bVar, int i2, h.e eVar, p pVar) throws Throwable {
        if (this.f4566c.a().j() == null) {
            this.f4570g = y.HTTP_1_1;
            this.f4568e = this.f4567d;
            return;
        }
        pVar.g(eVar);
        a(bVar);
        pVar.a(eVar, this.f4569f);
        if (this.f4570g == y.HTTP_2) {
            this.f4568e.setSoTimeout(0);
            g.C0188g c0188g = new g.C0188g(true);
            c0188g.a(this.f4568e, this.f4566c.a().k().g(), this.f4572i, this.f4573j);
            c0188g.a(this);
            c0188g.a(i2);
            this.f4571h = c0188g.a();
            this.f4571h.l();
        }
    }

    private boolean a(SSLSession sSLSession) {
        return ("NONE".equals(sSLSession.getProtocol()) || "SSL_NULL_WITH_NULL_NULL".equals(sSLSession.getCipherSuite())) ? false : true;
    }

    private a0 g() {
        a0.a aVar = new a0.a();
        aVar.a(this.f4566c.a().k());
        aVar.b("Host", h.h0.c.a(this.f4566c.a().k(), true));
        aVar.b("Proxy-Connection", "Keep-Alive");
        aVar.b("User-Agent", h.h0.d.a());
        return aVar.a();
    }

    public h.h0.g.c a(x xVar, u.a aVar, g gVar) throws SocketException {
        h.h0.i.g gVar2 = this.f4571h;
        if (gVar2 != null) {
            return new h.h0.i.f(xVar, aVar, gVar, gVar2);
        }
        this.f4568e.setSoTimeout(aVar.a());
        this.f4572i.b().a(aVar.a(), TimeUnit.MILLISECONDS);
        this.f4573j.b().a(aVar.b(), TimeUnit.MILLISECONDS);
        return new h.h0.h.a(xVar, gVar, this.f4572i, this.f4573j);
    }

    @Override // h.i
    public y a() {
        return this.f4570g;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e2 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0131 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(int r17, int r18, int r19, int r20, boolean r21, h.e r22, h.p r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h.h0.f.c.a(int, int, int, int, boolean, h.e, h.p):void");
    }

    @Override // h.h0.i.g.h
    public void a(h.h0.i.g gVar) {
        synchronized (this.f4565b) {
            this.m = gVar.k();
        }
    }

    @Override // h.h0.i.g.h
    public void a(h.h0.i.i iVar) {
        iVar.a(h.h0.i.b.REFUSED_STREAM);
    }

    public boolean a(h.a aVar, e0 e0Var) {
        if (this.n.size() >= this.m || this.f4574k || !h.h0.a.f4527a.a(this.f4566c.a(), aVar)) {
            return false;
        }
        if (aVar.k().g().equals(e().a().k().g())) {
            return true;
        }
        if (this.f4571h == null || e0Var == null || e0Var.b().type() != Proxy.Type.DIRECT || this.f4566c.b().type() != Proxy.Type.DIRECT || !this.f4566c.d().equals(e0Var.d()) || e0Var.a().d() != h.h0.k.d.f4838a || !a(aVar.k())) {
            return false;
        }
        try {
            aVar.a().a(aVar.k().g(), c().b());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean a(t tVar) {
        if (tVar.k() != this.f4566c.a().k().k()) {
            return false;
        }
        if (tVar.g().equals(this.f4566c.a().k().g())) {
            return true;
        }
        return this.f4569f != null && h.h0.k.d.f4838a.a(tVar.g(), (X509Certificate) this.f4569f.b().get(0));
    }

    public boolean a(boolean z) {
        if (this.f4568e.isClosed() || this.f4568e.isInputShutdown() || this.f4568e.isOutputShutdown()) {
            return false;
        }
        if (this.f4571h != null) {
            return !r0.j();
        }
        if (z) {
            try {
                int soTimeout = this.f4568e.getSoTimeout();
                try {
                    this.f4568e.setSoTimeout(1);
                    return !this.f4572i.c();
                } finally {
                    this.f4568e.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    public void b() {
        h.h0.c.a(this.f4567d);
    }

    public r c() {
        return this.f4569f;
    }

    public boolean d() {
        return this.f4571h != null;
    }

    public e0 e() {
        return this.f4566c;
    }

    public Socket f() {
        return this.f4568e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f4566c.a().k().g());
        sb.append(":");
        sb.append(this.f4566c.a().k().k());
        sb.append(", proxy=");
        sb.append(this.f4566c.b());
        sb.append(" hostAddress=");
        sb.append(this.f4566c.d());
        sb.append(" cipherSuite=");
        r rVar = this.f4569f;
        sb.append(rVar != null ? rVar.a() : "none");
        sb.append(" protocol=");
        sb.append(this.f4570g);
        sb.append('}');
        return sb.toString();
    }
}
