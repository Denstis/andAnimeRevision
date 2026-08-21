package h.h0.j;

import android.os.Build;
import android.util.Log;
import h.y;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
class a extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e<Socket> f4809c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e<Socket> f4810d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e<Socket> f4811e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e<Socket> f4812f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c f4813g = c.a();

    /* JADX INFO: renamed from: h.h0.j.a$a, reason: collision with other inner class name */
    static final class C0189a extends h.h0.k.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f4814a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f4815b;

        C0189a(Object obj, Method method) {
            this.f4814a = obj;
            this.f4815b = method;
        }

        @Override // h.h0.k.c
        public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f4815b.invoke(this.f4814a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (InvocationTargetException e3) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e3.getMessage());
                sSLPeerUnverifiedException.initCause(e3);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C0189a;
        }

        public int hashCode() {
            return 0;
        }
    }

    static final class b implements h.h0.k.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final X509TrustManager f4816a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f4817b;

        b(X509TrustManager x509TrustManager, Method method) {
            this.f4817b = method;
            this.f4816a = x509TrustManager;
        }

        @Override // h.h0.k.e
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f4817b.invoke(this.f4816a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e2) {
                throw h.h0.c.a("unable to get issues and signature", (Exception) e2);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f4816a.equals(bVar.f4816a) && this.f4817b.equals(bVar.f4817b);
        }

        public int hashCode() {
            return this.f4816a.hashCode() + (this.f4817b.hashCode() * 31);
        }
    }

    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f4818a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f4819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Method f4820c;

        c(Method method, Method method2, Method method3) {
            this.f4818a = method;
            this.f4819b = method2;
            this.f4820c = method3;
        }

        static c a() throws NoSuchMethodException {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", new Class[0]);
                method2 = cls.getMethod("open", String.class);
                method = cls.getMethod("warnIfOpen", new Class[0]);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new c(method3, method2, method);
        }

        Object a(String str) {
            Method method = this.f4818a;
            if (method != null) {
                try {
                    Object objInvoke = method.invoke(null, new Object[0]);
                    this.f4819b.invoke(objInvoke, str);
                    return objInvoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        boolean a(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                this.f4820c.invoke(obj, new Object[0]);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    a(Class<?> cls, e<Socket> eVar, e<Socket> eVar2, e<Socket> eVar3, e<Socket> eVar4) {
        this.f4809c = eVar;
        this.f4810d = eVar2;
        this.f4811e = eVar3;
        this.f4812f = eVar4;
    }

    private boolean a(String str, Class<?> cls, Object obj) {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.b(str);
        }
    }

    public static f b() {
        Class<?> cls;
        e eVar;
        e eVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            e eVar3 = new e(null, "setUseSessionTickets", Boolean.TYPE);
            e eVar4 = new e(null, "setHostname", String.class);
            if (e()) {
                e eVar5 = new e(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                eVar2 = new e(null, "setAlpnProtocols", byte[].class);
                eVar = eVar5;
            } else {
                eVar = null;
                eVar2 = null;
            }
            return new a(cls2, eVar3, eVar4, eVar, eVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }

    private boolean b(String str, Class<?> cls, Object obj) {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return a(str, cls, obj);
        }
    }

    private static boolean e() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // h.h0.j.f
    public h.h0.k.c a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0189a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.a(x509TrustManager);
        }
    }

    @Override // h.h0.j.f
    public Object a(String str) {
        return this.f4813g.a(str);
    }

    @Override // h.h0.j.f
    public void a(int i2, String str, Throwable th) {
        int iMin;
        int i3 = i2 != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int i4 = 0;
        int length = str.length();
        while (i4 < length) {
            int iIndexOf = str.indexOf(10, i4);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i4 + 4000);
                Log.println(i3, "OkHttp", str.substring(i4, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i4 = iMin;
                }
            }
            i4 = iMin + 1;
        }
    }

    @Override // h.h0.j.f
    public void a(String str, Object obj) {
        if (this.f4813g.a(obj)) {
            return;
        }
        a(5, str, (Throwable) null);
    }

    @Override // h.h0.j.f
    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i2) throws IOException {
        try {
            socket.connect(inetSocketAddress, i2);
        } catch (AssertionError e2) {
            if (!h.h0.c.a(e2)) {
                throw e2;
            }
            throw new IOException(e2);
        } catch (ClassCastException e3) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e3;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e3);
            throw iOException;
        } catch (SecurityException e4) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e4);
            throw iOException2;
        }
    }

    @Override // h.h0.j.f
    public void a(SSLSocket sSLSocket, String str, List<y> list) {
        if (str != null) {
            this.f4809c.c(sSLSocket, true);
            this.f4810d.c(sSLSocket, str);
        }
        e<Socket> eVar = this.f4812f;
        if (eVar == null || !eVar.a(sSLSocket)) {
            return;
        }
        this.f4812f.d(sSLSocket, f.b(list));
    }

    @Override // h.h0.j.f
    public h.h0.k.e b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.b(x509TrustManager);
        }
    }

    @Override // h.h0.j.f
    public String b(SSLSocket sSLSocket) {
        byte[] bArr;
        e<Socket> eVar = this.f4811e;
        if (eVar == null || !eVar.a(sSLSocket) || (bArr = (byte[]) this.f4811e.d(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, h.h0.c.f4537i);
    }

    @Override // h.h0.j.f
    public boolean b(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return b(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.b(str);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw h.h0.c.a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw h.h0.c.a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e4) {
            e = e4;
            throw h.h0.c.a("unable to determine cleartext support", e);
        }
    }
}
