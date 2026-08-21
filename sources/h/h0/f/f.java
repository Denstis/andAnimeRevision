package h.h0.f;

import h.e0;
import h.p;
import h.t;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h.a f4578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f4579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h.e f4580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f4581d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4583f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Proxy> f4582e = Collections.emptyList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<InetSocketAddress> f4584g = Collections.emptyList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<e0> f4585h = new ArrayList();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<e0> f4586a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4587b = 0;

        a(List<e0> list) {
            this.f4586a = list;
        }

        public List<e0> a() {
            return new ArrayList(this.f4586a);
        }

        public boolean b() {
            return this.f4587b < this.f4586a.size();
        }

        public e0 c() {
            if (!b()) {
                throw new NoSuchElementException();
            }
            List<e0> list = this.f4586a;
            int i2 = this.f4587b;
            this.f4587b = i2 + 1;
            return list.get(i2);
        }
    }

    public f(h.a aVar, d dVar, h.e eVar, p pVar) {
        this.f4578a = aVar;
        this.f4579b = dVar;
        this.f4580c = eVar;
        this.f4581d = pVar;
        a(aVar.k(), aVar.f());
    }

    static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    private void a(t tVar, Proxy proxy) {
        List<Proxy> listA;
        if (proxy != null) {
            listA = Collections.singletonList(proxy);
        } else {
            List<Proxy> listSelect = this.f4578a.h().select(tVar.o());
            listA = (listSelect == null || listSelect.isEmpty()) ? h.h0.c.a(Proxy.NO_PROXY) : h.h0.c.a(listSelect);
        }
        this.f4582e = listA;
        this.f4583f = 0;
    }

    private void a(Proxy proxy) throws SocketException, UnknownHostException {
        String strG;
        int iK;
        this.f4584g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            strG = this.f4578a.k().g();
            iK = this.f4578a.k().k();
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
            strG = a(inetSocketAddress);
            iK = inetSocketAddress.getPort();
        }
        if (iK < 1 || iK > 65535) {
            throw new SocketException("No route to " + strG + ":" + iK + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.f4584g.add(InetSocketAddress.createUnresolved(strG, iK));
            return;
        }
        this.f4581d.a(this.f4580c, strG);
        List<InetAddress> listA = this.f4578a.c().a(strG);
        if (listA.isEmpty()) {
            throw new UnknownHostException(this.f4578a.c() + " returned no addresses for " + strG);
        }
        this.f4581d.a(this.f4580c, strG, listA);
        int size = listA.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f4584g.add(new InetSocketAddress(listA.get(i2), iK));
        }
    }

    private boolean c() {
        return this.f4583f < this.f4582e.size();
    }

    private Proxy d() throws SocketException, UnknownHostException {
        if (c()) {
            List<Proxy> list = this.f4582e;
            int i2 = this.f4583f;
            this.f4583f = i2 + 1;
            Proxy proxy = list.get(i2);
            a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f4578a.k().g() + "; exhausted proxy configurations: " + this.f4582e);
    }

    public void a(e0 e0Var, IOException iOException) {
        if (e0Var.b().type() != Proxy.Type.DIRECT && this.f4578a.h() != null) {
            this.f4578a.h().connectFailed(this.f4578a.k().o(), e0Var.b().address(), iOException);
        }
        this.f4579b.b(e0Var);
    }

    public boolean a() {
        return c() || !this.f4585h.isEmpty();
    }

    public a b() throws SocketException, UnknownHostException {
        if (!a()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (c()) {
            Proxy proxyD = d();
            int size = this.f4584g.size();
            for (int i2 = 0; i2 < size; i2++) {
                e0 e0Var = new e0(this.f4578a, proxyD, this.f4584g.get(i2));
                if (this.f4579b.c(e0Var)) {
                    this.f4585h.add(e0Var);
                } else {
                    arrayList.add(e0Var);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.f4585h);
            this.f4585h.clear();
        }
        return new a(arrayList);
    }
}
