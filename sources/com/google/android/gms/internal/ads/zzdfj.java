package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfj extends zzdem<zzdof, zzdgx, zzdha> {
    public zzdfj() {
        super(zzdof.class, zzdgx.class, zzdha.class, "type.googleapis.com/google.crypto.tink.AesCtrKey");
    }

    private static void zza(zzdhb zzdhbVar) throws GeneralSecurityException {
        if (zzdhbVar.zzaqz() < 12 || zzdhbVar.zzaqz() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
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
        zzdgx zzdgxVar = (zzdgx) zzdsgVar;
        zzdou.zzx(zzdgxVar.getVersion(), 0);
        zzdou.zzfg(zzdgxVar.zzaqj().size());
        zza(zzdgxVar.zzaqt());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ void zzd(zzdsg zzdsgVar) throws GeneralSecurityException {
        zzdha zzdhaVar = (zzdha) zzdsgVar;
        zzdou.zzfg(zzdhaVar.getKeySize());
        zza(zzdhaVar.zzaqt());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdof zze(zzdsg zzdsgVar) {
        zzdgx zzdgxVar = (zzdgx) zzdsgVar;
        return new zzdmg(zzdgxVar.zzaqj().toByteArray(), zzdgxVar.zzaqt().zzaqz());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) {
        zzdha zzdhaVar = (zzdha) zzdsgVar;
        return (zzdgx) zzdgx.zzaqu().zzc(zzdhaVar.zzaqt()).zzab(zzdpm.zzy(zzdoj.zzff(zzdhaVar.getKeySize()))).zzdw(0).zzazr();
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdgx.zzaa(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdha.zzac(zzdpmVar);
    }
}
