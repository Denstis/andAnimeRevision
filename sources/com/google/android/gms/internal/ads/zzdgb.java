package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdgb implements zzdef<zzdel> {
    @Override // com.google.android.gms.internal.ads.zzdef
    public final zzdex<zzdel> zzapm() {
        return new zzdgd();
    }

    @Override // com.google.android.gms.internal.ads.zzdef
    public final zzden<zzdel> zzb(String str, String str2, int i2) throws GeneralSecurityException {
        String lowerCase = str2.toLowerCase();
        byte b2 = -1;
        if (((lowerCase.hashCode() == 1420614889 && lowerCase.equals("hybridencrypt")) ? (byte) 0 : (byte) -1) != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
        if (str.hashCode() == 396454335 && str.equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
            b2 = 0;
        }
        if (b2 != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive 'HybridEncrypt' with key type '%s'.", str));
        }
        zzdfv zzdfvVar = new zzdfv();
        if (i2 <= 0) {
            return zzdfvVar;
        }
        throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i2)));
    }
}
