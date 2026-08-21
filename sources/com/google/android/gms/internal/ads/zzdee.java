package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdju;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class zzdee {
    public static zzdju zza(String str, String str2, String str3, int i2, boolean z) {
        zzdju.zza zzaVarZzgz = zzdju.zzaug().zzgz(str2);
        String strValueOf = String.valueOf(str3);
        return (zzdju) zzaVarZzgz.zzha(strValueOf.length() != 0 ? "type.googleapis.com/google.crypto.tink.".concat(strValueOf) : new String("type.googleapis.com/google.crypto.tink.")).zzeq(0).zzbg(true).zzhb(str).zzazr();
    }

    public static void zza(zzdkl zzdklVar) throws GeneralSecurityException {
        for (zzdju zzdjuVar : zzdklVar.zzavj()) {
            if (zzdjuVar.zzatu().isEmpty()) {
                throw new GeneralSecurityException("Missing type_url.");
            }
            if (zzdjuVar.zzauc().isEmpty()) {
                throw new GeneralSecurityException("Missing primitive_name.");
            }
            if (zzdjuVar.zzauf().isEmpty()) {
                throw new GeneralSecurityException("Missing catalogue_name.");
            }
            zzdef<?> zzdefVarZzgt = zzdey.zzgt(zzdjuVar.zzauf());
            zzdey.zza(zzdefVarZzgt.zzapm());
            zzdey.zza(zzdefVarZzgt.zzb(zzdjuVar.zzatu(), zzdjuVar.zzauc(), zzdjuVar.zzaud()), zzdjuVar.zzaue());
        }
    }
}
