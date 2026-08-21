package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(24)
public class zzava extends zzaux {
    private static boolean zze(int i2, int i3, int i4) {
        return Math.abs(i2 - i3) <= i4;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final boolean zza(Activity activity, Configuration configuration) {
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcqh)).booleanValue()) {
            return false;
        }
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcqj)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        zzuv.zzoj();
        int iZza = zzawy.zza(activity, configuration.screenHeightDp);
        int iZza2 = zzawy.zza(activity, configuration.screenWidthDp);
        WindowManager windowManager = (WindowManager) activity.getApplicationContext().getSystemService("window");
        com.google.android.gms.ads.internal.zzq.zzkj();
        DisplayMetrics displayMetricsZza = zzaul.zza(windowManager);
        int i2 = displayMetricsZza.heightPixels;
        int i3 = displayMetricsZza.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        double d2 = activity.getResources().getDisplayMetrics().density;
        Double.isNaN(d2);
        int iRound = ((int) Math.round(d2 + 0.5d)) * ((Integer) zzuv.zzon().zzd(zzza.zzcqg)).intValue();
        return !(zze(i2, iZza + dimensionPixelSize, iRound) && zze(i3, iZza2, iRound));
    }
}
