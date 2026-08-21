package h;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f4498a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Proxy f4499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final InetSocketAddress f4500c;

    public e0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f4498a = aVar;
        this.f4499b = proxy;
        this.f4500c = inetSocketAddress;
    }

    public a a() {
        return this.f4498a;
    }

    public Proxy b() {
        return this.f4499b;
    }

    public boolean c() {
        return this.f4498a.f4428i != null && this.f4499b.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress d() {
        return this.f4500c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof e0) {
            e0 e0Var = (e0) obj;
            if (e0Var.f4498a.equals(this.f4498a) && e0Var.f4499b.equals(this.f4499b) && e0Var.f4500c.equals(this.f4500c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f4498a.hashCode()) * 31) + this.f4499b.hashCode()) * 31) + this.f4500c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f4500c + "}";
    }
}
