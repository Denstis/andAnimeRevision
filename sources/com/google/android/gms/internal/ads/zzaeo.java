package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzaeo implements zzaer<zzbbw> {
    zzaeo() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzbbw zzbbwVar, Map map) {
        zzbbw zzbbwVar2 = zzbbwVar;
        WindowManager windowManager = (WindowManager) zzbbwVar2.getContext().getSystemService("window");
        com.google.android.gms.ads.internal.zzq.zzkj();
        DisplayMetrics displayMetricsZza = zzaul.zza(windowManager);
        int i2 = displayMetricsZza.widthPixels;
        int i3 = displayMetricsZza.heightPixels;
        int[] iArr = new int[2];
        HashMap map2 = new HashMap();
        ((View) zzbbwVar2).getLocationInWindow(iArr);
        map2.put("xInPixels", Integer.valueOf(iArr[0]));
        map2.put("yInPixels", Integer.valueOf(iArr[1]));
        map2.put("windowWidthInPixels", Integer.valueOf(i2));
        map2.put("windowHeightInPixels", Integer.valueOf(i3));
        zzbbwVar2.zza("locationReady", map2);
        zzaxi.zzeu("GET LOCATION COMPILED");
    }
}
