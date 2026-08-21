package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfn extends zzdem<zzdec, zzdkb, zzdkc> {
    public zzdfn() {
        super(zzdec.class, zzdkb.class, zzdkc.class, "type.googleapis.com/google.crypto.tink.KmsAeadKey");
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
        zzdou.zzx(((zzdkb) zzdsgVar).getVersion(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* bridge */ /* synthetic */ void zzd(zzdsg zzdsgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdec zze(zzdsg zzdsgVar) {
        String strZzauz = ((zzdkb) zzdsgVar).zzauw().zzauz();
        return zzdeq.zzgp(strZzauz).zzgr(strZzauz);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) {
        return (zzdkb) zzdkb.zzaux().zzb((zzdkc) zzdsgVar).zzex(0).zzazr();
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdkb.zzbp(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdkc.zzbq(zzdpmVar);
    }
}
