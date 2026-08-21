package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;

/* JADX INFO: loaded from: classes.dex */
final class zzdfw extends zzdem<zzdei, zzdis, zzdio> implements zzden<zzdei> {
    public zzdfw() {
        super(zzdei.class, zzdis.class, zzdio.class, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final zzdjn.zzb zzapp() {
        return zzdjn.zzb.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ void zzc(zzdsg zzdsgVar) throws GeneralSecurityException {
        zzdis zzdisVar = (zzdis) zzdsgVar;
        if (zzdisVar.zzaqj().size() == 0) {
            throw new GeneralSecurityException("invalid ECIES private key");
        }
        zzdou.zzx(zzdisVar.getVersion(), 0);
        zzdgf.zza(zzdisVar.zzasv().zzaso());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ void zzd(zzdsg zzdsgVar) throws GeneralSecurityException {
        zzdgf.zza(((zzdio) zzdsgVar).zzaso());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdei zze(zzdsg zzdsgVar) throws NoSuchAlgorithmException {
        zzdis zzdisVar = (zzdis) zzdsgVar;
        zzdip zzdipVarZzaso = zzdisVar.zzasv().zzaso();
        zzdiw zzdiwVarZzasq = zzdipVarZzaso.zzasq();
        return new zzdmy(zzdno.zza(zzdgf.zza(zzdiwVarZzasq.zzatb()), zzdisVar.zzaqj().toByteArray()), zzdiwVarZzasq.zzatc().toByteArray(), zzdgf.zza(zzdiwVarZzasq.zzaqp()), zzdgf.zza(zzdipVarZzaso.zzass()), new zzdgh(zzdipVarZzaso.zzasr().zzasl()));
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) throws InvalidAlgorithmParameterException {
        zzdio zzdioVar = (zzdio) zzdsgVar;
        KeyPair keyPairZza = zzdno.zza(zzdno.zza(zzdgf.zza(zzdioVar.zzaso().zzasq().zzatb())));
        ECPublicKey eCPublicKey = (ECPublicKey) keyPairZza.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) keyPairZza.getPrivate();
        ECPoint w = eCPublicKey.getW();
        return (zzdis) zzdis.zzasw().zzeg(0).zzb((zzdit) zzdit.zzasy().zzeh(0).zzc(zzdioVar.zzaso()).zzbd(zzdpm.zzy(w.getAffineX().toByteArray())).zzbe(zzdpm.zzy(w.getAffineY().toByteArray())).zzazr()).zzbc(zzdpm.zzy(eCPrivateKey.getS().toByteArray())).zzazr();
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdis.zzba(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdio.zzaz(zzdpmVar);
    }
}
