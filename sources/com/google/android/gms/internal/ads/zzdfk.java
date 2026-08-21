package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfk extends zzdem<zzdec, zzdhy, zzdjc> {
    public zzdfk() {
        super(zzdec.class, zzdhy.class, zzdjc.class, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
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
        zzdhy zzdhyVar = (zzdhy) zzdsgVar;
        zzdou.zzx(zzdhyVar.getVersion(), 0);
        if (zzdhyVar.zzaqj().size() != 32) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* bridge */ /* synthetic */ void zzd(zzdsg zzdsgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdec zze(zzdsg zzdsgVar) {
        return new zzdms(((zzdhy) zzdsgVar).zzaqj().toByteArray());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) {
        return (zzdhy) zzdhy.zzaru().zzec(0).zzaq(zzdpm.zzy(zzdoj.zzff(32))).zzazr();
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdhy.zzap(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdjc.zzbj(zzdpmVar);
    }
}
