package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class zzcq extends zzcl<Boolean> {
    zzcq(zzcr zzcrVar, String str, Boolean bool) {
        super(zzcrVar, str, bool, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcl
    final /* synthetic */ Boolean zza(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzbw.zzb.matcher(str).matches()) {
                return true;
            }
            if (zzbw.zzc.matcher(str).matches()) {
                return false;
            }
        }
        String strZzb = super.zzb();
        String strValueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(strZzb).length() + 28 + String.valueOf(strValueOf).length());
        sb.append("Invalid boolean value for ");
        sb.append(strZzb);
        sb.append(": ");
        sb.append(strValueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
