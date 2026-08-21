package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfh extends zzdem<zzdec, zzdgo, zzdgp> {
    public zzdfh() {
        super(zzdec.class, zzdgo.class, zzdgp.class, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zzdey.zza(new zzdfj());
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final zzdjn.zzb zzapp() {
        return zzdjn.zzb.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ void zzc(zzdsg zzdsgVar) throws GeneralSecurityException {
        zzdou.zzx(((zzdgo) zzdsgVar).getVersion(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ void zzd(zzdsg zzdsgVar) throws InvalidAlgorithmParameterException {
        zzdou.zzfg(((zzdgp) zzdsgVar).zzaqf().getKeySize());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdec zze(zzdsg zzdsgVar) {
        zzdgo zzdgoVar = (zzdgo) zzdsgVar;
        return new zzdnr((zzdof) zzdey.zza("type.googleapis.com/google.crypto.tink.AesCtrKey", zzdgoVar.zzaqb(), zzdof.class), (zzdet) zzdey.zza("type.googleapis.com/google.crypto.tink.HmacKey", zzdgoVar.zzaqc(), zzdet.class), zzdgoVar.zzaqc().zzatk().zzatr());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) {
        zzdgp zzdgpVar = (zzdgp) zzdsgVar;
        zzdgx zzdgxVar = (zzdgx) zzdey.zza("type.googleapis.com/google.crypto.tink.AesCtrKey", zzdgpVar.zzaqf());
        return (zzdgo) zzdgo.zzaqd().zzb(zzdgxVar).zzb((zzdji) zzdey.zza("type.googleapis.com/google.crypto.tink.HmacKey", zzdgpVar.zzaqg())).zzdu(0).zzazr();
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdgo.zzu(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdgp.zzv(zzdpmVar);
    }
}
