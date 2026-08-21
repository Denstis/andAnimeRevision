package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzed {
    static zzdel zzyo;

    static boolean zzb(zzdx zzdxVar) throws GeneralSecurityException {
        Method methodZzc;
        if (zzyo != null) {
            return true;
        }
        String str = (String) zzuv.zzon().zzd(zzza.zzcnh);
        if (str == null || str.length() == 0) {
            str = (zzdxVar == null || (methodZzc = zzdxVar.zzc("OevwuCyaBOVW9Ln+QX7fmyTTWbeJYcctGFCVTrXabQZ00sMfUmORvoOrZvhdRFVu", "TTGXRr2x4uLkjJPzQqm9kQskRo6Bo/N0qnlRgwhhknY=")) == null) ? null : (String) methodZzc.invoke(null, new Object[0]);
            if (str == null) {
                return false;
            }
        }
        try {
            zzdep zzdepVarZzj = zzdes.zzj(zzcg.zza(str, true));
            zzdee.zza(zzdfy.zzgtc);
            zzyo = zzdga.zza(zzdepVarZzj, null);
        } catch (IllegalArgumentException | GeneralSecurityException unused) {
        }
        return zzyo != null;
    }
}
