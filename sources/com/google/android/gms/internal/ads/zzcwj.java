package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzcwj {
    public static void zzc(Throwable th, String str) {
        int iZzd = zzccu.zzd(th);
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(iZzd);
        zzaxi.zzet(sb.toString());
        zzaug.zza(str, th);
        if (zzccu.zzd(th) == 3) {
            return;
        }
        com.google.android.gms.ads.internal.zzq.zzkn().zzb(th, str);
    }

    public static void zze(Context context, boolean z) {
        String string;
        if (z) {
            string = "This request is sent from a test device.";
        } else {
            zzuv.zzoj();
            String strZzbi = zzawy.zzbi(context);
            StringBuilder sb = new StringBuilder(String.valueOf(strZzbi).length() + 71);
            sb.append("Use AdRequest.Builder.addTestDevice(\"");
            sb.append(strZzbi);
            sb.append("\") to get test ads on this device.");
            string = sb.toString();
        }
        zzaxi.zzet(string);
    }
}
