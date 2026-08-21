package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfx implements zzdef<zzdei> {
    @Override // com.google.android.gms.internal.ads.zzdef
    public final zzdex<zzdei> zzapm() {
        return new zzdfz();
    }

    @Override // com.google.android.gms.internal.ads.zzdef
    public final zzden<zzdei> zzb(String str, String str2, int i2) throws GeneralSecurityException {
        String lowerCase = str2.toLowerCase();
        byte b2 = -1;
        if (((lowerCase.hashCode() == 275448849 && lowerCase.equals("hybriddecrypt")) ? (byte) 0 : (byte) -1) != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
        if (str.hashCode() == -80133005 && str.equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey")) {
            b2 = 0;
        }
        if (b2 != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive 'HybridEncrypt' with key type '%s'.", str));
        }
        zzdfw zzdfwVar = new zzdfw();
        if (i2 <= 0) {
            return zzdfwVar;
        }
        throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i2)));
    }
}
