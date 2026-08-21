package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import com.google.android.gms.internal.ads.zzdjx;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class zzdes {
    public static final zzdep zza(zzdeo zzdeoVar) throws GeneralSecurityException {
        zzdjx zzdjxVarZzapn = zzdeoVar.zzapn();
        zzb(zzdjxVarZzapn);
        return zzdep.zza(zzdjxVarZzapn);
    }

    private static void zzb(zzdjx zzdjxVar) throws GeneralSecurityException {
        for (zzdjx.zza zzaVar : zzdjxVar.zzauj()) {
            if (zzaVar.zzauo().zzatw() == zzdjn.zzb.UNKNOWN_KEYMATERIAL || zzaVar.zzauo().zzatw() == zzdjn.zzb.SYMMETRIC || zzaVar.zzauo().zzatw() == zzdjn.zzb.ASYMMETRIC_PRIVATE) {
                throw new GeneralSecurityException("keyset contains secret key material");
            }
        }
    }

    @Deprecated
    public static final zzdep zzj(byte[] bArr) throws GeneralSecurityException {
        try {
            zzdjx zzdjxVarZzm = zzdjx.zzm(bArr);
            zzb(zzdjxVarZzm);
            return zzdep.zza(zzdjxVarZzm);
        } catch (zzdrg unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
