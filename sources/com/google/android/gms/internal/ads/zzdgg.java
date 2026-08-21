package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
final class zzdgg extends zzdem<zzdet, zzdji, zzdjj> {
    public zzdgg() {
        super(zzdet.class, zzdji.class, zzdjj.class, "type.googleapis.com/google.crypto.tink.HmacKey");
    }

    private static void zza(zzdjm zzdjmVar) throws GeneralSecurityException {
        if (zzdjmVar.zzatr() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        int i2 = zzdgj.zzgtk[zzdjmVar.zzatq().ordinal()];
        if (i2 == 1) {
            if (zzdjmVar.zzatr() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (i2 == 2) {
            if (zzdjmVar.zzatr() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            if (i2 != 3) {
                throw new GeneralSecurityException("unknown hash type");
            }
            if (zzdjmVar.zzatr() > 64) {
                throw new GeneralSecurityException("tag size too big");
            }
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
        zzdji zzdjiVar = (zzdji) zzdsgVar;
        zzdou.zzx(zzdjiVar.getVersion(), 0);
        if (zzdjiVar.zzaqj().size() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        zza(zzdjiVar.zzatk());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ void zzd(zzdsg zzdsgVar) throws GeneralSecurityException {
        zzdjj zzdjjVar = (zzdjj) zzdsgVar;
        if (zzdjjVar.getKeySize() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        zza(zzdjjVar.zzatk());
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdet zze(zzdsg zzdsgVar) throws GeneralSecurityException {
        zzdji zzdjiVar = (zzdji) zzdsgVar;
        zzdjg zzdjgVarZzatq = zzdjiVar.zzatk().zzatq();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzdjiVar.zzaqj().toByteArray(), "HMAC");
        int iZzatr = zzdjiVar.zzatk().zzatr();
        int i2 = zzdgj.zzgtk[zzdjgVarZzatq.ordinal()];
        if (i2 == 1) {
            return new zzdoi("HMACSHA1", secretKeySpec, iZzatr);
        }
        if (i2 == 2) {
            return new zzdoi("HMACSHA256", secretKeySpec, iZzatr);
        }
        if (i2 == 3) {
            return new zzdoi("HMACSHA512", secretKeySpec, iZzatr);
        }
        throw new GeneralSecurityException("unknown hash");
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    public final /* synthetic */ zzdsg zzg(zzdsg zzdsgVar) {
        zzdjj zzdjjVar = (zzdjj) zzdsgVar;
        return (zzdji) zzdji.zzatl().zzem(0).zzc(zzdjjVar.zzatk()).zzbm(zzdpm.zzy(zzdoj.zzff(zzdjjVar.getKeySize()))).zzazr();
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzs(zzdpm zzdpmVar) {
        return zzdji.zzbk(zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdem
    protected final /* synthetic */ zzdsg zzt(zzdpm zzdpmVar) {
        return zzdjj.zzbl(zzdpmVar);
    }
}
