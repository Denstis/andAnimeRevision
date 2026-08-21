package h;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f0 f4896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f4897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Certificate> f4898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Certificate> f4899d;

    private r(f0 f0Var, h hVar, List<Certificate> list, List<Certificate> list2) {
        this.f4896a = f0Var;
        this.f4897b = hVar;
        this.f4898c = list;
        this.f4899d = list2;
    }

    public static r a(SSLSession sSLSession) {
        Certificate[] peerCertificates;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        h hVarA = h.a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        f0 f0VarA = f0.a(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            peerCertificates = null;
        }
        List listA = peerCertificates != null ? h.h0.c.a(peerCertificates) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new r(f0VarA, hVarA, listA, localCertificates != null ? h.h0.c.a(localCertificates) : Collections.emptyList());
    }

    public h a() {
        return this.f4897b;
    }

    public List<Certificate> b() {
        return this.f4898c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f4896a.equals(rVar.f4896a) && this.f4897b.equals(rVar.f4897b) && this.f4898c.equals(rVar.f4898c) && this.f4899d.equals(rVar.f4899d);
    }

    public int hashCode() {
        return ((((((527 + this.f4896a.hashCode()) * 31) + this.f4897b.hashCode()) * 31) + this.f4898c.hashCode()) * 31) + this.f4899d.hashCode();
    }
}
