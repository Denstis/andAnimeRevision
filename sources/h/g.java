package h;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f4508c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<b> f4509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h.h0.k.c f4510b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<b> f4511a = new ArrayList();

        public g a() {
            return new g(new LinkedHashSet(this.f4511a), null);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f4512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f4513b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f4514c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final i.f f4515d;

        boolean a(String str) {
            if (!this.f4512a.startsWith("*.")) {
                return str.equals(this.f4513b);
            }
            int iIndexOf = str.indexOf(46);
            if ((str.length() - iIndexOf) - 1 == this.f4513b.length()) {
                String str2 = this.f4513b;
                if (str.regionMatches(false, iIndexOf + 1, str2, 0, str2.length())) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f4512a.equals(bVar.f4512a) && this.f4514c.equals(bVar.f4514c) && this.f4515d.equals(bVar.f4515d)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((527 + this.f4512a.hashCode()) * 31) + this.f4514c.hashCode()) * 31) + this.f4515d.hashCode();
        }

        public String toString() {
            return this.f4514c + this.f4515d.a();
        }
    }

    g(Set<b> set, h.h0.k.c cVar) {
        this.f4509a = set;
        this.f4510b = cVar;
    }

    static i.f a(X509Certificate x509Certificate) {
        return i.f.a(x509Certificate.getPublicKey().getEncoded()).c();
    }

    public static String a(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + b((X509Certificate) certificate).a();
    }

    static i.f b(X509Certificate x509Certificate) {
        return i.f.a(x509Certificate.getPublicKey().getEncoded()).d();
    }

    g a(h.h0.k.c cVar) {
        return h.h0.c.a(this.f4510b, cVar) ? this : new g(this.f4509a, cVar);
    }

    List<b> a(String str) {
        List<b> listEmptyList = Collections.emptyList();
        for (b bVar : this.f4509a) {
            if (bVar.a(str)) {
                if (listEmptyList.isEmpty()) {
                    listEmptyList = new ArrayList<>();
                }
                listEmptyList.add(bVar);
            }
        }
        return listEmptyList;
    }

    public void a(String str, List<Certificate> list) {
        List<b> listA = a(str);
        if (listA.isEmpty()) {
            return;
        }
        h.h0.k.c cVar = this.f4510b;
        if (cVar != null) {
            list = cVar.a(list, str);
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i2);
            int size2 = listA.size();
            i.f fVarB = null;
            i.f fVarA = null;
            for (int i3 = 0; i3 < size2; i3++) {
                b bVar = listA.get(i3);
                if (bVar.f4514c.equals("sha256/")) {
                    if (fVarB == null) {
                        fVarB = b(x509Certificate);
                    }
                    if (bVar.f4515d.equals(fVarB)) {
                        return;
                    }
                } else {
                    if (!bVar.f4514c.equals("sha1/")) {
                        throw new AssertionError("unsupported hashAlgorithm: " + bVar.f4514c);
                    }
                    if (fVarA == null) {
                        fVarA = a(x509Certificate);
                    }
                    if (bVar.f4515d.equals(fVarA)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i4 = 0; i4 < size3; i4++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i4);
            sb.append("\n    ");
            sb.append(a((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = listA.size();
        for (int i5 = 0; i5 < size4; i5++) {
            b bVar2 = listA.get(i5);
            sb.append("\n    ");
            sb.append(bVar2);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (h.h0.c.a(this.f4510b, gVar.f4510b) && this.f4509a.equals(gVar.f4509a)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        h.h0.k.c cVar = this.f4510b;
        return ((cVar != null ? cVar.hashCode() : 0) * 31) + this.f4509a.hashCode();
    }
}
