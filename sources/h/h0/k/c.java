package h.h0.k;

import h.h0.j.f;
import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static c a(X509TrustManager x509TrustManager) {
        return f.c().a(x509TrustManager);
    }

    public abstract List<Certificate> a(List<Certificate> list, String str);
}
