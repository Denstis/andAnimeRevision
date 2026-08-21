package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzaey implements zzaer<Object> {
    private final zzafb zzcyf;

    private zzaey(zzafb zzafbVar) {
        this.zzcyf = zzafbVar;
    }

    public static void zza(zzbbw zzbbwVar, zzafb zzafbVar) {
        zzbbwVar.zza("/reward", new zzaey(zzafbVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("action");
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.zzcyf.zzra();
                return;
            } else {
                if ("video_complete".equals(str)) {
                    this.zzcyf.zzrb();
                    return;
                }
                return;
            }
        }
        zzaqt zzaqtVar = null;
        try {
            int i2 = Integer.parseInt(map.get("amount"));
            String str2 = map.get("type");
            if (!TextUtils.isEmpty(str2)) {
                zzaqtVar = new zzaqt(str2, i2);
            }
        } catch (NumberFormatException e2) {
            zzaxi.zzd("Unable to parse reward amount.", e2);
        }
        this.zzcyf.zza(zzaqtVar);
    }
}
