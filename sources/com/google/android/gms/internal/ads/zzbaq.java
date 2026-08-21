package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class zzbaq implements zzdvn {
    private final ByteBuffer zzakm;

    zzbaq(ByteBuffer byteBuffer) {
        this.zzakm = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.zzdvn, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zzdvn
    public final long position() {
        return this.zzakm.position();
    }

    @Override // com.google.android.gms.internal.ads.zzdvn
    public final int read(ByteBuffer byteBuffer) {
        if (this.zzakm.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), this.zzakm.remaining());
        byte[] bArr = new byte[iMin];
        this.zzakm.get(bArr);
        byteBuffer.put(bArr);
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.zzdvn
    public final long size() {
        return this.zzakm.limit();
    }

    @Override // com.google.android.gms.internal.ads.zzdvn
    public final void zzew(long j2) {
        this.zzakm.position((int) j2);
    }

    @Override // com.google.android.gms.internal.ads.zzdvn
    public final ByteBuffer zzh(long j2, long j3) {
        int iPosition = this.zzakm.position();
        this.zzakm.position((int) j2);
        ByteBuffer byteBufferSlice = this.zzakm.slice();
        byteBufferSlice.limit((int) j3);
        this.zzakm.position(iPosition);
        return byteBufferSlice;
    }
}
