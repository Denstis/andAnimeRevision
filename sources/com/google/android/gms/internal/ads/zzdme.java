package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class zzdme implements zzdet {
    private final int zzhao;
    private final SecretKey zzhau;
    private byte[] zzhav;
    private byte[] zzhaw;

    public zzdme(byte[] bArr, int i2) throws InvalidKeyException, InvalidAlgorithmParameterException {
        zzdou.zzfg(bArr.length);
        this.zzhau = new SecretKeySpec(bArr, "AES");
        this.zzhao = 16;
        Cipher cipherZzawu = zzawu();
        cipherZzawu.init(1, this.zzhau);
        this.zzhav = zzdmj.zzp(cipherZzawu.doFinal(new byte[16]));
        this.zzhaw = zzdmj.zzp(this.zzhav);
    }

    private static Cipher zzawu() {
        return zzdnu.zzhdz.zzhf("AES/ECB/NoPadding");
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    public final byte[] zzk(byte[] bArr) throws BadPaddingException, IllegalBlockSizeException, InvalidKeyException {
        byte[] bArrZzd;
        Cipher cipherZzawu = zzawu();
        cipherZzawu.init(1, this.zzhau);
        double length = bArr.length;
        Double.isNaN(length);
        int iMax = Math.max(1, (int) Math.ceil(length / 16.0d));
        if ((iMax << 4) == bArr.length) {
            bArrZzd = zzdmn.zza(bArr, (iMax - 1) << 4, this.zzhav, 0, 16);
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (iMax - 1) << 4, bArr.length);
            if (bArrCopyOfRange.length >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrCopyOfRange, 16);
            bArrCopyOf[bArrCopyOfRange.length] = -128;
            bArrZzd = zzdmn.zzd(bArrCopyOf, this.zzhaw);
        }
        byte[] bArrDoFinal = new byte[16];
        for (int i2 = 0; i2 < iMax - 1; i2++) {
            bArrDoFinal = cipherZzawu.doFinal(zzdmn.zza(bArrDoFinal, 0, bArr, i2 << 4, 16));
        }
        byte[] bArrZzd2 = zzdmn.zzd(bArrZzd, bArrDoFinal);
        byte[] bArr2 = new byte[this.zzhao];
        System.arraycopy(cipherZzawu.doFinal(bArrZzd2), 0, bArr2, 0, this.zzhao);
        return bArr2;
    }
}
