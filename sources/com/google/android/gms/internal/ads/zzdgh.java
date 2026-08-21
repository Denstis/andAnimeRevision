package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class zzdgh implements zzdmv {
    private final String zzgtn;
    private final int zzgto;
    private zzdhq zzgtp;
    private zzdgo zzgtq;
    private int zzgtr;

    zzdgh(zzdjt zzdjtVar) throws GeneralSecurityException {
        this.zzgtn = zzdjtVar.zzatu();
        if (this.zzgtn.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                zzdhr zzdhrVarZzak = zzdhr.zzak(zzdjtVar.zzatv());
                this.zzgtp = (zzdhq) zzdey.zzb(zzdjtVar);
                this.zzgto = zzdhrVarZzak.getKeySize();
                return;
            } catch (zzdrg e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e2);
            }
        }
        if (!this.zzgtn.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            String strValueOf = String.valueOf(this.zzgtn);
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(strValueOf) : new String("unsupported AEAD DEM key type: "));
        }
        try {
            zzdgp zzdgpVarZzv = zzdgp.zzv(zzdjtVar.zzatv());
            this.zzgtq = (zzdgo) zzdey.zzb(zzdjtVar);
            this.zzgtr = zzdgpVarZzv.zzaqf().getKeySize();
            this.zzgto = this.zzgtr + zzdgpVarZzv.zzaqg().getKeySize();
        } catch (zzdrg e3) {
            throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmv
    public final int zzaqa() {
        return this.zzgto;
    }

    @Override // com.google.android.gms.internal.ads.zzdmv
    public final zzdec zzl(byte[] bArr) throws GeneralSecurityException {
        zzdsg zzdsgVar;
        if (bArr.length != this.zzgto) {
            throw new GeneralSecurityException("Symmetric key has incorrect length");
        }
        if (this.zzgtn.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            zzdsgVar = (zzdhq) zzdhq.zzaro().zza(this.zzgtp).zzal(zzdpm.zzh(bArr, 0, this.zzgto)).zzazr();
        } else {
            if (!this.zzgtn.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
                throw new GeneralSecurityException("unknown DEM key type");
            }
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, this.zzgtr);
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, this.zzgtr, this.zzgto);
            zzdgx zzdgxVar = (zzdgx) zzdgx.zzaqu().zza(this.zzgtq.zzaqb()).zzab(zzdpm.zzy(bArrCopyOfRange)).zzazr();
            zzdsgVar = (zzdgo) zzdgo.zzaqd().zzdu(this.zzgtq.getVersion()).zzb(zzdgxVar).zzb((zzdji) zzdji.zzatl().zza(this.zzgtq.zzaqc()).zzbm(zzdpm.zzy(bArrCopyOfRange2)).zzazr()).zzazr();
        }
        return (zzdec) zzdey.zza(this.zzgtn, zzdsgVar, zzdec.class);
    }
}
