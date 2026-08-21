package h.h0.j;

import h.y;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes.dex */
class d extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f4823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Method f4824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Method f4825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Class<?> f4826f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Class<?> f4827g;

    private static class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f4828a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f4829b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f4830c;

        a(List<String> list) {
            this.f4828a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2;
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = h.h0.c.f4530b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return true;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f4829b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f4828a;
            }
            if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List)) {
                if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                }
                this.f4830c = (String) objArr[0];
                return null;
            }
            List list = (List) objArr[0];
            int size = list.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    obj2 = this.f4828a.get(0);
                    break;
                }
                if (this.f4828a.contains(list.get(i2))) {
                    obj2 = list.get(i2);
                    break;
                }
                i2++;
            }
            String str = (String) obj2;
            this.f4830c = str;
            return str;
        }
    }

    d(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f4823c = method;
        this.f4824d = method2;
        this.f4825e = method3;
        this.f4826f = cls;
        this.f4827g = cls2;
    }

    public static f b() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new d(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // h.h0.j.f
    public void a(SSLSocket sSLSocket) {
        try {
            this.f4825e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw h.h0.c.a("unable to remove alpn", (Exception) e2);
        }
    }

    @Override // h.h0.j.f
    public void a(SSLSocket sSLSocket, String str, List<y> list) {
        try {
            this.f4823c.invoke(null, sSLSocket, Proxy.newProxyInstance(f.class.getClassLoader(), new Class[]{this.f4826f, this.f4827g}, new a(f.a(list))));
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw h.h0.c.a("unable to set alpn", (Exception) e2);
        }
    }

    @Override // h.h0.j.f
    public String b(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f4824d.invoke(null, sSLSocket));
            if (!aVar.f4829b && aVar.f4830c == null) {
                f.c().a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (aVar.f4829b) {
                return null;
            }
            return aVar.f4830c;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw h.h0.c.a("unable to get selected protocol", (Exception) e2);
        }
    }
}
