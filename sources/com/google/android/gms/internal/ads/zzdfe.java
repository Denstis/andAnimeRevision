package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfe implements zzdef<zzdec> {
    @Override // com.google.android.gms.internal.ads.zzdef
    public final zzdex<zzdec> zzapm() {
        return new zzdfg();
    }

    @Override // com.google.android.gms.internal.ads.zzdef
    public final zzden<zzdec> zzb(String str, String str2, int i2) throws GeneralSecurityException {
        zzden<zzdec> zzdfhVar;
        String lowerCase = str2.toLowerCase();
        if (((lowerCase.hashCode() == 2989895 && lowerCase.equals("aead")) ? (byte) 0 : (byte) -1) != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
        switch (str) {
            case "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey":
                zzdfhVar = new zzdfh();
                break;
            case "type.googleapis.com/google.crypto.tink.AesEaxKey":
                zzdfhVar = new zzdfi();
                break;
            case "type.googleapis.com/google.crypto.tink.AesGcmKey":
                zzdfhVar = new zzdfl();
                break;
            case "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key":
                zzdfhVar = new zzdfk();
                break;
            case "type.googleapis.com/google.crypto.tink.KmsAeadKey":
                zzdfhVar = new zzdfn();
                break;
            case "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey":
                zzdfhVar = new zzdfp();
                break;
            case "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key":
                zzdfhVar = new zzdfo();
                break;
            default:
                throw new GeneralSecurityException(String.format("No support for primitive 'Aead' with key type '%s'.", str));
        }
        if (zzdfhVar.getVersion() >= i2) {
            return zzdfhVar;
        }
        throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i2)));
    }
}
