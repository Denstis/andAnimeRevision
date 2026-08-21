package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class zzdmg implements zzdof {
    private final SecretKeySpec zzhaz;
    private final int zzhbb;
    private final int zzhbc;

    public zzdmg(byte[] bArr, int i2) throws GeneralSecurityException {
        zzdou.zzfg(bArr.length);
        this.zzhaz = new SecretKeySpec(bArr, "AES");
        this.zzhbc = zzdnu.zzhdz.zzhf("AES/CTR/NoPadding").getBlockSize();
        if (i2 < 12 || i2 > this.zzhbc) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.zzhbb = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdof
    public final byte[] zzo(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i2 = this.zzhbb;
        if (length > Integer.MAX_VALUE - i2) {
            int i3 = Integer.MAX_VALUE - i2;
            StringBuilder sb = new StringBuilder(43);
            sb.append("plaintext length can not exceed ");
            sb.append(i3);
            throw new GeneralSecurityException(sb.toString());
        }
        byte[] bArr2 = new byte[bArr.length + i2];
        byte[] bArrZzff = zzdoj.zzff(i2);
        System.arraycopy(bArrZzff, 0, bArr2, 0, this.zzhbb);
        int length2 = bArr.length;
        int i4 = this.zzhbb;
        Cipher cipherZzhf = zzdnu.zzhdz.zzhf("AES/CTR/NoPadding");
        byte[] bArr3 = new byte[this.zzhbc];
        System.arraycopy(bArrZzff, 0, bArr3, 0, this.zzhbb);
        cipherZzhf.init(1, this.zzhaz, new IvParameterSpec(bArr3));
        if (cipherZzhf.doFinal(bArr, 0, length2, bArr2, i4) == length2) {
            return bArr2;
        }
        throw new GeneralSecurityException("stored output's length does not match input's length");
    }
}
