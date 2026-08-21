package com.google.android.gms.measurement.internal;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
final class zzkp extends SSLSocketFactory {
    private final SSLSocketFactory zza;

    zzkp() {
        this(HttpsURLConnection.getDefaultSSLSocketFactory());
    }

    private zzkp(SSLSocketFactory sSLSocketFactory) {
        this.zza = sSLSocketFactory;
    }

    private final SSLSocket zza(SSLSocket sSLSocket) {
        return new zzko(this, sSLSocket);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        return zza((SSLSocket) this.zza.createSocket());
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i2) {
        return zza((SSLSocket) this.zza.createSocket(str, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
        return zza((SSLSocket) this.zza.createSocket(str, i2, inetAddress, i3));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i2) {
        return zza((SSLSocket) this.zza.createSocket(inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
        return zza((SSLSocket) this.zza.createSocket(inetAddress, i2, inetAddress2, i3));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i2, boolean z) {
        return zza((SSLSocket) this.zza.createSocket(socket, str, i2, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.zza.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.zza.getSupportedCipherSuites();
    }
}
