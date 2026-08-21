package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzbas implements zzbbf {
    @Override // com.google.android.gms.internal.ads.zzbbf
    public final zzbax zza(zzazj zzazjVar, int i2, String str, zzazk zzazkVar) {
        if (Build.VERSION.SDK_INT < 16 || i2 <= 0 || !Arrays.asList(zzazkVar.zzeam.split(",")).contains("3")) {
            return new zzbbi(zzazjVar);
        }
        int iZzyq = zzbag.zzyq();
        return iZzyq < zzazkVar.zzeap ? new zzbbm(zzazjVar, zzazkVar) : iZzyq < zzazkVar.zzeaj ? new zzbbj(zzazjVar, zzazkVar) : new zzbbh(zzazjVar);
    }
}
