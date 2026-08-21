package h.h0.f;

import h.k;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<k> f4561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4562b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4564d;

    public b(List<k> list) {
        this.f4561a = list;
    }

    private boolean b(SSLSocket sSLSocket) {
        for (int i2 = this.f4562b; i2 < this.f4561a.size(); i2++) {
            if (this.f4561a.get(i2).a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public k a(SSLSocket sSLSocket) throws UnknownServiceException {
        k kVar;
        int i2 = this.f4562b;
        int size = this.f4561a.size();
        while (true) {
            if (i2 >= size) {
                kVar = null;
                break;
            }
            kVar = this.f4561a.get(i2);
            i2++;
            if (kVar.a(sSLSocket)) {
                this.f4562b = i2;
                break;
            }
        }
        if (kVar != null) {
            this.f4563c = b(sSLSocket);
            h.h0.a.f4527a.a(kVar, sSLSocket, this.f4564d);
            return kVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f4564d + ", modes=" + this.f4561a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean a(IOException iOException) {
        this.f4564d = true;
        if (!this.f4563c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z || (iOException instanceof SSLProtocolException);
    }
}
