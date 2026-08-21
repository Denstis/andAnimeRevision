package h;

import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final h[] f4856e = {h.s, h.u, h.t, h.v, h.x, h.w, h.q, h.r, h.f4524j, h.f4525k, h.f4519e, h.f4522h, h.f4518d};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final k f4857f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final k f4858g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final k f4859h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final boolean f4860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f4861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String[] f4862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String[] f4863d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f4864a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String[] f4865b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String[] f4866c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f4867d;

        public a(k kVar) {
            this.f4864a = kVar.f4860a;
            this.f4865b = kVar.f4862c;
            this.f4866c = kVar.f4863d;
            this.f4867d = kVar.f4861b;
        }

        a(boolean z) {
            this.f4864a = z;
        }

        public a a(boolean z) {
            if (!this.f4864a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f4867d = z;
            return this;
        }

        public a a(f0... f0VarArr) {
            if (!this.f4864a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[f0VarArr.length];
            for (int i2 = 0; i2 < f0VarArr.length; i2++) {
                strArr[i2] = f0VarArr[i2].f4507b;
            }
            b(strArr);
            return this;
        }

        public a a(h... hVarArr) {
            if (!this.f4864a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[hVarArr.length];
            for (int i2 = 0; i2 < hVarArr.length; i2++) {
                strArr[i2] = hVarArr[i2].f4526a;
            }
            a(strArr);
            return this;
        }

        public a a(String... strArr) {
            if (!this.f4864a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f4865b = (String[]) strArr.clone();
            return this;
        }

        public k a() {
            return new k(this);
        }

        public a b(String... strArr) {
            if (!this.f4864a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f4866c = (String[]) strArr.clone();
            return this;
        }
    }

    static {
        a aVar = new a(true);
        aVar.a(f4856e);
        aVar.a(f0.TLS_1_3, f0.TLS_1_2, f0.TLS_1_1, f0.TLS_1_0);
        aVar.a(true);
        f4857f = aVar.a();
        a aVar2 = new a(f4857f);
        aVar2.a(f0.TLS_1_0);
        aVar2.a(true);
        f4858g = aVar2.a();
        f4859h = new a(false).a();
    }

    k(a aVar) {
        this.f4860a = aVar.f4864a;
        this.f4862c = aVar.f4865b;
        this.f4863d = aVar.f4866c;
        this.f4861b = aVar.f4867d;
    }

    private k b(SSLSocket sSLSocket, boolean z) {
        String[] strArrA = this.f4862c != null ? h.h0.c.a(h.f4516b, sSLSocket.getEnabledCipherSuites(), this.f4862c) : sSLSocket.getEnabledCipherSuites();
        String[] strArrA2 = this.f4863d != null ? h.h0.c.a(h.h0.c.o, sSLSocket.getEnabledProtocols(), this.f4863d) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iA = h.h0.c.a(h.f4516b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z && iA != -1) {
            strArrA = h.h0.c.a(strArrA, supportedCipherSuites[iA]);
        }
        a aVar = new a(this);
        aVar.a(strArrA);
        aVar.b(strArrA2);
        return aVar.a();
    }

    public List<h> a() {
        String[] strArr = this.f4862c;
        if (strArr != null) {
            return h.a(strArr);
        }
        return null;
    }

    void a(SSLSocket sSLSocket, boolean z) {
        k kVarB = b(sSLSocket, z);
        String[] strArr = kVarB.f4863d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = kVarB.f4862c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean a(SSLSocket sSLSocket) {
        if (!this.f4860a) {
            return false;
        }
        String[] strArr = this.f4863d;
        if (strArr != null && !h.h0.c.b(h.h0.c.o, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f4862c;
        return strArr2 == null || h.h0.c.b(h.f4516b, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean b() {
        return this.f4860a;
    }

    public boolean c() {
        return this.f4861b;
    }

    public List<f0> d() {
        String[] strArr = this.f4863d;
        if (strArr != null) {
            return f0.a(strArr);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        k kVar = (k) obj;
        boolean z = this.f4860a;
        if (z != kVar.f4860a) {
            return false;
        }
        return !z || (Arrays.equals(this.f4862c, kVar.f4862c) && Arrays.equals(this.f4863d, kVar.f4863d) && this.f4861b == kVar.f4861b);
    }

    public int hashCode() {
        if (this.f4860a) {
            return ((((527 + Arrays.hashCode(this.f4862c)) * 31) + Arrays.hashCode(this.f4863d)) * 31) + (!this.f4861b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (!this.f4860a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.f4862c != null ? a().toString() : "[all enabled]") + ", tlsVersions=" + (this.f4863d != null ? d().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f4861b + ")";
    }
}
