package h.h0.j;

import h.y;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;
import org.conscrypt.OpenSSLProvider;

/* JADX INFO: loaded from: classes.dex */
public class b extends f {
    private b() {
    }

    public static f b() {
        try {
            Class.forName("org.conscrypt.ConscryptEngineSocket");
            if (!Conscrypt.isAvailable()) {
                return null;
            }
            Conscrypt.setUseEngineSocketByDefault(true);
            return new b();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private Provider e() {
        return new OpenSSLProvider();
    }

    @Override // h.h0.j.f
    public SSLContext a() {
        try {
            return SSLContext.getInstance("TLS", e());
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No TLS provider", e2);
        }
    }

    @Override // h.h0.j.f
    public void a(SSLSocket sSLSocket, String str, List<y> list) {
        if (!Conscrypt.isConscrypt(sSLSocket)) {
            super.a(sSLSocket, str, list);
            return;
        }
        if (str != null) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            Conscrypt.setHostname(sSLSocket, str);
        }
        Conscrypt.setApplicationProtocols(sSLSocket, (String[]) f.a(list).toArray(new String[0]));
    }

    @Override // h.h0.j.f
    public String b(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket) ? Conscrypt.getApplicationProtocol(sSLSocket) : super.b(sSLSocket);
    }
}
