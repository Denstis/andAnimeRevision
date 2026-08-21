package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdmp implements zzdof {
    private static final int[] zzhbo = zzq(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});
    int[] zzhbp;
    private final int zzhbq;

    zzdmp(byte[] bArr, int i2) throws InvalidKeyException {
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.zzhbp = zzq(bArr);
        this.zzhbq = i2;
    }

    private static int rotateLeft(int i2, int i3) {
        return (i2 >>> (-i3)) | (i2 << i3);
    }

    private static void zza(int[] iArr, int i2, int i3, int i4, int i5) {
        iArr[i2] = iArr[i2] + iArr[i3];
        iArr[i5] = rotateLeft(iArr[i5] ^ iArr[i2], 16);
        iArr[i4] = iArr[i4] + iArr[i5];
        iArr[i3] = rotateLeft(iArr[i3] ^ iArr[i4], 12);
        iArr[i2] = iArr[i2] + iArr[i3];
        iArr[i5] = rotateLeft(iArr[i2] ^ iArr[i5], 8);
        iArr[i4] = iArr[i4] + iArr[i5];
        iArr[i3] = rotateLeft(iArr[i3] ^ iArr[i4], 7);
    }

    static void zza(int[] iArr, int[] iArr2) {
        int[] iArr3 = zzhbo;
        System.arraycopy(iArr3, 0, iArr, 0, iArr3.length);
        System.arraycopy(iArr2, 0, iArr, zzhbo.length, 8);
    }

    static void zzc(int[] iArr) {
        for (int i2 = 0; i2 < 10; i2++) {
            zza(iArr, 0, 4, 8, 12);
            zza(iArr, 1, 5, 9, 13);
            zza(iArr, 2, 6, 10, 14);
            zza(iArr, 3, 7, 11, 15);
            zza(iArr, 0, 5, 10, 15);
            zza(iArr, 1, 6, 11, 12);
            zza(iArr, 2, 7, 8, 13);
            zza(iArr, 3, 4, 9, 14);
        }
    }

    private static int[] zzq(byte[] bArr) {
        IntBuffer intBufferAsIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[intBufferAsIntBuffer.remaining()];
        intBufferAsIntBuffer.get(iArr);
        return iArr;
    }

    final void zza(ByteBuffer byteBuffer, byte[] bArr) {
        if (byteBuffer.remaining() - zzawv() < bArr.length) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        byte[] bArrZzff = zzdoj.zzff(zzawv());
        byteBuffer.put(bArrZzff);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        int iRemaining = byteBufferWrap.remaining();
        int i2 = (iRemaining / 64) + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            ByteBuffer byteBufferZzc = zzc(bArrZzff, this.zzhbq + i3);
            if (i3 == i2 - 1) {
                zzdmn.zza(byteBuffer, byteBufferWrap, byteBufferZzc, iRemaining % 64);
            } else {
                zzdmn.zza(byteBuffer, byteBufferWrap, byteBufferZzc, 64);
            }
        }
    }

    abstract int zzawv();

    abstract int[] zzb(int[] iArr, int i2);

    final ByteBuffer zzc(byte[] bArr, int i2) {
        int[] iArrZzb = zzb(zzq(bArr), i2);
        int[] iArr = (int[]) iArrZzb.clone();
        zzc(iArr);
        for (int i3 = 0; i3 < iArrZzb.length; i3++) {
            iArrZzb[i3] = iArrZzb[i3] + iArr[i3];
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.asIntBuffer().put(iArrZzb, 0, 16);
        return byteBufferOrder;
    }

    @Override // com.google.android.gms.internal.ads.zzdof
    public final byte[] zzo(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length > Integer.MAX_VALUE - zzawv()) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(zzawv() + bArr.length);
        zza(byteBufferAllocate, bArr);
        return byteBufferAllocate.array();
    }
}
