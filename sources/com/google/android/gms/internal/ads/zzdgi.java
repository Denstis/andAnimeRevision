package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdgi implements zzdef<zzdet> {
    @Override // com.google.android.gms.internal.ads.zzdef
    public final zzdex<zzdet> zzapm() {
        return new zzdgk();
    }

    @Override // com.google.android.gms.internal.ads.zzdef
    public final zzden<zzdet> zzb(String str, String str2, int i2) throws GeneralSecurityException {
        String lowerCase = str2.toLowerCase();
        byte b2 = -1;
        if (((lowerCase.hashCode() == 107855 && lowerCase.equals("mac")) ? (byte) 0 : (byte) -1) != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
        if (str.hashCode() == 836622442 && str.equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            b2 = 0;
        }
        if (b2 != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive 'Mac' with key type '%s'.", str));
        }
        zzdgg zzdggVar = new zzdgg();
        if (i2 <= 0) {
            return zzdggVar;
        }
        throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i2)));
    }
}
