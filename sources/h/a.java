package h;

import h.t;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t f4420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final o f4421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final SocketFactory f4422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b f4423d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<y> f4424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final List<k> f4425f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ProxySelector f4426g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Proxy f4427h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final SSLSocketFactory f4428i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final HostnameVerifier f4429j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final g f4430k;

    public a(String str, int i2, o oVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, g gVar, b bVar, Proxy proxy, List<y> list, List<k> list2, ProxySelector proxySelector) {
        t.a aVar = new t.a();
        aVar.d(sSLSocketFactory != null ? "https" : "http");
        aVar.b(str);
        aVar.a(i2);
        this.f4420a = aVar.a();
        if (oVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.f4421b = oVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f4422c = socketFactory;
        if (bVar == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f4423d = bVar;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f4424e = h.h0.c.a(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f4425f = h.h0.c.a(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f4426g = proxySelector;
        this.f4427h = proxy;
        this.f4428i = sSLSocketFactory;
        this.f4429j = hostnameVerifier;
        this.f4430k = gVar;
    }

    public g a() {
        return this.f4430k;
    }

    boolean a(a aVar) {
        return this.f4421b.equals(aVar.f4421b) && this.f4423d.equals(aVar.f4423d) && this.f4424e.equals(aVar.f4424e) && this.f4425f.equals(aVar.f4425f) && this.f4426g.equals(aVar.f4426g) && h.h0.c.a(this.f4427h, aVar.f4427h) && h.h0.c.a(this.f4428i, aVar.f4428i) && h.h0.c.a(this.f4429j, aVar.f4429j) && h.h0.c.a(this.f4430k, aVar.f4430k) && k().k() == aVar.k().k();
    }

    public List<k> b() {
        return this.f4425f;
    }

    public o c() {
        return this.f4421b;
    }

    public HostnameVerifier d() {
        return this.f4429j;
    }

    public List<y> e() {
        return this.f4424e;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f4420a.equals(aVar.f4420a) && a(aVar)) {
                return true;
            }
        }
        return false;
    }

    public Proxy f() {
        return this.f4427h;
    }

    public b g() {
        return this.f4423d;
    }

    public ProxySelector h() {
        return this.f4426g;
    }

    public int hashCode() {
        int iHashCode = (((((((((((527 + this.f4420a.hashCode()) * 31) + this.f4421b.hashCode()) * 31) + this.f4423d.hashCode()) * 31) + this.f4424e.hashCode()) * 31) + this.f4425f.hashCode()) * 31) + this.f4426g.hashCode()) * 31;
        Proxy proxy = this.f4427h;
        int iHashCode2 = (iHashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f4428i;
        int iHashCode3 = (iHashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f4429j;
        int iHashCode4 = (iHashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        g gVar = this.f4430k;
        return iHashCode4 + (gVar != null ? gVar.hashCode() : 0);
    }

    public SocketFactory i() {
        return this.f4422c;
    }

    public SSLSocketFactory j() {
        return this.f4428i;
    }

    public t k() {
        return this.f4420a;
    }

    public String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.f4420a.g());
        sb.append(":");
        sb.append(this.f4420a.k());
        if (this.f4427h != null) {
            sb.append(", proxy=");
            obj = this.f4427h;
        } else {
            sb.append(", proxySelector=");
            obj = this.f4426g;
        }
        sb.append(obj);
        sb.append("}");
        return sb.toString();
    }
}
