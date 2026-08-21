package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class zzqm extends zzqf {
    private MessageDigest zzbql;

    @Override // com.google.android.gms.internal.ads.zzqf
    public final byte[] zzbq(String str) {
        byte[] bArrArray;
        String[] strArrSplit = str.split(" ");
        int length = 4;
        if (strArrSplit.length == 1) {
            int iZzbs = zzqj.zzbs(strArrSplit[0]);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.putInt(iZzbs);
            bArrArray = byteBufferAllocate.array();
        } else if (strArrSplit.length < 5) {
            bArrArray = new byte[strArrSplit.length << 1];
            for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                int iZzbs2 = zzqj.zzbs(strArrSplit[i2]);
                int i3 = (iZzbs2 >> 16) ^ (65535 & iZzbs2);
                byte[] bArr = {(byte) i3, (byte) (i3 >> 8)};
                int i4 = i2 << 1;
                bArrArray[i4] = bArr[0];
                bArrArray[i4 + 1] = bArr[1];
            }
        } else {
            bArrArray = new byte[strArrSplit.length];
            for (int i5 = 0; i5 < strArrSplit.length; i5++) {
                int iZzbs3 = zzqj.zzbs(strArrSplit[i5]);
                bArrArray[i5] = (byte) ((iZzbs3 >> 24) ^ (((iZzbs3 & 255) ^ ((iZzbs3 >> 8) & 255)) ^ ((iZzbs3 >> 16) & 255)));
            }
        }
        this.zzbql = zzlz();
        synchronized (this.mLock) {
            if (this.zzbql == null) {
                return new byte[0];
            }
            this.zzbql.reset();
            this.zzbql.update(bArrArray);
            byte[] bArrDigest = this.zzbql.digest();
            if (bArrDigest.length <= 4) {
                length = bArrDigest.length;
            }
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArrDigest, 0, bArr2, 0, bArr2.length);
            return bArr2;
        }
    }
}
