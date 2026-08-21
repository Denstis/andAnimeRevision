package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdmr implements zzdec {
    private final zzdmp zzhbr;
    private final zzdmp zzhbs;

    public zzdmr(byte[] bArr) {
        this.zzhbr = zzd(bArr, 1);
        this.zzhbs = zzd(bArr, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdec
    public byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > (Integer.MAX_VALUE - this.zzhbr.zzawv()) - 16) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + this.zzhbr.zzawv() + 16);
        if (byteBufferAllocate.remaining() < bArr.length + this.zzhbr.zzawv() + 16) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        int iPosition = byteBufferAllocate.position();
        this.zzhbr.zza(byteBufferAllocate, bArr);
        byteBufferAllocate.position(iPosition);
        byte[] bArr3 = new byte[this.zzhbr.zzawv()];
        byteBufferAllocate.get(bArr3);
        byteBufferAllocate.limit(byteBufferAllocate.limit() - 16);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArr4 = new byte[32];
        this.zzhbs.zzc(bArr3, 0).get(bArr4);
        int length = bArr2.length % 16 == 0 ? bArr2.length : (bArr2.length + 16) - (bArr2.length % 16);
        int iRemaining = byteBufferAllocate.remaining();
        int i2 = iRemaining % 16;
        int i3 = (i2 == 0 ? iRemaining : (iRemaining + 16) - i2) + length;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(i3 + 16).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.put(bArr2);
        byteBufferOrder.position(length);
        byteBufferOrder.put(byteBufferAllocate);
        byteBufferOrder.position(i3);
        byteBufferOrder.putLong(bArr2.length);
        byteBufferOrder.putLong(iRemaining);
        byte[] bArrZzf = zzdok.zzf(bArr4, byteBufferOrder.array());
        byteBufferAllocate.limit(byteBufferAllocate.limit() + 16);
        byteBufferAllocate.put(bArrZzf);
        return byteBufferAllocate.array();
    }

    abstract zzdmp zzd(byte[] bArr, int i2);
}
