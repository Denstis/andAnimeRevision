package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class zzdou {
    private static final Pattern zzhfe = Pattern.compile(String.format("^projects/%s/locations/%s/keyRings/%s/cryptoKeys/%s$", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+"), 2);
    private static final Pattern zzhff = Pattern.compile(String.format("^projects/%s/locations/%s/keyRings/%s/cryptoKeys/%s/cryptoKeyVersions/%s$", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+", "([0-9a-zA-Z\\-\\.\\_~])+"), 2);

    public static void zzc(zzdob zzdobVar) throws GeneralSecurityException {
        int i2 = zzdot.zzhez[zzdobVar.ordinal()];
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            return;
        }
        String strValueOf = String.valueOf(zzdobVar.name());
        throw new GeneralSecurityException(strValueOf.length() != 0 ? "Unsupported hash: ".concat(strValueOf) : new String("Unsupported hash: "));
    }

    public static void zzfg(int i2) throws InvalidAlgorithmParameterException {
        if (i2 != 16 && i2 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i2 << 3)));
        }
    }

    public static void zzfh(int i2) throws GeneralSecurityException {
        if (i2 < 2048) {
            throw new GeneralSecurityException(String.format("Modulus size is %d; only modulus size >= 2048-bit is supported", Integer.valueOf(i2)));
        }
    }

    public static void zzx(int i2, int i3) throws GeneralSecurityException {
        if (i2 < 0 || i2 > 0) {
            throw new GeneralSecurityException(String.format("key has version %d; only keys with version in range [0..%d] are supported", Integer.valueOf(i2), 0));
        }
    }
}
