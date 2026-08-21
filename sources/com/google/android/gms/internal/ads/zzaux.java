package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(21)
public class zzaux extends zzauy {
    @Override // com.google.android.gms.internal.ads.zzaur
    public final WebResourceResponse zza(String str, String str2, int i2, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i2, str3, map, inputStream);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final zzbbv zza(zzbbw zzbbwVar, zzsd zzsdVar, boolean z) {
        return new zzbcx(zzbbwVar, zzsdVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final CookieManager zzbd(Context context) {
        if (zzaur.zzvs()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzaxi.zzc("Failed to obtain CookieManager.", th);
            com.google.android.gms.ads.internal.zzq.zzkn().zza(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final int zzvt() {
        return R.style.Theme.Material.Dialog.Alert;
    }
}
