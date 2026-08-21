package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfv extends zzdem<zzdel, zzdit, zzdjc> {
    public zzdfv() {
        super(zzdel.class, zzdit.class, zzdjc.class, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final zzdjn.zzb zzapp() {
        return zzdjn.zzb.ASYMMETRIC_PUBLIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ void zzc(zzdsg zzdsgVar) throws GeneralSecurityException {
        zzdit zzditVar = (zzdit) zzdsgVar;
        zzdou.zzx(zzditVar.getVersion(), 0);
        zzdgf.zza(zzditVar.zzaso());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* bridge */ /* synthetic */ void zzd(zzdsg zzdsgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdel zze(zzdsg zzdsgVar) throws GeneralSecurityException {
        zzdit zzditVar = (zzdit) zzdsgVar;
        zzdip zzdipVarZzaso = zzditVar.zzaso();
        zzdiw zzdiwVarZzasq = zzdipVarZzaso.zzasq();
        return new zzdmx(zzdno.zza(zzdgf.zza(zzdiwVarZzasq.zzatb()), zzditVar.zzasg().toByteArray(), zzditVar.zzash().toByteArray()), zzdiwVarZzasq.zzatc().toByteArray(), zzdgf.zza(zzdiwVarZzasq.zzaqp()), zzdgf.zza(zzdipVarZzaso.zzass()), new zzdgh(zzdipVarZzaso.zzasr().zzasl()));
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) throws GeneralSecurityException {
        throw new GeneralSecurityException("Not implemented.");
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdit.zzbb(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdjc.zzbj(zzdpmVar);
    }
}
