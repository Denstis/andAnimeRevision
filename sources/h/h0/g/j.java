package h.h0.g;

import h.a0;
import h.b0;
import h.c0;
import h.d0;
import h.e0;
import h.p;
import h.t;
import h.u;
import h.x;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public final class j implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f4620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile h.h0.f.g f4622c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f4623d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f4624e;

    public j(x xVar, boolean z) {
        this.f4620a = xVar;
        this.f4621b = z;
    }

    private int a(c0 c0Var, int i2) {
        String strB = c0Var.b("Retry-After");
        if (strB == null) {
            return i2;
        }
        if (strB.matches("\\d+")) {
            return Integer.valueOf(strB).intValue();
        }
        return Integer.MAX_VALUE;
    }

    private a0 a(c0 c0Var, e0 e0Var) throws ProtocolException {
        String strB;
        t tVarB;
        if (c0Var == null) {
            throw new IllegalStateException();
        }
        int iL = c0Var.l();
        String strE = c0Var.t().e();
        if (iL == 307 || iL == 308) {
            if (!strE.equals("GET") && !strE.equals("HEAD")) {
                return null;
            }
        } else {
            if (iL == 401) {
                return this.f4620a.a().a(e0Var, c0Var);
            }
            if (iL == 503) {
                if ((c0Var.r() == null || c0Var.r().l() != 503) && a(c0Var, Integer.MAX_VALUE) == 0) {
                    return c0Var.t();
                }
                return null;
            }
            if (iL == 407) {
                if ((e0Var != null ? e0Var.b() : this.f4620a.t()).type() == Proxy.Type.HTTP) {
                    return this.f4620a.u().a(e0Var, c0Var);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (iL == 408) {
                if (!this.f4620a.x()) {
                    return null;
                }
                c0Var.t().a();
                if ((c0Var.r() == null || c0Var.r().l() != 408) && a(c0Var, 0) <= 0) {
                    return c0Var.t();
                }
                return null;
            }
            switch (iL) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        if (!this.f4620a.l() || (strB = c0Var.b("Location")) == null || (tVarB = c0Var.t().g().b(strB)) == null) {
            return null;
        }
        if (!tVarB.n().equals(c0Var.t().g().n()) && !this.f4620a.m()) {
            return null;
        }
        a0.a aVarF = c0Var.t().f();
        if (f.b(strE)) {
            boolean zD = f.d(strE);
            if (f.c(strE)) {
                aVarF.a("GET", (b0) null);
            } else {
                aVarF.a(strE, zD ? c0Var.t().a() : null);
            }
            if (!zD) {
                aVarF.a("Transfer-Encoding");
                aVarF.a("Content-Length");
                aVarF.a("Content-Type");
            }
        }
        if (!a(c0Var, tVarB)) {
            aVarF.a("Authorization");
        }
        aVarF.a(tVarB);
        return aVarF.a();
    }

    private h.a a(t tVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifierN;
        h.g gVarB;
        if (tVar.h()) {
            SSLSocketFactory sSLSocketFactoryZ = this.f4620a.z();
            hostnameVerifierN = this.f4620a.n();
            sSLSocketFactory = sSLSocketFactoryZ;
            gVarB = this.f4620a.b();
        } else {
            sSLSocketFactory = null;
            hostnameVerifierN = null;
            gVarB = null;
        }
        return new h.a(tVar.g(), tVar.k(), this.f4620a.h(), this.f4620a.y(), sSLSocketFactory, hostnameVerifierN, gVarB, this.f4620a.u(), this.f4620a.t(), this.f4620a.s(), this.f4620a.e(), this.f4620a.v());
    }

    private boolean a(c0 c0Var, t tVar) {
        t tVarG = c0Var.t().g();
        return tVarG.g().equals(tVar.g()) && tVarG.k() == tVar.k() && tVarG.n().equals(tVar.n());
    }

    private boolean a(IOException iOException, h.h0.f.g gVar, boolean z, a0 a0Var) {
        gVar.a(iOException);
        if (!this.f4620a.x()) {
            return false;
        }
        if (z) {
            a0Var.a();
        }
        return a(iOException, z) && gVar.d();
    }

    private boolean a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    @Override // h.u
    public c0 a(u.a aVar) throws IOException {
        c0 c0VarA;
        a0 a0VarA;
        a0 a0VarE = aVar.e();
        g gVar = (g) aVar;
        h.e eVarF = gVar.f();
        p pVarG = gVar.g();
        h.h0.f.g gVar2 = new h.h0.f.g(this.f4620a.d(), a(a0VarE.g()), eVarF, pVarG, this.f4623d);
        this.f4622c = gVar2;
        c0 c0Var = null;
        int i2 = 0;
        while (!this.f4624e) {
            try {
                try {
                    c0VarA = gVar.a(a0VarE, gVar2, null, null);
                    if (c0Var != null) {
                        c0.a aVarQ = c0VarA.q();
                        c0.a aVarQ2 = c0Var.q();
                        aVarQ2.a((d0) null);
                        aVarQ.c(aVarQ2.a());
                        c0VarA = aVarQ.a();
                    }
                    a0VarA = a(c0VarA, gVar2.g());
                } catch (h.h0.f.e e2) {
                    if (!a(e2.a(), gVar2, false, a0VarE)) {
                        throw e2.a();
                    }
                } catch (IOException e3) {
                    if (!a(e3, gVar2, !(e3 instanceof h.h0.i.a), a0VarE)) {
                        throw e3;
                    }
                }
                if (a0VarA == null) {
                    if (!this.f4621b) {
                        gVar2.f();
                    }
                    return c0VarA;
                }
                h.h0.c.a(c0VarA.j());
                int i3 = i2 + 1;
                if (i3 > 20) {
                    gVar2.f();
                    throw new ProtocolException("Too many follow-up requests: " + i3);
                }
                a0VarA.a();
                if (!a(c0VarA, a0VarA.g())) {
                    gVar2.f();
                    gVar2 = new h.h0.f.g(this.f4620a.d(), a(a0VarA.g()), eVarF, pVarG, this.f4623d);
                    this.f4622c = gVar2;
                } else if (gVar2.b() != null) {
                    throw new IllegalStateException("Closing the body of " + c0VarA + " didn't close its backing stream. Bad interceptor?");
                }
                c0Var = c0VarA;
                a0VarE = a0VarA;
                i2 = i3;
            } catch (Throwable th) {
                gVar2.a((IOException) null);
                gVar2.f();
                throw th;
            }
        }
        gVar2.f();
        throw new IOException("Canceled");
    }

    public void a() {
        this.f4624e = true;
        h.h0.f.g gVar = this.f4622c;
        if (gVar != null) {
            gVar.a();
        }
    }

    public void a(Object obj) {
        this.f4623d = obj;
    }

    public boolean b() {
        return this.f4624e;
    }
}
