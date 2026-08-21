package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzcbl {
    private ConcurrentHashMap<String, String> zzfry;

    public zzcbl(zzcbo zzcboVar) {
        this.zzfry = zzcboVar.zzajw();
    }

    public final void zzb(zzcvz zzcvzVar) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        String str;
        if (zzcvzVar.zzgkb.zzgjx.size() > 0) {
            int i2 = zzcvzVar.zzgkb.zzgjx.get(0).zzfis;
            if (i2 == 1) {
                concurrentHashMap = this.zzfry;
                str = "banner";
            } else if (i2 == 2) {
                concurrentHashMap = this.zzfry;
                str = "interstitial";
            } else if (i2 == 3) {
                concurrentHashMap = this.zzfry;
                str = "native_express";
            } else if (i2 == 4) {
                concurrentHashMap = this.zzfry;
                str = "native_advanced";
            } else if (i2 != 5) {
                concurrentHashMap = this.zzfry;
                str = "unknown";
            } else {
                concurrentHashMap = this.zzfry;
                str = "rewarded";
            }
            concurrentHashMap.put("ad_format", str);
            if (TextUtils.isEmpty(zzcvzVar.zzgkb.zzgjy.zzbzn)) {
                return;
            }
            this.zzfry.put("gqi", zzcvzVar.zzgkb.zzgjy.zzbzn);
        }
    }

    public final void zzi(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zzfry.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zzfry.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    public final Map<String, String> zzqd() {
        return this.zzfry;
    }
}
