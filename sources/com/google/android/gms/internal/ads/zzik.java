package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class zzik extends zzih {
    public long zzamb;
    public ByteBuffer zzcq;
    public final zzig zzama = new zzig();
    private final int zzamc = 0;

    public zzik(int i2) {
    }

    private final ByteBuffer zzy(int i2) {
        ByteBuffer byteBuffer = this.zzcq;
        int iCapacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(iCapacity);
        sb.append(" < ");
        sb.append(i2);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzih
    public final void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.zzcq;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final boolean zzfx() {
        return zzw(1073741824);
    }

    public final void zzx(int i2) {
        ByteBuffer byteBuffer = this.zzcq;
        if (byteBuffer == null) {
            this.zzcq = zzy(i2);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = this.zzcq.position();
        int i3 = i2 + iPosition;
        if (iCapacity >= i3) {
            return;
        }
        ByteBuffer byteBufferZzy = zzy(i3);
        if (iPosition > 0) {
            this.zzcq.position(0);
            this.zzcq.limit(iPosition);
            byteBufferZzy.put(this.zzcq);
        }
        this.zzcq = byteBufferZzy;
    }
}
