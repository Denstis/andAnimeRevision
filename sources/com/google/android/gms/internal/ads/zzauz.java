package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(26)
public class zzauz extends zzava {
    @Override // com.google.android.gms.internal.ads.zzaur
    public final zzsv zza(Context context, TelephonyManager telephonyManager) {
        com.google.android.gms.ads.internal.zzq.zzkj();
        if (zzaul.zzq(context, "android.permission.ACCESS_NETWORK_STATE") && telephonyManager.isDataEnabled()) {
            return zzsv.ENUM_TRUE;
        }
        return zzsv.ENUM_FALSE;
    }
}
