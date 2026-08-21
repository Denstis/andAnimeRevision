package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public final class zzzo {
    private String zzblz;
    private String zzcub = (String) zzuv.zzon().zzd(zzza.zzcil);
    private Map<String, String> zzcuc = new LinkedHashMap();
    private Context zzlk;

    public zzzo(Context context, String str) {
        this.zzlk = null;
        this.zzblz = null;
        this.zzlk = context;
        this.zzblz = str;
        this.zzcuc.put("s", "gmob_sdk");
        this.zzcuc.put("v", "3");
        this.zzcuc.put("os", Build.VERSION.RELEASE);
        this.zzcuc.put("sdk", Build.VERSION.SDK);
        Map<String, String> map = this.zzcuc;
        com.google.android.gms.ads.internal.zzq.zzkj();
        map.put("device", zzaul.zzvn());
        this.zzcuc.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.zzcuc;
        com.google.android.gms.ads.internal.zzq.zzkj();
        map2.put("is_lite_sdk", zzaul.zzay(context) ? "1" : "0");
        Future<zzapj> futureZzt = com.google.android.gms.ads.internal.zzq.zzku().zzt(this.zzlk);
        try {
            this.zzcuc.put("network_coarse", Integer.toString(futureZzt.get().zzdms));
            this.zzcuc.put("network_fine", Integer.toString(futureZzt.get().zzdmt));
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "CsiConfiguration.CsiConfiguration");
        }
    }

    final Context getContext() {
        return this.zzlk;
    }

    final String zzkd() {
        return this.zzblz;
    }

    final String zzpv() {
        return this.zzcub;
    }

    final Map<String, String> zzpw() {
        return this.zzcuc;
    }
}
