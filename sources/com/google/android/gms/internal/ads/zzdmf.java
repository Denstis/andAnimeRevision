package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class zzdmf implements zzdec {
    private final byte[] zzhax;
    private final byte[] zzhay;
    private final SecretKeySpec zzhaz;
    private final int zzhba;

    public zzdmf(byte[] bArr, int i2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (i2 != 12 && i2 != 16) {
            throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
        }
        this.zzhba = i2;
        zzdou.zzfg(bArr.length);
        this.zzhaz = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/NOPADDING");
        cipher.init(1, this.zzhaz);
        this.zzhax = zzn(cipher.doFinal(new byte[16]));
        this.zzhay = zzn(this.zzhax);
    }

    private final byte[] zza(Cipher cipher, int i2, byte[] bArr, int i3, int i4) throws BadPaddingException, IllegalBlockSizeException {
        byte[] bArrZzd;
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) i2;
        if (i4 == 0) {
            return cipher.doFinal(zzd(bArr2, this.zzhax));
        }
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        byte[] bArrDoFinal2 = bArrDoFinal;
        int i5 = 0;
        while (i4 - i5 > 16) {
            for (int i6 = 0; i6 < 16; i6++) {
                bArrDoFinal2[i6] = (byte) (bArrDoFinal2[i6] ^ bArr[(i3 + i5) + i6]);
            }
            bArrDoFinal2 = cipher.doFinal(bArrDoFinal2);
            i5 += 16;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i5 + i3, i3 + i4);
        if (bArrCopyOfRange.length == 16) {
            bArrZzd = zzd(bArrCopyOfRange, this.zzhax);
        } else {
            byte[] bArrCopyOf = Arrays.copyOf(this.zzhay, 16);
            for (int i7 = 0; i7 < bArrCopyOfRange.length; i7++) {
                bArrCopyOf[i7] = (byte) (bArrCopyOf[i7] ^ bArrCopyOfRange[i7]);
            }
            bArrCopyOf[bArrCopyOfRange.length] = (byte) (bArrCopyOf[bArrCopyOfRange.length] ^ 128);
            bArrZzd = bArrCopyOf;
        }
        return cipher.doFinal(zzd(bArrDoFinal2, bArrZzd));
    }

    private static byte[] zzd(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr3[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
        }
        return bArr3;
    }

    private static byte[] zzn(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i2 = 0;
        while (i2 < 15) {
            int i3 = i2 + 1;
            bArr2[i2] = (byte) ((bArr[i2] << 1) ^ ((bArr[i3] & 255) >>> 7));
            i2 = i3;
        }
        bArr2[15] = (byte) ((bArr[15] << 1) ^ ((bArr[0] & 128) != 0 ? TsExtractor.TS_STREAM_TYPE_E_AC3 : 0));
        return bArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzdec
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i2 = this.zzhba;
        if (length > (Integer.MAX_VALUE - i2) - 16) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[bArr.length + i2 + 16];
        byte[] bArrZzff = zzdoj.zzff(i2);
        System.arraycopy(bArrZzff, 0, bArr3, 0, this.zzhba);
        Cipher cipher = Cipher.getInstance("AES/ECB/NOPADDING");
        cipher.init(1, this.zzhaz);
        byte[] bArrZza = zza(cipher, 0, bArrZzff, 0, bArrZzff.length);
        byte[] bArr4 = bArr2 == null ? new byte[0] : bArr2;
        byte[] bArrZza2 = zza(cipher, 1, bArr4, 0, bArr4.length);
        Cipher cipher2 = Cipher.getInstance("AES/CTR/NOPADDING");
        cipher2.init(1, this.zzhaz, new IvParameterSpec(bArrZza));
        cipher2.doFinal(bArr, 0, bArr.length, bArr3, this.zzhba);
        byte[] bArrZza3 = zza(cipher, 2, bArr3, this.zzhba, bArr.length);
        int length2 = bArr.length + this.zzhba;
        for (int i3 = 0; i3 < 16; i3++) {
            bArr3[length2 + i3] = (byte) ((bArrZza2[i3] ^ bArrZza[i3]) ^ bArrZza3[i3]);
        }
        return bArr3;
    }
}
