package h.h0.j;

import h.y;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes.dex */
final class c extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Method f4821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Method f4822d;

    c(Method method, Method method2) {
        this.f4821c = method;
        this.f4822d = method2;
    }

    public static c b() {
        try {
            return new c(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // h.h0.j.f
    public void a(SSLSocket sSLSocket, String str, List<y> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listA = f.a(list);
            this.f4821c.invoke(sSLParameters, listA.toArray(new String[listA.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw h.h0.c.a("unable to set ssl parameters", (Exception) e2);
        }
    }

    @Override // h.h0.j.f
    public String b(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f4822d.invoke(sSLSocket, new Object[0]);
            if (str == null) {
                return null;
            }
            if (str.equals("")) {
                return null;
            }
            return str;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw h.h0.c.a("unable to get selected protocols", (Exception) e2);
        }
    }
}
