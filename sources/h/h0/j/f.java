package h.h0.j;

import h.x;
import h.y;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f f4834a = b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f4835b = Logger.getLogger(x.class.getName());

    public static List<String> a(List<y> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            y yVar = list.get(i2);
            if (yVar != y.HTTP_1_0) {
                arrayList.add(yVar.toString());
            }
        }
        return arrayList;
    }

    private static f b() {
        f fVarB;
        f fVarB2 = a.b();
        if (fVarB2 != null) {
            return fVarB2;
        }
        if (d() && (fVarB = b.b()) != null) {
            return fVarB;
        }
        c cVarB = c.b();
        if (cVarB != null) {
            return cVarB;
        }
        f fVarB3 = d.b();
        return fVarB3 != null ? fVarB3 : new f();
    }

    static byte[] b(List<y> list) {
        i.c cVar = new i.c();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            y yVar = list.get(i2);
            if (yVar != y.HTTP_1_0) {
                cVar.writeByte(yVar.toString().length());
                cVar.a(yVar.toString());
            }
        }
        return cVar.o();
    }

    public static f c() {
        return f4834a;
    }

    public static boolean d() {
        if ("conscrypt".equals(System.getProperty("okhttp.platform"))) {
            return true;
        }
        return "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    public h.h0.k.c a(X509TrustManager x509TrustManager) {
        return new h.h0.k.a(b(x509TrustManager));
    }

    public Object a(String str) {
        if (f4835b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public SSLContext a() {
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No TLS provider", e2);
        }
    }

    public void a(int i2, String str, Throwable th) {
        f4835b.log(i2 == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public void a(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        a(5, str, (Throwable) obj);
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i2) throws IOException {
        socket.connect(inetSocketAddress, i2);
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void a(SSLSocket sSLSocket, String str, List<y> list) {
    }

    public h.h0.k.e b(X509TrustManager x509TrustManager) {
        return new h.h0.k.b(x509TrustManager.getAcceptedIssuers());
    }

    public String b(SSLSocket sSLSocket) {
        return null;
    }

    public boolean b(String str) {
        return true;
    }
}
