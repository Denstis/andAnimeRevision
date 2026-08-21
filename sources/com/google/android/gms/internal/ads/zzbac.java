package com.google.android.gms.internal.ads;

import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
final class zzbac extends SSLSocketFactory {
    private SSLSocketFactory zzeca = (SSLSocketFactory) SSLSocketFactory.getDefault();
    private final /* synthetic */ zzazz zzecb;

    zzbac(zzazz zzazzVar) {
        this.zzecb = zzazzVar;
    }

    private final Socket zzb(Socket socket) throws SocketException {
        if (this.zzecb.zzebt > 0) {
            socket.setReceiveBufferSize(this.zzecb.zzebt);
        }
        this.zzecb.zza(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i2) {
        return zzb(this.zzeca.createSocket(str, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
        return zzb(this.zzeca.createSocket(str, i2, inetAddress, i3));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i2) {
        return zzb(this.zzeca.createSocket(inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
        return zzb(this.zzeca.createSocket(inetAddress, i2, inetAddress2, i3));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i2, boolean z) {
        return zzb(this.zzeca.createSocket(socket, str, i2, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.zzeca.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.zzeca.getSupportedCipherSuites();
    }
}
