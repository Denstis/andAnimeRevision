package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfl extends zzdem<zzdec, zzdhq, zzdhr> {
    public zzdfl() {
        super(zzdec.class, zzdhq.class, zzdhr.class, "type.googleapis.com/google.crypto.tink.AesGcmKey");
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
        zzdhq zzdhqVar = (zzdhq) zzdsgVar;
        zzdou.zzx(zzdhqVar.getVersion(), 0);
        zzdou.zzfg(zzdhqVar.zzaqj().size());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ void zzd(zzdsg zzdsgVar) throws InvalidAlgorithmParameterException {
        zzdou.zzfg(((zzdhr) zzdsgVar).getKeySize());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdec zze(zzdsg zzdsgVar) {
        return new zzdmh(((zzdhq) zzdsgVar).zzaqj().toByteArray());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) {
        return (zzdhq) zzdhq.zzaro().zzal(zzdpm.zzy(zzdoj.zzff(((zzdhr) zzdsgVar).getKeySize()))).zzdz(0).zzazr();
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdhq.zzaj(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdhr.zzak(zzdpmVar);
    }
}
