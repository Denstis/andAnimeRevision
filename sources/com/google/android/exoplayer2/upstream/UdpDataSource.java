package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketException;

/* JADX INFO: loaded from: classes.dex */
public final class UdpDataSource extends BaseDataSource {
    public static final int DEFAULT_MAX_PACKET_SIZE = 2000;
    public static final int DEFAULT_SOCKET_TIMEOUT_MILLIS = 8000;
    private InetAddress address;
    private MulticastSocket multicastSocket;
    private boolean opened;
    private final DatagramPacket packet;
    private final byte[] packetBuffer;
    private int packetRemaining;
    private DatagramSocket socket;
    private InetSocketAddress socketAddress;
    private final int socketTimeoutMillis;
    private Uri uri;

    public static final class UdpDataSourceException extends IOException {
        public UdpDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    public UdpDataSource(int i2) {
        this(i2, 8000);
    }

    public UdpDataSource(int i2, int i3) {
        super(true);
        this.socketTimeoutMillis = i3;
        this.packetBuffer = new byte[i2];
        this.packet = new DatagramPacket(this.packetBuffer, 0, i2);
    }

    @Deprecated
    public UdpDataSource(TransferListener transferListener) {
        this(transferListener, 2000);
    }

    @Deprecated
    public UdpDataSource(TransferListener transferListener, int i2) {
        this(transferListener, i2, 8000);
    }

    @Deprecated
    public UdpDataSource(TransferListener transferListener, int i2, int i3) {
        this(i2, i3);
        if (transferListener != null) {
            addTransferListener(transferListener);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        this.uri = null;
        MulticastSocket multicastSocket = this.multicastSocket;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.address);
            } catch (IOException unused) {
            }
            this.multicastSocket = null;
        }
        DatagramSocket datagramSocket = this.socket;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.socket = null;
        }
        this.address = null;
        this.socketAddress = null;
        this.packetRemaining = 0;
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws UdpDataSourceException {
        DatagramSocket datagramSocket;
        this.uri = dataSpec.uri;
        String host = this.uri.getHost();
        int port = this.uri.getPort();
        transferInitializing(dataSpec);
        try {
            this.address = InetAddress.getByName(host);
            this.socketAddress = new InetSocketAddress(this.address, port);
            if (this.address.isMulticastAddress()) {
                this.multicastSocket = new MulticastSocket(this.socketAddress);
                this.multicastSocket.joinGroup(this.address);
                datagramSocket = this.multicastSocket;
            } else {
                datagramSocket = new DatagramSocket(this.socketAddress);
            }
            this.socket = datagramSocket;
            try {
                this.socket.setSoTimeout(this.socketTimeoutMillis);
                this.opened = true;
                transferStarted(dataSpec);
                return -1L;
            } catch (SocketException e2) {
                throw new UdpDataSourceException(e2);
            }
        } catch (IOException e3) {
            throw new UdpDataSourceException(e3);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public int read(byte[] bArr, int i2, int i3) throws UdpDataSourceException {
        if (i3 == 0) {
            return 0;
        }
        if (this.packetRemaining == 0) {
            try {
                this.socket.receive(this.packet);
                this.packetRemaining = this.packet.getLength();
                bytesTransferred(this.packetRemaining);
            } catch (IOException e2) {
                throw new UdpDataSourceException(e2);
            }
        }
        int length = this.packet.getLength();
        int i4 = this.packetRemaining;
        int iMin = Math.min(i4, i3);
        System.arraycopy(this.packetBuffer, length - i4, bArr, i2, iMin);
        this.packetRemaining -= iMin;
        return iMin;
    }
}
