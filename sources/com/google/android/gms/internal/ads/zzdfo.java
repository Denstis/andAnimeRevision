package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfo extends zzdem<zzdec, zzdlc, zzdjc> {
    public zzdfo() {
        super(zzdec.class, zzdlc.class, zzdjc.class, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
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
        zzdlc zzdlcVar = (zzdlc) zzdsgVar;
        zzdou.zzx(zzdlcVar.getVersion(), 0);
        if (zzdlcVar.zzaqj().size() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* bridge */ /* synthetic */ void zzd(zzdsg zzdsgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdec zze(zzdsg zzdsgVar) {
        return new zzdov(((zzdlc) zzdsgVar).zzaqj().toByteArray());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) {
        return (zzdlc) zzdlc.zzaws().zzfe(0).zzcy(zzdpm.zzy(zzdoj.zzff(32))).zzazr();
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdlc.zzcv(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdjc.zzbj(zzdpmVar);
    }
}
