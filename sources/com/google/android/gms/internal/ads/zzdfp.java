package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfp extends zzdem<zzdec, zzdkf, zzdkg> {
    public zzdfp() {
        super(zzdec.class, zzdkf.class, zzdkg.class, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final zzdjn.zzb zzapp() {
        return zzdjn.zzb.REMOTE;
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ void zzc(zzdsg zzdsgVar) throws GeneralSecurityException {
        zzdou.zzx(((zzdkf) zzdsgVar).getVersion(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* bridge */ /* synthetic */ void zzd(zzdsg zzdsgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdec zze(zzdsg zzdsgVar) {
        zzdkf zzdkfVar = (zzdkf) zzdsgVar;
        String strZzavf = zzdkfVar.zzavc().zzavf();
        return new zzdfm(zzdkfVar.zzavc().zzavg(), zzdeq.zzgp(strZzavf).zzgr(strZzavf));
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) {
        return (zzdkf) zzdkf.zzavd().zzb((zzdkg) zzdsgVar).zzey(0).zzazr();
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdkf.zzbr(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdkg.zzbs(zzdpmVar);
    }
}
