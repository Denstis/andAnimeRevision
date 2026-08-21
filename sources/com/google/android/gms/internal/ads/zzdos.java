package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzdos {
    public static String zza(zzdob zzdobVar) throws GeneralSecurityException {
        zzdou.zzc(zzdobVar);
        String strValueOf = String.valueOf(zzdobVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 9);
        sb.append(strValueOf);
        sb.append("withECDSA");
        return sb.toString();
    }

    public static byte[] zza(BigInteger bigInteger, int i2) throws GeneralSecurityException {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i2) {
            return byteArray;
        }
        int i3 = i2 + 1;
        if (byteArray.length > i3) {
            throw new GeneralSecurityException("integer too large");
        }
        if (byteArray.length == i3) {
            if (byteArray[0] == 0) {
                return Arrays.copyOfRange(byteArray, 1, byteArray.length);
            }
            throw new GeneralSecurityException("integer too large");
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(byteArray, 0, bArr, i2 - byteArray.length, byteArray.length);
        return bArr;
    }

    public static byte[] zza(byte[] bArr, int i2, zzdob zzdobVar) {
        MessageDigest messageDigestZzhf = zzdnu.zzhec.zzhf(zzb(zzdobVar));
        int digestLength = messageDigestZzhf.getDigestLength();
        byte[] bArr2 = new byte[i2];
        int length = 0;
        for (int i3 = 0; i3 <= (i2 - 1) / digestLength; i3++) {
            messageDigestZzhf.reset();
            messageDigestZzhf.update(bArr);
            messageDigestZzhf.update(zza(BigInteger.valueOf(i3), 4));
            byte[] bArrDigest = messageDigestZzhf.digest();
            System.arraycopy(bArrDigest, 0, bArr2, length, Math.min(bArrDigest.length, bArr2.length - length));
            length += bArrDigest.length;
        }
        return bArr2;
    }

    public static boolean zzaxd() {
        try {
            Class.forName("android.app.Application", false, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String zzb(zzdob zzdobVar) throws GeneralSecurityException {
        int i2 = zzdor.zzhez[zzdobVar.ordinal()];
        if (i2 == 1) {
            return "SHA-1";
        }
        if (i2 == 2) {
            return "SHA-256";
        }
        if (i2 == 3) {
            return "SHA-384";
        }
        if (i2 == 4) {
            return "SHA-512";
        }
        String strValueOf = String.valueOf(zzdobVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 17);
        sb.append("Unsupported hash ");
        sb.append(strValueOf);
        throw new GeneralSecurityException(sb.toString());
    }

    public static BigInteger zzw(byte[] bArr) {
        return new BigInteger(1, bArr);
    }
}
