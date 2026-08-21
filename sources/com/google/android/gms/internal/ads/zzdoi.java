package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes.dex */
public final class zzdoi implements zzdet {
    private final Mac zzhes;
    private final int zzhet;
    private final String zzheu;
    private final Key zzhev;

    public zzdoi(String str, Key key, int i2) throws NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (i2 < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        if (key.getEncoded().length < 16) {
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        byte b2 = -1;
        int iHashCode = str.hashCode();
        if (iHashCode != -1823053428) {
            if (iHashCode != 392315118) {
                if (iHashCode == 392317873 && str.equals("HMACSHA512")) {
                    b2 = 2;
                }
            } else if (str.equals("HMACSHA256")) {
                b2 = 1;
            }
        } else if (str.equals("HMACSHA1")) {
            b2 = 0;
        }
        if (b2 != 0) {
            if (b2 != 1) {
                if (b2 != 2) {
                    String strValueOf = String.valueOf(str);
                    throw new NoSuchAlgorithmException(strValueOf.length() != 0 ? "unknown Hmac algorithm: ".concat(strValueOf) : new String("unknown Hmac algorithm: "));
                }
                if (i2 > 64) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
            } else if (i2 > 32) {
                throw new InvalidAlgorithmParameterException("tag size too big");
            }
        } else if (i2 > 20) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        this.zzheu = str;
        this.zzhet = i2;
        this.zzhev = key;
        this.zzhes = zzdnu.zzhea.zzhf(str);
        this.zzhes.init(key);
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    public final byte[] zzk(byte[] bArr) throws InvalidKeyException {
        Mac macZzhf;
        try {
            macZzhf = (Mac) this.zzhes.clone();
        } catch (CloneNotSupportedException unused) {
            macZzhf = zzdnu.zzhea.zzhf(this.zzheu);
            macZzhf.init(this.zzhev);
        }
        macZzhf.update(bArr);
        byte[] bArr2 = new byte[this.zzhet];
        System.arraycopy(macZzhf.doFinal(), 0, bArr2, 0, this.zzhet);
        return bArr2;
    }
}
