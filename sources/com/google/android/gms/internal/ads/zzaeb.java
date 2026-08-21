package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzaeb implements zzaer<zzbbw> {
    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzbbw zzbbwVar, Map map) {
        zzbbw zzbbwVar2 = zzbbwVar;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                zzaxi.zzeu("No label given for CSI tick.");
                return;
            }
            if (TextUtils.isEmpty(str4)) {
                zzaxi.zzeu("No timestamp given for CSI tick.");
                return;
            }
            try {
                long jElapsedRealtime = com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime() + (Long.parseLong(str4) - com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis());
                if (TextUtils.isEmpty(str3)) {
                    str3 = "native:view_load";
                }
                zzbbwVar2.zzxq().zza(str2, str3, jElapsedRealtime);
                return;
            } catch (NumberFormatException e2) {
                zzaxi.zzd("Malformed timestamp for CSI tick.", e2);
                return;
            }
        }
        if ("experiment".equals(str)) {
            String str5 = (String) map.get("value");
            if (TextUtils.isEmpty(str5)) {
                zzaxi.zzeu("No value given for CSI experiment.");
                return;
            }
            zzaab zzaabVarZzpy = zzbbwVar2.zzxq().zzpy();
            if (zzaabVarZzpy == null) {
                zzaxi.zzeu("No ticker for WebView, dropping experiment ID.");
                return;
            } else {
                zzaabVarZzpy.zzj("e", str5);
                return;
            }
        }
        if ("extra".equals(str)) {
            String str6 = (String) map.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
            String str7 = (String) map.get("value");
            if (TextUtils.isEmpty(str7)) {
                zzaxi.zzeu("No value given for CSI extra.");
                return;
            }
            if (TextUtils.isEmpty(str6)) {
                zzaxi.zzeu("No name given for CSI extra.");
                return;
            }
            zzaab zzaabVarZzpy2 = zzbbwVar2.zzxq().zzpy();
            if (zzaabVarZzpy2 == null) {
                zzaxi.zzeu("No ticker for WebView, dropping extra parameter.");
            } else {
                zzaabVarZzpy2.zzj(str6, str7);
            }
        }
    }
}
