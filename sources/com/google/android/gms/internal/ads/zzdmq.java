package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdmq extends zzdmp {
    zzdmq(byte[] bArr, int i2) {
        super(bArr, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdmp
    final int zzawv() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.zzdmp
    final int[] zzb(int[] iArr, int i2) {
        if (iArr.length != 3) {
            throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
        }
        int[] iArr2 = new int[16];
        zzdmp.zza(iArr2, this.zzhbp);
        iArr2[12] = i2;
        System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
        return iArr2;
    }
}
