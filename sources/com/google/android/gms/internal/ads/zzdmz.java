package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class zzdmz {
    private ECPublicKey zzhcf;

    public zzdmz(ECPublicKey eCPublicKey) {
        this.zzhcf = eCPublicKey;
    }

    public final zzdnc zza(String str, byte[] bArr, byte[] bArr2, int i2, zzdns zzdnsVar) throws GeneralSecurityException {
        byte[] bArr3;
        KeyPair keyPairZza = zzdno.zza(this.zzhcf.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) keyPairZza.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) keyPairZza.getPrivate();
        ECPublicKey eCPublicKey2 = this.zzhcf;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            int i3 = 1;
            if (!(params.getCurve().equals(params2.getCurve()) && params.getGenerator().equals(params2.getGenerator()) && params.getOrder().equals(params2.getOrder()) && params.getCofactor() == params2.getCofactor())) {
                throw new GeneralSecurityException("invalid public key spec");
            }
            byte[] bArrZza = zzdno.zza(eCPrivateKey, eCPublicKey2.getW());
            EllipticCurve curve = eCPublicKey.getParams().getCurve();
            ECPoint w = eCPublicKey.getW();
            zzdno.zza(w, curve);
            int iBitLength = (zzdno.zza(curve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
            int i4 = zzdnn.zzhdi[zzdnsVar.ordinal()];
            if (i4 == 1) {
                int i5 = (iBitLength * 2) + 1;
                bArr3 = new byte[i5];
                byte[] byteArray = w.getAffineX().toByteArray();
                byte[] byteArray2 = w.getAffineY().toByteArray();
                System.arraycopy(byteArray2, 0, bArr3, i5 - byteArray2.length, byteArray2.length);
                System.arraycopy(byteArray, 0, bArr3, (iBitLength + 1) - byteArray.length, byteArray.length);
                bArr3[0] = 4;
            } else if (i4 != 2) {
                if (i4 != 3) {
                    String strValueOf = String.valueOf(zzdnsVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 15);
                    sb.append("invalid format:");
                    sb.append(strValueOf);
                    throw new GeneralSecurityException(sb.toString());
                }
                int i6 = iBitLength + 1;
                byte[] bArr4 = new byte[i6];
                byte[] byteArray3 = w.getAffineX().toByteArray();
                System.arraycopy(byteArray3, 0, bArr4, i6 - byteArray3.length, byteArray3.length);
                bArr4[0] = (byte) (w.getAffineY().testBit(0) ? 3 : 2);
                bArr3 = bArr4;
            } else {
                int i7 = iBitLength * 2;
                bArr3 = new byte[i7];
                byte[] byteArray4 = w.getAffineX().toByteArray();
                if (byteArray4.length > iBitLength) {
                    byteArray4 = Arrays.copyOfRange(byteArray4, byteArray4.length - iBitLength, byteArray4.length);
                }
                byte[] byteArray5 = w.getAffineY().toByteArray();
                if (byteArray5.length > iBitLength) {
                    byteArray5 = Arrays.copyOfRange(byteArray5, byteArray5.length - iBitLength, byteArray5.length);
                }
                System.arraycopy(byteArray5, 0, bArr3, i7 - byteArray5.length, byteArray5.length);
                System.arraycopy(byteArray4, 0, bArr3, iBitLength - byteArray4.length, byteArray4.length);
            }
            byte[] bArrZza2 = zzdmn.zza(bArr3, bArrZza);
            Mac macZzhf = zzdnu.zzhea.zzhf(str);
            if (i2 > macZzhf.getMacLength() * 255) {
                throw new GeneralSecurityException("size too large");
            }
            if (bArr == null || bArr.length == 0) {
                macZzhf.init(new SecretKeySpec(new byte[macZzhf.getMacLength()], str));
            } else {
                macZzhf.init(new SecretKeySpec(bArr, str));
            }
            byte[] bArrDoFinal = macZzhf.doFinal(bArrZza2);
            byte[] bArr5 = new byte[i2];
            macZzhf.init(new SecretKeySpec(bArrDoFinal, str));
            byte[] bArrDoFinal2 = new byte[0];
            int length = 0;
            while (true) {
                macZzhf.update(bArrDoFinal2);
                macZzhf.update(bArr2);
                macZzhf.update((byte) i3);
                bArrDoFinal2 = macZzhf.doFinal();
                if (bArrDoFinal2.length + length >= i2) {
                    System.arraycopy(bArrDoFinal2, 0, bArr5, length, i2 - length);
                    return new zzdnc(bArr3, bArr5);
                }
                System.arraycopy(bArrDoFinal2, 0, bArr5, length, bArrDoFinal2.length);
                length += bArrDoFinal2.length;
                i3++;
            }
        } catch (IllegalArgumentException | NullPointerException e2) {
            throw new GeneralSecurityException(e2.toString());
        }
    }
}
