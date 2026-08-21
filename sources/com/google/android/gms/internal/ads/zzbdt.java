package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbdt implements zzaer<zzbbw> {
    private final /* synthetic */ zzbdr zzeie;

    zzbdt(zzbdr zzbdrVar) {
        this.zzeie = zzbdrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzbbw zzbbwVar, Map map) {
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int i2 = Integer.parseInt(str);
                synchronized (this.zzeie) {
                    if (this.zzeie.zzeha != i2) {
                        this.zzeie.zzeha = i2;
                        this.zzeie.requestLayout();
                    }
                }
            } catch (Exception e2) {
                zzaxi.zzd("Exception occurred while getting webview content height", e2);
            }
        }
    }
}
