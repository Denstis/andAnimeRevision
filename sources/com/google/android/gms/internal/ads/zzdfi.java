package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfi extends zzdem<zzdec, zzdhe, zzdhf> {
    public zzdfi() {
        super(zzdec.class, zzdhe.class, zzdhf.class, "type.googleapis.com/google.crypto.tink.AesEaxKey");
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
        zzdhe zzdheVar = (zzdhe) zzdsgVar;
        zzdou.zzx(zzdheVar.getVersion(), 0);
        zzdou.zzfg(zzdheVar.zzaqj().size());
        if (zzdheVar.zzarc().zzaqz() != 12 && zzdheVar.zzarc().zzaqz() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ void zzd(zzdsg zzdsgVar) throws GeneralSecurityException {
        zzdhf zzdhfVar = (zzdhf) zzdsgVar;
        zzdou.zzfg(zzdhfVar.getKeySize());
        if (zzdhfVar.zzarc().zzaqz() != 12 && zzdhfVar.zzarc().zzaqz() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdec zze(zzdsg zzdsgVar) {
        zzdhe zzdheVar = (zzdhe) zzdsgVar;
        return new zzdmf(zzdheVar.zzaqj().toByteArray(), zzdheVar.zzarc().zzaqz());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) {
        zzdhf zzdhfVar = (zzdhf) zzdsgVar;
        return (zzdhe) zzdhe.zzard().zzaf(zzdpm.zzy(zzdoj.zzff(zzdhfVar.getKeySize()))).zzb(zzdhfVar.zzarc()).zzdx(0).zzazr();
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdhe.zzad(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdhf.zzae(zzdpmVar);
    }
}
