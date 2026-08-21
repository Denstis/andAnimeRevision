package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class zzdmh implements zzdec {
    private final SecretKey zzhau;

    public zzdmh(byte[] bArr) throws InvalidAlgorithmParameterException {
        zzdou.zzfg(bArr.length);
        this.zzhau = new SecretKeySpec(bArr, "AES");
    }

    private static AlgorithmParameterSpec zzf(byte[] bArr, int i2, int i3) throws GeneralSecurityException {
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            return new GCMParameterSpec(128, bArr, 0, i3);
        } catch (ClassNotFoundException unused) {
            if (zzdos.zzaxd()) {
                return new IvParameterSpec(bArr, 0, i3);
            }
            throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdec
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[bArr.length + 12 + 16];
        byte[] bArrZzff = zzdoj.zzff(12);
        System.arraycopy(bArrZzff, 0, bArr3, 0, 12);
        Cipher cipherZzhf = zzdnu.zzhdz.zzhf("AES/GCM/NoPadding");
        cipherZzhf.init(1, this.zzhau, zzf(bArrZzff, 0, bArrZzff.length));
        if (bArr2 != null && bArr2.length != 0) {
            cipherZzhf.updateAAD(bArr2);
        }
        int iDoFinal = cipherZzhf.doFinal(bArr, 0, bArr.length, bArr3, 12);
        if (iDoFinal == bArr.length + 16) {
            return bArr3;
        }
        throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(iDoFinal - bArr.length)));
    }
}
